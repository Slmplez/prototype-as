/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.core.Vec
 *  org.sat4j.minisat.core.Constr
 *  org.sat4j.minisat.core.IOrder
 *  org.sat4j.minisat.core.LearningStrategy
 *  org.sat4j.minisat.core.Pair
 *  org.sat4j.minisat.core.RestartStrategy
 *  org.sat4j.minisat.core.SearchParams
 *  org.sat4j.minisat.core.VarActivityListener
 *  org.sat4j.minisat.restarts.MiniSATRestarts
 *  org.sat4j.specs.IConstr
 *  org.sat4j.specs.IVec
 *  org.sat4j.specs.TimeoutException
 */
package org.sat4j.pb.core;

import org.sat4j.core.Vec;
import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.IOrder;
import org.sat4j.minisat.core.LearningStrategy;
import org.sat4j.minisat.core.Pair;
import org.sat4j.minisat.core.RestartStrategy;
import org.sat4j.minisat.core.SearchParams;
import org.sat4j.minisat.core.VarActivityListener;
import org.sat4j.minisat.restarts.MiniSATRestarts;
import org.sat4j.pb.constraints.pb.ConflictMap;
import org.sat4j.pb.constraints.pb.IConflict;
import org.sat4j.pb.constraints.pb.PBConstr;
import org.sat4j.pb.core.PBDataStructureFactory;
import org.sat4j.pb.core.PBSolver;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.IVec;
import org.sat4j.specs.TimeoutException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PBSolverCP
extends PBSolver {
    private static final long serialVersionUID = 1L;
    private final IVec<String> conflictVariables = new Vec();
    private final IVec<String> conflictConstraints = new Vec();
    static final /* synthetic */ boolean $assertionsDisabled;
    static /* synthetic */ Class class$org$sat4j$pb$core$PBSolverCP;

    public PBSolverCP(LearningStrategy<PBDataStructureFactory> learningStrategy, PBDataStructureFactory pBDataStructureFactory, IOrder iOrder) {
        super(learningStrategy, pBDataStructureFactory, new SearchParams(1.5, 100), iOrder, (RestartStrategy)new MiniSATRestarts());
    }

    public PBSolverCP(LearningStrategy<PBDataStructureFactory> learningStrategy, PBDataStructureFactory pBDataStructureFactory, SearchParams searchParams, IOrder iOrder, RestartStrategy restartStrategy) {
        super(learningStrategy, pBDataStructureFactory, searchParams, iOrder, restartStrategy);
    }

    public PBSolverCP(LearningStrategy<PBDataStructureFactory> learningStrategy, PBDataStructureFactory pBDataStructureFactory, SearchParams searchParams, IOrder iOrder) {
        super(learningStrategy, pBDataStructureFactory, searchParams, iOrder, (RestartStrategy)new MiniSATRestarts());
    }

    public void analyze(Constr constr, Pair pair) throws TimeoutException {
        if (this.someCriteria()) {
            this.analyzeCP(constr, pair);
        } else {
            super.analyze(constr, pair);
        }
    }

    public void analyzeCP(Constr constr, Pair pair) throws TimeoutException {
        PBConstr pBConstr;
        int n = this.trail.last();
        int n2 = this.voc.getLevel(n);
        IConflict iConflict = this.chooseConflict((PBConstr)constr, n2);
        if (!$assertionsDisabled && iConflict.slackConflict().signum() >= 0) {
            throw new AssertionError();
        }
        while (!iConflict.isAssertive(n2)) {
            if (!this.undertimeout) {
                throw new TimeoutException();
            }
            pBConstr = (PBConstr)this.voc.getReason(n);
            iConflict.resolve(pBConstr, n, (VarActivityListener)this);
            this.updateNumberOfReductions(iConflict);
            if (!$assertionsDisabled && iConflict.slackConflict().signum() > 0) {
                throw new AssertionError();
            }
            if (this.trail.size() == 1) break;
            this.undoOne();
            if (this.decisionLevel() == 0) break;
            n = this.trail.last();
            if (this.voc.getLevel(n) != n2) {
                this.trailLim.pop();
                iConflict.updateSlack(this.voc.getLevel(n));
            }
            if (!$assertionsDisabled && this.voc.getLevel(n) > n2) {
                throw new AssertionError();
            }
            n2 = this.voc.getLevel(n);
            if (!$assertionsDisabled && !iConflict.slackIsCorrect(n2)) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && n2 != this.decisionLevel()) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && n <= 1) {
                throw new AssertionError();
            }
        }
        if (!$assertionsDisabled && !iConflict.isAssertive(n2) && this.trail.size() != 1 && this.decisionLevel() != 0) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && n2 != this.decisionLevel()) {
            throw new AssertionError();
        }
        this.undoOne();
        this.updateNumberOfReducedLearnedConstraints(iConflict);
        if (iConflict.size() == 0 || (this.decisionLevel() == 0 || this.trail.size() == 0) && iConflict.slackConflict().signum() < 0) {
            pair.reason = null;
            pair.backtrackLevel = -1;
            return;
        }
        pBConstr = (PBConstr)((PBDataStructureFactory)this.dsfactory).createUnregisteredPseudoBooleanConstraint(iConflict);
        pair.reason = pBConstr;
        this.getSearchListener().learn((IConstr)pBConstr);
        pair.backtrackLevel = this.decisionLevel() == 0 || this.trail.size() == 0 ? -1 : iConflict.getBacktrackLevel(n2);
    }

    IConflict chooseConflict(PBConstr pBConstr, int n) {
        return ConflictMap.createConflict(pBConstr, n);
    }

    public String toString(String string) {
        return new StringBuffer().append(string).append("Cutting planes based inference (").append(this.getClass().getName()).append(")\n").append(super.toString(string)).toString();
    }

    void initExplanation() {
        this.conflictVariables.clear();
        this.conflictConstraints.clear();
    }

    boolean someCriteria() {
        return true;
    }

    protected void updateNumberOfReductions(IConflict iConflict) {
    }

    protected void updateNumberOfReducedLearnedConstraints(IConflict iConflict) {
    }

    static /* synthetic */ Class class$(String string) {
        try {
            return Class.forName(string);
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError().initCause(classNotFoundException);
        }
    }

    static {
        $assertionsDisabled = !(class$org$sat4j$pb$core$PBSolverCP == null ? (class$org$sat4j$pb$core$PBSolverCP = PBSolverCP.class$("org.sat4j.pb.core.PBSolverCP")) : class$org$sat4j$pb$core$PBSolverCP).desiredAssertionStatus();
    }
}

