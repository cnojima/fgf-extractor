// Decompile the UnityPlayer function that opens the .bundle files (return
// address of the CreateFileW call was at RVA 0x9f658b -> image-based
// 0x1809f658b) and the functions it calls, to find the UnityCN decryption
// and where the decrypt key comes from.
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileResults;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Function;
import ghidra.program.model.symbol.Reference;
import ghidra.util.task.ConsoleTaskMonitor;

import java.util.LinkedHashSet;
import java.util.Set;

public class DecompileBundleOpen extends GhidraScript {
    private DecompInterface decomp;

    private String dump(Function f, String tag) {
        DecompileResults res = decomp.decompileFunction(f, 90, new ConsoleTaskMonitor());
        return "\n\n===== " + tag + " " + f.getName() + " @ " + f.getEntryPoint() + " =====\n"
             + (res != null && res.decompileCompleted() ? res.getDecompiledFunction().getC() : "(fail)");
    }

    @Override
    protected void run() throws Exception {
        decomp = new DecompInterface();
        decomp.openProgram(currentProgram);
        Address a = currentProgram.getAddressFactory().getAddress("1809f658b");
        Function opener = getFunctionContaining(a);
        if (opener == null) { println("no function containing 1809f658b"); return; }
        println(dump(opener, "OPENER"));

        // its callees (to find decrypt) and callers (to find key setup)
        Set<Function> callees = new LinkedHashSet<>(opener.getCalledFunctions(monitor));
        println("\n#### " + callees.size() + " callees ####");
        for (Function c : callees) {
            println(dump(c, "CALLEE"));
        }
        Set<Function> callers = new LinkedHashSet<>(opener.getCallingFunctions(monitor));
        println("\n#### " + callers.size() + " callers ####");
        for (Function c : callers) {
            println(dump(c, "CALLER"));
        }
    }
}
