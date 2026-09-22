// fpxgame.dll's FUN_180002040 looks like an AES_set_encrypt_key-style
// function (branches on key size 0x80/0xc0/0x100 bits, expands into a round
// key schedule). Whatever calls it passes the ACTUAL raw AES key as an
// argument - trace callers up several levels to find where that key
// literal/buffer comes from.
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileResults;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Function;
import ghidra.util.task.ConsoleTaskMonitor;

import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;

public class FindKeySetupCallers extends GhidraScript {

    @Override
    protected void run() throws Exception {
        Address setKeyAddr = currentProgram.getAddressFactory().getAddress("180002040");
        Function setKey = getFunctionAt(setKeyAddr);
        if (setKey == null) {
            println("Could not find function at 180002040");
            return;
        }

        Set<Function> frontier = new LinkedHashSet<>();
        frontier.add(setKey);
        Set<Function> allSeen = new LinkedHashSet<>();
        allSeen.add(setKey);

        for (int levelNum = 1; levelNum <= 4 && !frontier.isEmpty(); levelNum++) {
            Set<Function> next = new LinkedHashSet<>();
            for (Function f : frontier) {
                Set<Function> callers = f.getCallingFunctions(monitor);
                println("Level " + levelNum + " - callers of " + f.getName() + " @ " + f.getEntryPoint() + ": " + callers.size());
                for (Function c : callers) {
                    println("  <- " + c.getName() + " @ " + c.getEntryPoint());
                    if (allSeen.add(c)) {
                        next.add(c);
                    }
                }
            }
            frontier = next;
        }

        DecompInterface decomp = new DecompInterface();
        decomp.openProgram(currentProgram);

        allSeen.remove(setKey);
        for (Function f : allSeen) {
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
