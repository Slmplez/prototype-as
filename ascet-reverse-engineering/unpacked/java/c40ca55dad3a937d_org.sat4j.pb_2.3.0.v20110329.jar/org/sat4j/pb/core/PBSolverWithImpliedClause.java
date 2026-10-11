/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.minisat.core.IOrder
 *  org.sat4j.minisat.core.LearningStrategy
 *  org.sat4j.specs.ContradictionException
 *  org.sat4j.specs.IConstr
 *  org.sat4j.specs.IVec
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb.core;

import java.math.BigInteger;
import org.sat4j.minisat.core.IOrder;
import org.sat4j.minisat.core.LearningStrategy;
import org.sat4j.pb.constraints.pb.PBConstr;
import org.sat4j.pb.core.PBDataStructureFactory;
import org.sat4j.pb.core.PBSolverCP;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PBSolverWithImpliedClause
extends PBSolverCP {
    private static final long serialVersionUID = 1L;
    static final /* synthetic */ boolean $assertionsDisabled;
    static /* synthetic */ Class class$org$sat4j$pb$core$PBSolverWithImpliedClause;

    public PBSolverWithImpliedClause(LearningStrategy<PBDataStructureFactory> learningStrategy, PBDataStructureFactory pBDataStructureFactory, IOrder iOrder) {
        super(learningStrategy, pBDataStructureFactory, iOrder);
    }

    @Override
    public IConstr addPseudoBoolean(IVecInt iVecInt, IVec<BigInteger> iVec, boolean bl, BigInteger bigInteger) throws ContradictionException {
        IVecInt iVecInt2;
        IVecInt iVecInt3 = this.dimacs2internal(iVecInt);
        if (!$assertionsDisabled && iVecInt3.size() != iVecInt.size()) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && iVecInt.size() != iVec.size()) {
            throw new AssertionError();
        }
        PBConstr pBConstr = (PBConstr)((PBDataStructureFactory)this.dsfactory).createPseudoBooleanConstraint(iVecInt3, iVec, bl, bigInteger);
        if (pBConstr != null && (iVecInt2 = pBConstr.computeAnImpliedClause()) != null) {
            this.addConstr(((PBDataStructureFactory)this.dsfactory).createClause(iVecInt2));
        }
        return this.addConstr(pBConstr);
    }

    @Override
    public String toString(String string) {
        return new StringBuffer().append(super.toString(string)).append("\n").append(string).append("Add implied clauses in preprocessing").toString();
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
        $assertionsDisabled = !(class$org$sat4j$pb$core$PBSolverWithImpliedClause == null ? (class$org$sat4j$pb$core$PBSolverWithImpliedClause = PBSolverWithImpliedClause.class$("org.sat4j.pb.core.PBSolverWithImpliedClause")) : class$org$sat4j$pb$core$PBSolverWithImpliedClause).desiredAssertionStatus();
    }
}

