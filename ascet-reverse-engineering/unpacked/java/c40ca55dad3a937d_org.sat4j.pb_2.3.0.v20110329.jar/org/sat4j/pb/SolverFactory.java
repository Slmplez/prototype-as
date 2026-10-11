/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.core.ASolverFactory
 *  org.sat4j.minisat.core.IOrder
 *  org.sat4j.minisat.core.IPhaseSelectionStrategy
 *  org.sat4j.minisat.core.LearningStrategy
 *  org.sat4j.minisat.core.RestartStrategy
 *  org.sat4j.minisat.core.Solver
 *  org.sat4j.minisat.core.VarActivityListener
 *  org.sat4j.minisat.learning.ClauseOnlyLearning
 *  org.sat4j.minisat.learning.MiniSATLearning
 *  org.sat4j.minisat.learning.NoLearningButHeuristics
 *  org.sat4j.minisat.orders.PhaseInLastLearnedClauseSelectionStrategy
 *  org.sat4j.minisat.orders.RSATPhaseSelectionStrategy
 *  org.sat4j.minisat.orders.UserFixedPhaseSelectionStrategy
 *  org.sat4j.minisat.orders.VarOrderHeap
 *  org.sat4j.minisat.restarts.ArminRestarts
 *  org.sat4j.minisat.restarts.MiniSATRestarts
 *  org.sat4j.specs.ISolver
 *  org.sat4j.tools.DimacsOutputSolver
 */
package org.sat4j.pb;

import org.sat4j.core.ASolverFactory;
import org.sat4j.minisat.core.IOrder;
import org.sat4j.minisat.core.IPhaseSelectionStrategy;
import org.sat4j.minisat.core.LearningStrategy;
import org.sat4j.minisat.core.RestartStrategy;
import org.sat4j.minisat.core.Solver;
import org.sat4j.minisat.core.VarActivityListener;
import org.sat4j.minisat.learning.ClauseOnlyLearning;
import org.sat4j.minisat.learning.MiniSATLearning;
import org.sat4j.minisat.learning.NoLearningButHeuristics;
import org.sat4j.minisat.orders.PhaseInLastLearnedClauseSelectionStrategy;
import org.sat4j.minisat.orders.RSATPhaseSelectionStrategy;
import org.sat4j.minisat.orders.UserFixedPhaseSelectionStrategy;
import org.sat4j.minisat.orders.VarOrderHeap;
import org.sat4j.minisat.restarts.ArminRestarts;
import org.sat4j.minisat.restarts.MiniSATRestarts;
import org.sat4j.pb.IPBSolver;
import org.sat4j.pb.OPBStringSolver;
import org.sat4j.pb.OptToPBSATAdapter;
import org.sat4j.pb.PseudoOptDecorator;
import org.sat4j.pb.constraints.AbstractPBDataStructureFactory;
import org.sat4j.pb.constraints.CompetMinHTmixedClauseCardConstrDataStructureFactory;
import org.sat4j.pb.constraints.CompetResolutionMinPBLongMixedWLClauseCardConstrDataStructure;
import org.sat4j.pb.constraints.CompetResolutionPBLongMixedHTClauseCardConstrDataStructure;
import org.sat4j.pb.constraints.CompetResolutionPBLongMixedWLClauseCardConstrDataStructure;
import org.sat4j.pb.constraints.CompetResolutionPBMixedHTClauseCardConstrDataStructure;
import org.sat4j.pb.constraints.CompetResolutionPBMixedWLClauseCardConstrDataStructure;
import org.sat4j.pb.constraints.PBMaxClauseAtLeastConstrDataStructure;
import org.sat4j.pb.constraints.PBMaxClauseCardConstrDataStructure;
import org.sat4j.pb.constraints.PBMaxDataStructure;
import org.sat4j.pb.constraints.PBMinClauseCardConstrDataStructure;
import org.sat4j.pb.constraints.PBMinDataStructure;
import org.sat4j.pb.constraints.PuebloPBMinClauseAtLeastConstrDataStructure;
import org.sat4j.pb.constraints.PuebloPBMinClauseCardConstrDataStructure;
import org.sat4j.pb.constraints.PuebloPBMinDataStructure;
import org.sat4j.pb.core.PBDataStructureFactory;
import org.sat4j.pb.core.PBSolverCP;
import org.sat4j.pb.core.PBSolverCautious;
import org.sat4j.pb.core.PBSolverClause;
import org.sat4j.pb.core.PBSolverResCP;
import org.sat4j.pb.core.PBSolverResolution;
import org.sat4j.pb.core.PBSolverWithImpliedClause;
import org.sat4j.pb.orders.VarOrderHeapObjective;
import org.sat4j.pb.tools.ManyCorePB;
import org.sat4j.specs.ISolver;
import org.sat4j.tools.DimacsOutputSolver;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SolverFactory
extends ASolverFactory<IPBSolver> {
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

    public static PBSolverResolution newPBResAllPB() {
        return SolverFactory.newPBRes(new PBMaxDataStructure());
    }

    public static PBSolverCP newPBCPAllPB() {
        return SolverFactory.newPBCP(new PBMaxDataStructure());
    }

    public static IPBSolver newOPBStringSolver() {
        return new OPBStringSolver();
    }

    public static PBSolverCP newPBCPMixedConstraints() {
        return SolverFactory.newPBCP(new PBMaxClauseCardConstrDataStructure());
    }

    public static PBSolverCP newPBCPMixedConstraintsObjective() {
        return SolverFactory.newPBCP(new PBMaxClauseCardConstrDataStructure(), (IOrder)new VarOrderHeapObjective());
    }

    public static PBSolverCP newCompetPBCPMixedConstraintsObjective() {
        return SolverFactory.newPBCP(new PBMaxClauseCardConstrDataStructure(), (IOrder)new VarOrderHeapObjective());
    }

    public static PBSolverCP newPBCPMixedConstraintsObjectiveLearnJustClauses() {
        ClauseOnlyLearning clauseOnlyLearning = new ClauseOnlyLearning();
        PBSolverCP pBSolverCP = new PBSolverCP((LearningStrategy<PBDataStructureFactory>)clauseOnlyLearning, new PBMaxClauseCardConstrDataStructure(), (IOrder)new VarOrderHeapObjective());
        clauseOnlyLearning.setSolver((Solver)pBSolverCP);
        return pBSolverCP;
    }

    public static PBSolverCP newCompetPBCPMixedConstraintsObjectiveLearnJustClauses() {
        ClauseOnlyLearning clauseOnlyLearning = new ClauseOnlyLearning();
        PBSolverCP pBSolverCP = new PBSolverCP((LearningStrategy<PBDataStructureFactory>)clauseOnlyLearning, new PBMaxClauseCardConstrDataStructure(), (IOrder)new VarOrderHeapObjective());
        clauseOnlyLearning.setSolver((Solver)pBSolverCP);
        return pBSolverCP;
    }

    private static PBSolverCP newPBKiller(IPhaseSelectionStrategy iPhaseSelectionStrategy) {
        ClauseOnlyLearning clauseOnlyLearning = new ClauseOnlyLearning();
        PBSolverCP pBSolverCP = new PBSolverCP((LearningStrategy<PBDataStructureFactory>)clauseOnlyLearning, new PBMaxClauseCardConstrDataStructure(), (IOrder)new VarOrderHeapObjective(iPhaseSelectionStrategy));
        clauseOnlyLearning.setSolver((Solver)pBSolverCP);
        return pBSolverCP;
    }

    public static PBSolverCP newPBKillerRSAT() {
        return SolverFactory.newPBKiller((IPhaseSelectionStrategy)new RSATPhaseSelectionStrategy());
    }

    public static PBSolverCP newPBKillerClassic() {
        return SolverFactory.newPBKiller((IPhaseSelectionStrategy)new PhaseInLastLearnedClauseSelectionStrategy());
    }

    public static PBSolverCP newPBKillerFixed() {
        return SolverFactory.newPBKiller((IPhaseSelectionStrategy)new UserFixedPhaseSelectionStrategy());
    }

    private static PBSolverCP newCompetPBKiller(IPhaseSelectionStrategy iPhaseSelectionStrategy) {
        ClauseOnlyLearning clauseOnlyLearning = new ClauseOnlyLearning();
        PBSolverCP pBSolverCP = new PBSolverCP((LearningStrategy<PBDataStructureFactory>)clauseOnlyLearning, new PBMaxClauseCardConstrDataStructure(), (IOrder)new VarOrderHeapObjective(iPhaseSelectionStrategy));
        clauseOnlyLearning.setSolver((Solver)pBSolverCP);
        return pBSolverCP;
    }

    public static PBSolverCP newCompetPBKillerRSAT() {
        return SolverFactory.newCompetPBKiller((IPhaseSelectionStrategy)new RSATPhaseSelectionStrategy());
    }

    public static PBSolverCP newCompetPBKillerClassic() {
        return SolverFactory.newCompetPBKiller((IPhaseSelectionStrategy)new PhaseInLastLearnedClauseSelectionStrategy());
    }

    public static PBSolverCP newCompetPBKillerFixed() {
        return SolverFactory.newCompetPBKiller((IPhaseSelectionStrategy)new UserFixedPhaseSelectionStrategy());
    }

    public static PBSolverCP newMiniLearningOPBClauseCardConstrMaxSpecificOrderIncrementalReductionToClause() {
        MiniSATLearning miniSATLearning = new MiniSATLearning();
        PBSolverClause pBSolverClause = new PBSolverClause((LearningStrategy<PBDataStructureFactory>)miniSATLearning, new PBMaxClauseCardConstrDataStructure(), (IOrder)new VarOrderHeapObjective());
        miniSATLearning.setDataStructureFactory(pBSolverClause.getDSFactory());
        miniSATLearning.setVarActivityListener((VarActivityListener)pBSolverClause);
        return pBSolverClause;
    }

    public static PBSolverCP newPBCPMixedConstraintsObjectiveNoLearning() {
        NoLearningButHeuristics noLearningButHeuristics = new NoLearningButHeuristics();
        PBSolverCP pBSolverCP = new PBSolverCP((LearningStrategy<PBDataStructureFactory>)noLearningButHeuristics, new PBMaxClauseCardConstrDataStructure(), (IOrder)new VarOrderHeapObjective());
        noLearningButHeuristics.setSolver((Solver)pBSolverCP);
        noLearningButHeuristics.setVarActivityListener((VarActivityListener)pBSolverCP);
        return pBSolverCP;
    }

    public static PBSolverResolution newPBResMixedConstraintsObjective() {
        MiniSATLearning miniSATLearning = new MiniSATLearning();
        PBSolverResolution pBSolverResolution = new PBSolverResolution((LearningStrategy<PBDataStructureFactory>)miniSATLearning, new PBMaxClauseCardConstrDataStructure(), (IOrder)new VarOrderHeapObjective(), (RestartStrategy)new MiniSATRestarts());
        miniSATLearning.setDataStructureFactory(pBSolverResolution.getDSFactory());
        miniSATLearning.setVarActivityListener((VarActivityListener)pBSolverResolution);
        return pBSolverResolution;
    }

    public static PBSolverResolution newCompetPBResWLMixedConstraintsObjectiveExpSimp() {
        return SolverFactory.newCompetPBResMixedConstraintsObjectiveExpSimp(new CompetResolutionPBMixedWLClauseCardConstrDataStructure());
    }

    public static PBSolverResolution newCompetPBResHTMixedConstraintsObjectiveExpSimp() {
        return SolverFactory.newCompetPBResMixedConstraintsObjectiveExpSimp(new CompetResolutionPBMixedHTClauseCardConstrDataStructure());
    }

    public static PBSolverResolution newCompetPBResLongHTMixedConstraintsObjectiveExpSimp() {
        return SolverFactory.newCompetPBResMixedConstraintsObjectiveExpSimp(new CompetResolutionPBLongMixedHTClauseCardConstrDataStructure());
    }

    public static PBSolverResolution newCompetPBResLongWLMixedConstraintsObjectiveExpSimp() {
        return SolverFactory.newCompetPBResMixedConstraintsObjectiveExpSimp(new CompetResolutionPBLongMixedWLClauseCardConstrDataStructure());
    }

    public static PBSolverResolution newCompetMinPBResLongWLMixedConstraintsObjectiveExpSimp() {
        return SolverFactory.newCompetPBResMixedConstraintsObjectiveExpSimp(new CompetResolutionMinPBLongMixedWLClauseCardConstrDataStructure());
    }

    public static PBSolverResolution newCompetPBResMixedConstraintsObjectiveExpSimp(PBDataStructureFactory pBDataStructureFactory) {
        MiniSATLearning miniSATLearning = new MiniSATLearning();
        PBSolverResolution pBSolverResolution = new PBSolverResolution((LearningStrategy<PBDataStructureFactory>)miniSATLearning, pBDataStructureFactory, (IOrder)new VarOrderHeapObjective((IPhaseSelectionStrategy)new RSATPhaseSelectionStrategy()), (RestartStrategy)new ArminRestarts());
        miniSATLearning.setDataStructureFactory(pBSolverResolution.getDSFactory());
        miniSATLearning.setVarActivityListener((VarActivityListener)pBSolverResolution);
        pBSolverResolution.setSimplifier(pBSolverResolution.EXPENSIVE_SIMPLIFICATION);
        return pBSolverResolution;
    }

    public static PBSolverResolution newPBResHTMixedConstraintsObjective() {
        MiniSATLearning miniSATLearning = new MiniSATLearning();
        CompetResolutionPBMixedHTClauseCardConstrDataStructure competResolutionPBMixedHTClauseCardConstrDataStructure = new CompetResolutionPBMixedHTClauseCardConstrDataStructure();
        competResolutionPBMixedHTClauseCardConstrDataStructure.setNormalizer(AbstractPBDataStructureFactory.NO_COMPETITION);
        PBSolverResolution pBSolverResolution = new PBSolverResolution((LearningStrategy<PBDataStructureFactory>)miniSATLearning, competResolutionPBMixedHTClauseCardConstrDataStructure, (IOrder)new VarOrderHeapObjective(), (RestartStrategy)new MiniSATRestarts());
        miniSATLearning.setDataStructureFactory(pBSolverResolution.getDSFactory());
        miniSATLearning.setVarActivityListener((VarActivityListener)pBSolverResolution);
        return pBSolverResolution;
    }

    public static PBSolverResolution newCompetPBResMinHTMixedConstraintsObjective() {
        MiniSATLearning miniSATLearning = new MiniSATLearning();
        PBSolverResolution pBSolverResolution = new PBSolverResolution((LearningStrategy<PBDataStructureFactory>)miniSATLearning, new CompetMinHTmixedClauseCardConstrDataStructureFactory(), (IOrder)new VarOrderHeapObjective(), (RestartStrategy)new MiniSATRestarts());
        miniSATLearning.setDataStructureFactory(pBSolverResolution.getDSFactory());
        miniSATLearning.setVarActivityListener((VarActivityListener)pBSolverResolution);
        return pBSolverResolution;
    }

    public static PBSolverResolution newPBResMinHTMixedConstraintsObjective() {
        MiniSATLearning miniSATLearning = new MiniSATLearning();
        CompetMinHTmixedClauseCardConstrDataStructureFactory competMinHTmixedClauseCardConstrDataStructureFactory = new CompetMinHTmixedClauseCardConstrDataStructureFactory();
        competMinHTmixedClauseCardConstrDataStructureFactory.setNormalizer(AbstractPBDataStructureFactory.NO_COMPETITION);
        PBSolverResolution pBSolverResolution = new PBSolverResolution((LearningStrategy<PBDataStructureFactory>)miniSATLearning, competMinHTmixedClauseCardConstrDataStructureFactory, (IOrder)new VarOrderHeapObjective(), (RestartStrategy)new MiniSATRestarts());
        miniSATLearning.setDataStructureFactory(pBSolverResolution.getDSFactory());
        miniSATLearning.setVarActivityListener((VarActivityListener)pBSolverResolution);
        return pBSolverResolution;
    }

    public static PBSolverResolution newCompetPBResMixedConstraintsObjectiveExpSimp() {
        PBSolverResolution pBSolverResolution = SolverFactory.newPBResMixedConstraintsObjective();
        pBSolverResolution.setSimplifier(pBSolverResolution.EXPENSIVE_SIMPLIFICATION);
        return pBSolverResolution;
    }

    public static PBSolverResolution newPBResHTMixedConstraintsObjectiveExpSimp() {
        PBSolverResolution pBSolverResolution = SolverFactory.newPBResHTMixedConstraintsObjective();
        pBSolverResolution.setSimplifier(pBSolverResolution.EXPENSIVE_SIMPLIFICATION);
        return pBSolverResolution;
    }

    public static PBSolverResolution newCompetPBResMinHTMixedConstraintsObjectiveExpSimp() {
        PBSolverResolution pBSolverResolution = SolverFactory.newCompetPBResMinHTMixedConstraintsObjective();
        pBSolverResolution.setSimplifier(pBSolverResolution.EXPENSIVE_SIMPLIFICATION);
        return pBSolverResolution;
    }

    public static PBSolverClause newPBCPMixedConstraintsReduceToClause() {
        MiniSATLearning miniSATLearning = new MiniSATLearning();
        PBSolverClause pBSolverClause = new PBSolverClause((LearningStrategy<PBDataStructureFactory>)miniSATLearning, new PBMaxClauseCardConstrDataStructure(), (IOrder)new VarOrderHeap());
        miniSATLearning.setDataStructureFactory(pBSolverClause.getDSFactory());
        miniSATLearning.setVarActivityListener((VarActivityListener)pBSolverClause);
        return pBSolverClause;
    }

    public static PBSolverCautious newPBCPMixedConstraintsCautious(int n) {
        MiniSATLearning miniSATLearning = new MiniSATLearning();
        PBSolverCautious pBSolverCautious = new PBSolverCautious((LearningStrategy<PBDataStructureFactory>)miniSATLearning, (PBDataStructureFactory)new PBMaxClauseCardConstrDataStructure(), (IOrder)new VarOrderHeapObjective(), n);
        miniSATLearning.setDataStructureFactory(pBSolverCautious.getDSFactory());
        miniSATLearning.setVarActivityListener((VarActivityListener)pBSolverCautious);
        return pBSolverCautious;
    }

    public static PBSolverCautious newPBCPMixedConstraintsCautious() {
        return SolverFactory.newPBCPMixedConstraintsCautious(10);
    }

    public static PBSolverResCP newPBCPMixedConstraintsResCP(long l) {
        MiniSATLearning miniSATLearning = new MiniSATLearning();
        PBSolverResCP pBSolverResCP = new PBSolverResCP((LearningStrategy<PBDataStructureFactory>)miniSATLearning, (PBDataStructureFactory)new PBMaxClauseCardConstrDataStructure(), (IOrder)new VarOrderHeapObjective(), l);
        miniSATLearning.setDataStructureFactory(pBSolverResCP.getDSFactory());
        miniSATLearning.setVarActivityListener((VarActivityListener)pBSolverResCP);
        pBSolverResCP.setSimplifier(pBSolverResCP.EXPENSIVE_SIMPLIFICATION);
        return pBSolverResCP;
    }

    public static PBSolverResCP newPBCPMixedConstraintsResCP() {
        return SolverFactory.newPBCPMixedConstraintsResCP(100000L);
    }

    public static PBSolverWithImpliedClause newPBCPMixedConstrainsImplied() {
        MiniSATLearning miniSATLearning = new MiniSATLearning();
        PBSolverWithImpliedClause pBSolverWithImpliedClause = new PBSolverWithImpliedClause((LearningStrategy<PBDataStructureFactory>)miniSATLearning, new PBMaxClauseCardConstrDataStructure(), (IOrder)new VarOrderHeap());
        miniSATLearning.setDataStructureFactory(pBSolverWithImpliedClause.getDSFactory());
        miniSATLearning.setVarActivityListener((VarActivityListener)pBSolverWithImpliedClause);
        return pBSolverWithImpliedClause;
    }

    public static PBSolverCP newMiniOPBClauseAtLeastConstrMax() {
        return SolverFactory.newPBCP(new PBMaxClauseAtLeastConstrDataStructure());
    }

    public static PBSolverResolution newPBResAllPBWL() {
        return SolverFactory.newPBRes(new PBMinDataStructure());
    }

    public static PBSolverCP newPBCPAllPBWL() {
        return SolverFactory.newPBCP(new PBMinDataStructure());
    }

    public static PBSolverResolution newPBResAllPBWLPueblo() {
        return SolverFactory.newPBRes(new PuebloPBMinDataStructure());
    }

    private static PBSolverResolution newPBRes(PBDataStructureFactory pBDataStructureFactory) {
        MiniSATLearning miniSATLearning = new MiniSATLearning();
        PBSolverResolution pBSolverResolution = new PBSolverResolution((LearningStrategy<PBDataStructureFactory>)miniSATLearning, pBDataStructureFactory, (IOrder)new VarOrderHeap(), (RestartStrategy)new MiniSATRestarts());
        miniSATLearning.setDataStructureFactory(pBSolverResolution.getDSFactory());
        miniSATLearning.setVarActivityListener((VarActivityListener)pBSolverResolution);
        return pBSolverResolution;
    }

    public static PBSolverCP newPBCPAllPBWLPueblo() {
        return SolverFactory.newPBCP(new PuebloPBMinDataStructure());
    }

    public static PBSolverCP newMiniOPBClauseCardMinPueblo() {
        return SolverFactory.newPBCP(new PuebloPBMinClauseCardConstrDataStructure());
    }

    public static PBSolverCP newMiniOPBClauseCardMin() {
        return SolverFactory.newPBCP(new PBMinClauseCardConstrDataStructure());
    }

    public static PBSolverCP newMiniOPBClauseAtLeastMinPueblo() {
        return SolverFactory.newPBCP(new PuebloPBMinClauseAtLeastConstrDataStructure());
    }

    private static PBSolverCP newPBCP(PBDataStructureFactory pBDataStructureFactory, IOrder iOrder) {
        MiniSATLearning miniSATLearning = new MiniSATLearning();
        PBSolverCP pBSolverCP = new PBSolverCP((LearningStrategy<PBDataStructureFactory>)miniSATLearning, pBDataStructureFactory, iOrder);
        miniSATLearning.setDataStructureFactory(pBSolverCP.getDSFactory());
        miniSATLearning.setVarActivityListener((VarActivityListener)pBSolverCP);
        pBSolverCP.setRestartStrategy((RestartStrategy)new ArminRestarts());
        pBSolverCP.setLearnedConstraintsDeletionStrategy(pBSolverCP.glucose);
        return pBSolverCP;
    }

    private static PBSolverCP newPBCP(PBDataStructureFactory pBDataStructureFactory) {
        return SolverFactory.newPBCP(pBDataStructureFactory, (IOrder)new VarOrderHeap());
    }

    public static IPBSolver newCuttingPlanes() {
        return SolverFactory.newCompetPBCPMixedConstraintsObjective();
    }

    public static IPBSolver newCuttingPlanesAggressiveCleanup() {
        PBSolverCP pBSolverCP = SolverFactory.newCompetPBCPMixedConstraintsObjective();
        pBSolverCP.setLearnedConstraintsDeletionStrategy(pBSolverCP.fixedSize(100));
        return pBSolverCP;
    }

    public static IPBSolver newResolution() {
        return SolverFactory.newResolutionGlucose();
    }

    public static IPBSolver newBoth() {
        return new ManyCorePB(SolverFactory.instance(), new String[]{"Resolution", "CuttingPlanes"});
    }

    public static IPBSolver newResolutionGlucose() {
        PBSolverResolution pBSolverResolution = SolverFactory.newCompetPBResLongWLMixedConstraintsObjectiveExpSimp();
        pBSolverResolution.setLearnedConstraintsDeletionStrategy(pBSolverResolution.glucose);
        return pBSolverResolution;
    }

    public static IPBSolver newResolutionGlucoseSimpleSimp() {
        PBSolverResolution pBSolverResolution = SolverFactory.newCompetPBResWLMixedConstraintsObjectiveExpSimp();
        pBSolverResolution.setLearnedConstraintsDeletionStrategy(pBSolverResolution.glucose);
        pBSolverResolution.setSimplifier(pBSolverResolution.SIMPLE_SIMPLIFICATION);
        return pBSolverResolution;
    }

    public static IPBSolver newSimpleSimplification() {
        PBSolverResolution pBSolverResolution = SolverFactory.newCompetPBResWLMixedConstraintsObjectiveExpSimp();
        pBSolverResolution.setLearnedConstraintsDeletionStrategy(pBSolverResolution.glucose);
        pBSolverResolution.setSimplifier(pBSolverResolution.SIMPLE_SIMPLIFICATION);
        return pBSolverResolution;
    }

    public static IPBSolver newResolutionSimpleRestarts() {
        PBSolverResolution pBSolverResolution = SolverFactory.newCompetPBResWLMixedConstraintsObjectiveExpSimp();
        pBSolverResolution.setLearnedConstraintsDeletionStrategy(pBSolverResolution.glucose);
        pBSolverResolution.setRestartStrategy((RestartStrategy)new MiniSATRestarts());
        return pBSolverResolution;
    }

    public static IPBSolver newResolutionMaxMemory() {
        PBSolverResolution pBSolverResolution = SolverFactory.newCompetPBResWLMixedConstraintsObjectiveExpSimp();
        pBSolverResolution.setLearnedConstraintsDeletionStrategy(pBSolverResolution.memory_based);
        return pBSolverResolution;
    }

    public static IPBSolver newDefault() {
        return SolverFactory.newResolutionGlucose();
    }

    public static IPBSolver newDefaultNonNormalized() {
        return SolverFactory.newPBResHTMixedConstraintsObjectiveExpSimp();
    }

    public IPBSolver defaultSolver() {
        return SolverFactory.newDefault();
    }

    public static IPBSolver newLight() {
        return SolverFactory.newCompetPBResMixedConstraintsObjectiveExpSimp();
    }

    public IPBSolver lightSolver() {
        return SolverFactory.newLight();
    }

    public static ISolver newDimacsOutput() {
        return new DimacsOutputSolver();
    }

    public static IPBSolver newEclipseP2() {
        MiniSATLearning miniSATLearning = new MiniSATLearning();
        PBSolverResolution pBSolverResolution = new PBSolverResolution((LearningStrategy<PBDataStructureFactory>)miniSATLearning, new CompetResolutionPBMixedHTClauseCardConstrDataStructure(), (IOrder)new VarOrderHeapObjective((IPhaseSelectionStrategy)new RSATPhaseSelectionStrategy()), (RestartStrategy)new ArminRestarts());
        miniSATLearning.setDataStructureFactory(pBSolverResolution.getDSFactory());
        miniSATLearning.setVarActivityListener((VarActivityListener)pBSolverResolution);
        pBSolverResolution.setTimeoutOnConflicts(300);
        pBSolverResolution.setVerbose(false);
        return new OptToPBSATAdapter(new PseudoOptDecorator(pBSolverResolution));
    }

    public /* synthetic */ ISolver lightSolver() {
        return this.lightSolver();
    }

    public /* synthetic */ ISolver defaultSolver() {
        return this.defaultSolver();
    }
}

