// Decompile UnityPlayer's three AES-NI key-setup functions (identified by the
// aeskeygenassist clusters at RVA 0x1268c50 / 0x1268e80 / 0x1269120, i.e.
// image-based 0x181268c50 etc.) and ALL of their callers, to locate the
// UnityCN ArchiveStorage decrypt routine and trace where the raw key argument
// comes from (ideally a global variable we can read at a fixed address).
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileResults;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Function;
import ghidra.util.task.ConsoleTaskMonitor;

import java.util.LinkedHashSet;
import java.util.Set;

public class TraceAesKeySetup extends GhidraScript {

    private DecompInterface decomp;

    private void dump(Function f, String tag) {
        println("\n\n===== " + tag + " " + f.getName() + " @ " + f.getEntryPoint() + " =====");
        DecompileResults res = decomp.decompileFunction(f, 60, new ConsoleTaskMonitor());
        if (res != null && res.decompileCompleted()) {
            println(res.getDecompiledFunction().getC());
        } else {
            println("(decompile failed)");
        }
    }

    @Override
    protected void run() throws Exception {
        decomp = new DecompInterface();
        decomp.openProgram(currentProgram);

        String[] rvas = {"181268c50", "181268e80", "181269120"};
        Set<Function> targets = new LinkedHashSet<>();
        for (String r : rvas) {
            Address a = currentProgram.getAddressFactory().getAddress(r);
            Function f = getFunctionContaining(a);
            if (f == null) {
                println("no function containing " + r);
                continue;
            }
            targets.add(f);
        }

        // decompile the key-setup functions themselves
        for (Function f : targets) {
            dump(f, "KEYSETUP");
        }

        // decompile every caller (one level up) - these contain the UnityCN logic
        Set<Function> callers = new LinkedHashSet<>();
        for (Function f : targets) {
            for (Function c : f.getCallingFunctions(monitor)) {
                callers.add(c);
            }
        }
        println("\n\n#### " + callers.size() + " distinct callers of the key-setup functions ####");
        for (Function c : callers) {
            dump(c, "CALLER");
        }
    }
}
