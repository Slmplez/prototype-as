/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.minisat.core.IOrder
 *  org.sat4j.minisat.core.LearningStrategy
 */
package org.sat4j.pb.core;

import org.sat4j.minisat.core.IOrder;
import org.sat4j.minisat.core.LearningStrategy;
import org.sat4j.pb.constraints.pb.ConflictMapSwitchToClause;
import org.sat4j.pb.constraints.pb.IConflict;
import org.sat4j.pb.constraints.pb.PBConstr;
import org.sat4j.pb.core.PBDataStructureFactory;
import org.sat4j.pb.core.PBSolverCP;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PBSolverCautious
extends PBSolverCP {
    private static final long serialVersionUID = 1L;
    public static final int BOUND = 10;

    public PBSolverCautious(LearningStrategy<PBDataStructureFactory> learningStrategy, PBDataStructureFactory pBDataStructureFactory, IOrder iOrder) {
        super(learningStrategy, pBDataStructureFactory, iOrder);
        ConflictMapSwitchToClause.UPPERBOUND = 10;
    }

    public PBSolverCautious(LearningStrategy<PBDataStructureFactory> learningStrategy, PBDataStructureFactory pBDataStructureFactory, IOrder iOrder, int n) {
        super(learningStrategy, pBDataStructureFactory, iOrder);
        ConflictMapSwitchToClause.UPPERBOUND = n;
    }

    @Override
    IConflict chooseConflict(PBConstr pBConstr, int n) {
        return ConflictMapSwitchToClause.createConflict(pBConstr, n);
    }

    @Override
    public String toString(String string) {
        return new StringBuffer().append(super.toString(string)).append("\n").append(string).append("When dealing with too large coefficients, simplify asserted PB constraints to clauses").toString();
    }

    @Override
    protected void updateNumberOfReductions(IConflict iConflict) {
        this.stats.numberOfReductions += ((ConflictMapSwitchToClause)iConflict).getNumberOfReductions();
    }

    @Override
    protected void updateNumberOfReducedLearnedConstraints(IConflict iConflict) {
        if (((ConflictMapSwitchToClause)iConflict).hasBeenReduced()) {
            ++this.stats.numberOfLearnedConstraintsReduced;
        }
    }
}

