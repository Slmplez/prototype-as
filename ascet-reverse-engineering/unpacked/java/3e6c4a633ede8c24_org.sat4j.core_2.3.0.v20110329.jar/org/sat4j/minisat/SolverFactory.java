/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat;

import org.sat4j.core.ASolverFactory;
import org.sat4j.minisat.constraints.MixedDataStructureDanielHT;
import org.sat4j.minisat.constraints.MixedDataStructureDanielWL;
import org.sat4j.minisat.constraints.MixedDataStructureSingleWL;
import org.sat4j.minisat.core.DataStructureFactory;
import org.sat4j.minisat.core.IOrder;
import org.sat4j.minisat.core.SearchParams;
import org.sat4j.minisat.core.Solver;
import org.sat4j.minisat.learning.MiniSATLearning;
import org.sat4j.minisat.learning.NoLearningButHeuristics;
import org.sat4j.minisat.learning.PercentLengthLearning;
import org.sat4j.minisat.orders.PhaseCachingAutoEraseStrategy;
import org.sat4j.minisat.orders.PureOrder;
import org.sat4j.minisat.orders.RSATLastLearnedClausesPhaseSelectionStrategy;
import org.sat4j.minisat.orders.RSATPhaseSelectionStrategy;
import org.sat4j.minisat.orders.RandomWalkDecorator;
import org.sat4j.minisat.orders.VarOrderHeap;
import org.sat4j.minisat.restarts.ArminRestarts;
import org.sat4j.minisat.restarts.LubyRestarts;
import org.sat4j.minisat.restarts.MiniSATRestarts;
import org.sat4j.minisat.restarts.NoRestarts;
import org.sat4j.opt.MinOneDecorator;
import org.sat4j.specs.ISolver;
import org.sat4j.tools.DimacsOutputSolver;
import org.sat4j.tools.OptToSatAdapter;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class SolverFactory
extends ASolverFactory<ISolver> {
    private static final long serialVersionUID = 1L;
    private static SolverFactory instance;

    private SolverFactory() {
    }

    private static synchronized void createInstance() {
        if (instance == null) {
            instance = new SolverFactory();
        }
    }

    public static SolverFactory instance() {
        if (instance == null) {
            SolverFactory.createInstance();
        }
        return instance;
    }

    public static Solver<DataStructureFactory> newMiniLearningHeap() {
        return SolverFactory.newMiniLearningHeap(new MixedDataStructureDanielWL());
    }

    public static Solver<DataStructureFactory> newMiniLearningHeapEZSimp() {
        Solver<DataStructureFactory> solver = SolverFactory.newMiniLearningHeap();
        solver.setSimplifier(solver.SIMPLE_SIMPLIFICATION);
        return solver;
    }

    public static Solver<DataStructureFactory> newMiniLearningHeapExpSimp() {
        Solver<DataStructureFactory> solver = SolverFactory.newMiniLearningHeap();
        solver.setSimplifier(solver.EXPENSIVE_SIMPLIFICATION);
        return solver;
    }

    public static Solver<DataStructureFactory> newMiniLearningHeapRsatExpSimp() {
        Solver<DataStructureFactory> solver = SolverFactory.newMiniLearningHeapExpSimp();
        solver.setOrder(new VarOrderHeap(new RSATPhaseSelectionStrategy()));
        return solver;
    }

    public static Solver<DataStructureFactory> newMiniLearningHeapRsatExpSimpBiere() {
        Solver<DataStructureFactory> solver = SolverFactory.newMiniLearningHeapRsatExpSimp();
        solver.setRestartStrategy(new ArminRestarts());
        solver.setSearchParams(new SearchParams(1.1, 100));
        return solver;
    }

    public static Solver<DataStructureFactory> newMiniLearningHeapRsatExpSimpLuby() {
        Solver<DataStructureFactory> solver = SolverFactory.newMiniLearningHeapRsatExpSimp();
        solver.setRestartStrategy(new LubyRestarts(512));
        return solver;
    }

    private static Solver<DataStructureFactory> newBestCurrentSolverConfiguration(DataStructureFactory dataStructureFactory) {
        MiniSATLearning<DataStructureFactory> miniSATLearning = new MiniSATLearning<DataStructureFactory>();
        Solver<DataStructureFactory> solver = new Solver<DataStructureFactory>(miniSATLearning, dataStructureFactory, new VarOrderHeap(new RSATPhaseSelectionStrategy()), new ArminRestarts());
        solver.setSearchParams(new SearchParams(1.1, 100));
        miniSATLearning.setSolver(solver);
        solver.setSimplifier(solver.EXPENSIVE_SIMPLIFICATION);
        return solver;
    }

    public static Solver<DataStructureFactory> newGreedySolver() {
        MiniSATLearning<DataStructureFactory> miniSATLearning = new MiniSATLearning<DataStructureFactory>();
        Solver<DataStructureFactory> solver = new Solver<DataStructureFactory>(miniSATLearning, new MixedDataStructureDanielWL(), new RandomWalkDecorator(new VarOrderHeap(new RSATPhaseSelectionStrategy())), new NoRestarts());
        miniSATLearning.setSolver(solver);
        solver.setSimplifier(solver.EXPENSIVE_SIMPLIFICATION);
        return solver;
    }

    public static Solver<DataStructureFactory> newDefaultAutoErasePhaseSaving() {
        Solver<DataStructureFactory> solver = SolverFactory.newBestWL();
        solver.setOrder(new VarOrderHeap(new PhaseCachingAutoEraseStrategy()));
        return solver;
    }

    public static Solver<DataStructureFactory> newDefaultMS21PhaseSaving() {
        Solver<DataStructureFactory> solver = SolverFactory.newBestWL();
        solver.setOrder(new VarOrderHeap(new RSATLastLearnedClausesPhaseSelectionStrategy()));
        return solver;
    }

    public static Solver<DataStructureFactory> newBestWL() {
        return SolverFactory.newBestCurrentSolverConfiguration(new MixedDataStructureDanielWL());
    }

    public static Solver<DataStructureFactory> newBestHT() {
        return SolverFactory.newBestCurrentSolverConfiguration(new MixedDataStructureDanielHT());
    }

    public static Solver<DataStructureFactory> newBestSingleWL() {
        return SolverFactory.newBestCurrentSolverConfiguration(new MixedDataStructureSingleWL());
    }

    public static Solver<DataStructureFactory> newBest17() {
        Solver<DataStructureFactory> solver = SolverFactory.newBestCurrentSolverConfiguration(new MixedDataStructureSingleWL());
        solver.setSimplifier(solver.EXPENSIVE_SIMPLIFICATION_WLONLY);
        solver.setLearnedConstraintsDeletionStrategy(solver.memory_based);
        PercentLengthLearning<DataStructureFactory> percentLengthLearning = new PercentLengthLearning<DataStructureFactory>(10);
        solver.setLearner(percentLengthLearning);
        percentLengthLearning.setSolver(solver);
        return solver;
    }

    public static Solver<DataStructureFactory> newGlucose() {
        Solver<DataStructureFactory> solver = SolverFactory.newBestWL();
        solver.setLearnedConstraintsDeletionStrategy(solver.glucose);
        solver.setRestartStrategy(new LubyRestarts(512));
        return solver;
    }

    public static Solver<DataStructureFactory> newMiniLearningHeap(DataStructureFactory dataStructureFactory) {
        return SolverFactory.newMiniLearning(dataStructureFactory, new VarOrderHeap());
    }

    public static Solver<DataStructureFactory> newMiniLearningPure() {
        return SolverFactory.newMiniLearning(new MixedDataStructureDanielWL(), new PureOrder());
    }

    public static Solver<DataStructureFactory> newMiniLearning(DataStructureFactory dataStructureFactory, IOrder iOrder) {
        MiniSATLearning<DataStructureFactory> miniSATLearning = new MiniSATLearning<DataStructureFactory>();
        Solver<DataStructureFactory> solver = new Solver<DataStructureFactory>(miniSATLearning, dataStructureFactory, iOrder, new MiniSATRestarts());
        miniSATLearning.setSolver(solver);
        return solver;
    }

    public static Solver<DataStructureFactory> newMiniLearningHeapEZSimpNoRestarts() {
        PercentLengthLearning<DataStructureFactory> percentLengthLearning = new PercentLengthLearning<DataStructureFactory>(10);
        Solver<DataStructureFactory> solver = new Solver<DataStructureFactory>(percentLengthLearning, new MixedDataStructureDanielWL(), new SearchParams(Integer.MAX_VALUE), new VarOrderHeap(), new MiniSATRestarts());
        percentLengthLearning.setSolver(solver);
        solver.setSimplifier(solver.SIMPLE_SIMPLIFICATION);
        return solver;
    }

    public static Solver<DataStructureFactory> newMiniLearningHeapEZSimpLongRestarts() {
        PercentLengthLearning<DataStructureFactory> percentLengthLearning = new PercentLengthLearning<DataStructureFactory>(10);
        Solver<DataStructureFactory> solver = new Solver<DataStructureFactory>(percentLengthLearning, new MixedDataStructureDanielWL(), new SearchParams(1000), new VarOrderHeap(), new MiniSATRestarts());
        percentLengthLearning.setSolver(solver);
        solver.setSimplifier(solver.SIMPLE_SIMPLIFICATION);
        return solver;
    }

    public static Solver<DataStructureFactory> newMiniSATHeap() {
        return SolverFactory.newMiniSATHeap(new MixedDataStructureDanielWL());
    }

    public static Solver<DataStructureFactory> newMiniSATHeapEZSimp() {
        Solver<DataStructureFactory> solver = SolverFactory.newMiniSATHeap();
        solver.setSimplifier(solver.SIMPLE_SIMPLIFICATION);
        return solver;
    }

    public static Solver<DataStructureFactory> newMiniSATHeapExpSimp() {
        Solver<DataStructureFactory> solver = SolverFactory.newMiniSATHeap();
        solver.setSimplifier(solver.EXPENSIVE_SIMPLIFICATION);
        return solver;
    }

    public static Solver<DataStructureFactory> newMiniSATHeap(DataStructureFactory dataStructureFactory) {
        MiniSATLearning miniSATLearning = new MiniSATLearning();
        Solver<DataStructureFactory> solver = new Solver<DataStructureFactory>(miniSATLearning, dataStructureFactory, new VarOrderHeap(), new MiniSATRestarts());
        miniSATLearning.setDataStructureFactory(solver.getDSFactory());
        miniSATLearning.setVarActivityListener(solver);
        return solver;
    }

    public static Solver<MixedDataStructureDanielWL> newBackjumping() {
        NoLearningButHeuristics noLearningButHeuristics = new NoLearningButHeuristics();
        Solver<MixedDataStructureDanielWL> solver = new Solver<MixedDataStructureDanielWL>(noLearningButHeuristics, new MixedDataStructureDanielWL(), new VarOrderHeap(), new MiniSATRestarts());
        noLearningButHeuristics.setVarActivityListener(solver);
        return solver;
    }

    public static ISolver newMinOneSolver() {
        return new OptToSatAdapter(new MinOneDecorator(SolverFactory.newDefault()));
    }

    public static ISolver newDefault() {
        return SolverFactory.newMiniLearningHeapRsatExpSimpBiere();
    }

    @Override
    public ISolver defaultSolver() {
        return SolverFactory.newDefault();
    }

    public static ISolver newLight() {
        return SolverFactory.newMiniLearningHeap();
    }

    @Override
    public ISolver lightSolver() {
        return SolverFactory.newLight();
    }

    public static ISolver newDimacsOutput() {
        return new DimacsOutputSolver();
    }
}

