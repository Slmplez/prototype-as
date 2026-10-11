/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.minisat.core.DataStructureFactory
 *  org.sat4j.minisat.core.IOrder
 *  org.sat4j.minisat.core.LearningStrategy
 *  org.sat4j.minisat.core.RestartStrategy
 *  org.sat4j.minisat.core.SearchParams
 *  org.sat4j.minisat.core.Solver
 *  org.sat4j.specs.ContradictionException
 *  org.sat4j.specs.IConstr
 *  org.sat4j.specs.IVec
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb.core;

import java.math.BigInteger;
import org.sat4j.minisat.core.DataStructureFactory;
import org.sat4j.minisat.core.IOrder;
import org.sat4j.minisat.core.LearningStrategy;
import org.sat4j.minisat.core.RestartStrategy;
import org.sat4j.minisat.core.SearchParams;
import org.sat4j.minisat.core.Solver;
import org.sat4j.pb.IPBSolver;
import org.sat4j.pb.ObjectiveFunction;
import org.sat4j.pb.core.PBDataStructureFactory;
import org.sat4j.pb.core.PBSolverStats;
import org.sat4j.pb.orders.VarOrderHeapObjective;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class PBSolver
extends Solver<PBDataStructureFactory>
implements IPBSolver {
    private ObjectiveFunction objf;
    private static final long serialVersionUID = 1L;
    protected PBSolverStats stats = new PBSolverStats();
    static final /* synthetic */ boolean $assertionsDisabled;
    static /* synthetic */ Class class$org$sat4j$pb$core$PBSolver;

    public PBSolver(LearningStrategy<PBDataStructureFactory> learningStrategy, PBDataStructureFactory pBDataStructureFactory, IOrder iOrder, RestartStrategy restartStrategy) {
        super(learningStrategy, (DataStructureFactory)pBDataStructureFactory, iOrder, restartStrategy);
        this.initStats(this.stats);
    }

    public PBSolver(LearningStrategy<PBDataStructureFactory> learningStrategy, PBDataStructureFactory pBDataStructureFactory, SearchParams searchParams, IOrder iOrder, RestartStrategy restartStrategy) {
        super(learningStrategy, (DataStructureFactory)pBDataStructureFactory, searchParams, iOrder, restartStrategy);
        this.initStats(this.stats);
    }

    @Override
    public IConstr addPseudoBoolean(IVecInt iVecInt, IVec<BigInteger> iVec, boolean bl, BigInteger bigInteger) throws ContradictionException {
        IVecInt iVecInt2 = this.dimacs2internal(iVecInt);
        if (!$assertionsDisabled && iVecInt2.size() != iVecInt.size()) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && iVecInt.size() != iVec.size()) {
            throw new AssertionError();
        }
        return this.addConstr(((PBDataStructureFactory)this.dsfactory).createPseudoBooleanConstraint(iVecInt2, iVec, bl, bigInteger));
    }

    @Override
    public void setObjectiveFunction(ObjectiveFunction objectiveFunction) {
        this.objf = objectiveFunction;
        IOrder iOrder = this.getOrder();
        if (iOrder instanceof VarOrderHeapObjective) {
            ((VarOrderHeapObjective)iOrder).setObjectiveFunction(objectiveFunction);
        }
    }

    @Override
    public ObjectiveFunction getObjectiveFunction() {
        return this.objf;
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
        $assertionsDisabled = !(class$org$sat4j$pb$core$PBSolver == null ? (class$org$sat4j$pb$core$PBSolver = PBSolver.class$("org.sat4j.pb.core.PBSolver")) : class$org$sat4j$pb$core$PBSolver).desiredAssertionStatus();
    }
}

