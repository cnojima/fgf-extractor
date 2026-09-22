// Trace callers of the AES set_key routine FUN_181266590 upward to find the
// UnityCN ArchiveStorage setup and the origin of the raw key argument (param_2).
// Decompile 2 levels of callers.
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileResults;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Function;
import ghidra.util.task.ConsoleTaskMonitor;

import java.util.LinkedHashSet;
import java.util.Set;

public class TraceUp extends GhidraScript {
    private DecompInterface decomp;

    private void dump(Function f, String tag) {
        println("\n\n===== " + tag + " " + f.getName() + " @ " + f.getEntryPoint() + " =====");
        DecompileResults res = decomp.decompileFunction(f, 90, new ConsoleTaskMonitor());
        println(res != null && res.decompileCompleted() ? res.getDecompiledFunction().getC() : "(decompile failed)");
    }

    @Override
    protected void run() throws Exception {
        decomp = new DecompInterface();
        decomp.openProgram(currentProgram);

        Address a = currentProgram.getAddressFactory().getAddress("181266590");
        Function base = getFunctionContaining(a);
        Set<Function> lvl1 = new LinkedHashSet<>(base.getCallingFunctions(monitor));
        println("#### level-1 callers of set_key FUN_181266590: " + lvl1.size());
        for (Function f : lvl1) {
            dump(f, "L1");
        }
        Set<Function> lvl2 = new LinkedHashSet<>();
        for (Function f : lvl1) {
            for (Function c : f.getCallingFunctions(monitor)) {
                if (!lvl1.contains(c) && c != base) lvl2.add(c);
            }
        }
        println("\n\n#### level-2 callers: " + lvl2.size());
        for (Function f : lvl2) {
            dump(f, "L2");
        }
    }
}
