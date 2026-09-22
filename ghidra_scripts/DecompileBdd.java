// Decompile xlua.dll's bdd binary-table functions to reveal the pmdata.bin
// node format. Image base 0x180000000; RVAs from the luaL_Reg table.
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileResults;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Function;
import ghidra.util.task.ConsoleTaskMonitor;
import java.util.LinkedHashSet;
import java.util.Set;

public class DecompileBdd extends GhidraScript {
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
        String[] rvas = {"180078880","180078bd0","1800788c0"}; // start_handle, value_by_num, str_by_addr
        Set<Function> callees = new LinkedHashSet<>();
        for (String rv : rvas) {
            Address a = currentProgram.getAddressFactory().getAddress(rv);
            Function f = getFunctionContaining(a);
            if (f == null) { println("no fn at " + rv); continue; }
            dump(f, "BDD");
            callees.addAll(f.getCalledFunctions(monitor));
        }
        // decompile small helper callees (the real node walkers)
        for (Function c : callees) {
            if (c.getBody().getNumAddresses() < 1200 && !c.isExternal())
                dump(c, "CALLEE");
        }
    }
}
