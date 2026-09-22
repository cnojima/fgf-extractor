// Decompile the pmdata.bin file-format functions in xlua.dll: load_from_file
// (top-level structure) plus the key/value walkers reached from
// get_value_by_num_key. Image base 0x180000000.
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileResults;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Function;
import ghidra.util.task.ConsoleTaskMonitor;
import java.util.LinkedHashSet;
import java.util.Set;

public class DecompileBddFmt extends GhidraScript {
    private DecompInterface decomp;
    private void dump(Function f, String tag) {
        println("\n\n===== " + tag + " " + f.getName() + " @ " + f.getEntryPoint() + " =====");
        DecompileResults r = decomp.decompileFunction(f, 120, new ConsoleTaskMonitor());
        println(r != null && r.decompileCompleted() ? r.getDecompiledFunction().getC() : "(fail)");
    }
    @Override
    protected void run() throws Exception {
        decomp = new DecompInterface();
        decomp.openProgram(currentProgram);
        // load_from_file, next_num_key, get_ud_by_addr, get_value_by_str_addr_key,
        // and the two value walkers FUN_18007f620 / FUN_18007f410 + string resolver.
        String[] rvas = {"18007df50"};
        Set<Function> callees = new LinkedHashSet<>();
        for (String rv : rvas) {
            Address a = currentProgram.getAddressFactory().getAddress(rv);
            Function f = getFunctionContaining(a);
            if (f == null) { println("no fn at " + rv); continue; }
            dump(f, "FMT");
            callees.addAll(f.getCalledFunctions(monitor));
        }
        for (Function c : callees) {
            if (c.getBody().getNumAddresses() < 900 && !c.isExternal())
                dump(c, "CALLEE");
        }
    }
}
