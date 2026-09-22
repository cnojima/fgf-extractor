// Follow-up to FindAesSboxXrefs: FUN_181269fb0 (at 0x181269fb0) is the raw
// AES-128 single-block encrypt primitive. Walk its callers two levels up
// looking for a one-shot "encrypt this 16-byte block and compare" style
// function - the UnityCN key-check logic - rather than the streaming
// CTR/CFB/OFB wrappers already found directly calling it.
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileResults;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Function;
import ghidra.util.task.ConsoleTaskMonitor;

import java.util.HashSet;
import java.util.Set;

public class FindAesCallers extends GhidraScript {

    @Override
    protected void run() throws Exception {
        Address aesEncryptAddr = currentProgram.getAddressFactory().getAddress("181269fb0");
        Function aesEncrypt = getFunctionAt(aesEncryptAddr);
        if (aesEncrypt == null) {
            println("Could not find function at 181269fb0");
            return;
        }

        Set<Function> level1 = new HashSet<>(aesEncrypt.getCallingFunctions(monitor));
        println("Level-1 callers of FUN_181269fb0: " + level1.size());
        for (Function f : level1) {
            println("  " + f.getName() + " @ " + f.getEntryPoint());
        }

        Set<Function> level2 = new HashSet<>();
        for (Function f : level1) {
            Set<Function> callers = f.getCallingFunctions(monitor);
            level2.addAll(callers);
            println("Callers of " + f.getName() + ": " + callers.size());
            for (Function c : callers) {
                println("  <- " + c.getName() + " @ " + c.getEntryPoint());
            }
        }

        Set<Function> level3 = new HashSet<>();
        for (Function f : level2) {
            Set<Function> callers = f.getCallingFunctions(monitor);
            level3.addAll(callers);
            println("Callers of " + f.getName() + ": " + callers.size());
            for (Function c : callers) {
                println("  <- " + c.getName() + " @ " + c.getEntryPoint());
            }
        }

        DecompInterface decomp = new DecompInterface();
        decomp.openProgram(currentProgram);

        Set<Function> toDecompile = new HashSet<>();
        toDecompile.addAll(level2);
        toDecompile.addAll(level3);

        for (Function f : toDecompile) {
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
