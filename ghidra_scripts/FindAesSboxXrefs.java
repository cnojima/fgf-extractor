// Ghidra headless post-script: locate the AES forward S-box constant table in
// UnityPlayer.dll, find every function that references it, and decompile
// those functions (plus their direct callers) to pseudo-C.
//
// Why: UnityCN's "is this the right key?" check is
//   AES-128-ECB-Encrypt(key_vector, K) XOR data_vector == "#$unity3dchina!@"
// but that check STRING doesn't appear anywhere in this build's binaries or
// live process memory (confirmed separately) - this engine build doesn't use
// the stock reference algorithm verbatim. The AES S-box table IS present
// (confirmed via a raw byte search of the file), so instead of anchoring on
// the (seemingly absent/obfuscated) check string, anchor on the S-box: any
// function indexing into it is almost certainly the AES substitution step,
// and its caller chain should lead to wherever the 16-byte key argument
// comes from.
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileResults;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Function;
import ghidra.program.model.mem.Memory;
import ghidra.program.model.symbol.Reference;
import ghidra.program.model.symbol.ReferenceIterator;
import ghidra.util.task.ConsoleTaskMonitor;

import java.util.HashSet;
import java.util.Set;

public class FindAesSboxXrefs extends GhidraScript {

    private static final byte[] AES_SBOX = new byte[] {
        (byte)0x63,(byte)0x7c,(byte)0x77,(byte)0x7b,(byte)0xf2,(byte)0x6b,(byte)0x6f,(byte)0xc5,
        (byte)0x30,(byte)0x01,(byte)0x67,(byte)0x2b,(byte)0xfe,(byte)0xd7,(byte)0xab,(byte)0x76,
        (byte)0xca,(byte)0x82,(byte)0xc9,(byte)0x7d,(byte)0xfa,(byte)0x59,(byte)0x47,(byte)0xf0,
        (byte)0xad,(byte)0xd4,(byte)0xa2,(byte)0xaf,(byte)0x9c,(byte)0xa4,(byte)0x72,(byte)0xc0,
        (byte)0xb7,(byte)0xfd,(byte)0x93,(byte)0x26,(byte)0x36,(byte)0x3f,(byte)0xf7,(byte)0xcc,
        (byte)0x34,(byte)0xa5,(byte)0xe5,(byte)0xf1,(byte)0x71,(byte)0xd8,(byte)0x31,(byte)0x15,
        (byte)0x04,(byte)0xc7,(byte)0x23,(byte)0xc3,(byte)0x18,(byte)0x96,(byte)0x05,(byte)0x9a,
        (byte)0x07,(byte)0x12,(byte)0x80,(byte)0xe2,(byte)0xeb,(byte)0x27,(byte)0xb2,(byte)0x75,
    };

    @Override
    protected void run() throws Exception {
        Memory mem = currentProgram.getMemory();
        Address found = mem.findBytes(mem.getMinAddress(), AES_SBOX, null, true, monitor);
        if (found == null) {
            println("AES S-box NOT found in this program's memory image.");
            return;
        }
        println("AES S-box found at: " + found);

        ReferenceIterator refIter = currentProgram.getReferenceManager().getReferencesTo(found);
        Set<Function> callers = new HashSet<>();
        int refCount = 0;
        while (refIter.hasNext()) {
            Reference ref = refIter.next();
            refCount++;
            Address fromAddr = ref.getFromAddress();
            Function f = getFunctionContaining(fromAddr);
            println("xref from " + fromAddr + " in function " + (f != null ? f.getName() + " @ " + f.getEntryPoint() : "<no function>"));
            if (f != null) {
                callers.add(f);
            }
        }
        println("Total references to S-box: " + refCount);
        println("Distinct referencing functions: " + callers.size());

        DecompInterface decomp = new DecompInterface();
        decomp.openProgram(currentProgram);

        Set<Function> allToDecompile = new HashSet<>(callers);
        // Also grab callers-of-callers (one more level up the call chain),
        // since the S-box-referencing function is likely a low-level AES
        // primitive (SubBytes/round function), not the key-check itself.
        for (Function f : callers) {
            for (Function caller : f.getCallingFunctions(monitor)) {
                allToDecompile.add(caller);
            }
        }

        for (Function f : allToDecompile) {
            println("\n\n===== FUNCTION " + f.getName() + " @ " + f.getEntryPoint() + " =====");
            DecompileResults res = decomp.decompileFunction(f, 60, new ConsoleTaskMonitor());
            if (res != null && res.decompileCompleted()) {
                println(res.getDecompiledFunction().getC());
            } else {
                println("(decompilation failed or timed out)");
            }
        }
    }
}
