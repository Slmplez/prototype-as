/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j;

import org.sat4j.BasicLauncher;
import org.sat4j.core.ASolverFactory;
import org.sat4j.minisat.constraints.MixedDataStructureDanielWL;
import org.sat4j.minisat.core.SearchParams;
import org.sat4j.minisat.core.Solver;
import org.sat4j.minisat.learning.MiniSATLearning;
import org.sat4j.minisat.orders.RSATPhaseSelectionStrategy;
import org.sat4j.minisat.orders.VarOrderHeap;
import org.sat4j.minisat.restarts.ArminRestarts;
import org.sat4j.specs.ISolver;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class LightFactory
extends ASolverFactory<ISolver> {
    private static final long serialVersionUID = 1460304168178023681L;
    private static LightFactory instance;

    private static synchronized void createInstance() {
        if (instance == null) {
            instance = new LightFactory();
        }
    }

    public static LightFactory instance() {
        if (instance == null) {
            LightFactory.createInstance();
        }
        return instance;
    }

    @Override
    public ISolver defaultSolver() {
        MiniSATLearning<MixedDataStructureDanielWL> miniSATLearning = new MiniSATLearning<MixedDataStructureDanielWL>();
        Solver<MixedDataStructureDanielWL> solver = new Solver<MixedDataStructureDanielWL>(miniSATLearning, new MixedDataStructureDanielWL(), new VarOrderHeap(new RSATPhaseSelectionStrategy()), new ArminRestarts());
        miniSATLearning.setSolver(solver);
        solver.setSimplifier(solver.EXPENSIVE_SIMPLIFICATION);
        solver.setSearchParams(new SearchParams(1.1, 100));
        return solver;
    }

    @Override
    public ISolver lightSolver() {
        return this.defaultSolver();
    }

    public static void main(String[] stringArray) {
        BasicLauncher<ISolver> basicLauncher = new BasicLauncher<ISolver>(LightFactory.instance());
        if (stringArray.length != 1) {
            basicLauncher.usage();
            return;
        }
        basicLauncher.run(stringArray);
        System.exit(basicLauncher.getExitCode().value());
    }
}

