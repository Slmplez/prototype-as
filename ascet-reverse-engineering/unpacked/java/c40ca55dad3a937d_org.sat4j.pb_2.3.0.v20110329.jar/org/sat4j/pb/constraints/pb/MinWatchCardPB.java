/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.minisat.constraints.card.MinWatchCard
 *  org.sat4j.minisat.core.Constr
 *  org.sat4j.minisat.core.ILits
 *  org.sat4j.minisat.core.UnitPropagationListener
 *  org.sat4j.specs.ContradictionException
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb.constraints.pb;

import java.math.BigInteger;
import org.sat4j.minisat.constraints.card.MinWatchCard;
import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.ILits;
import org.sat4j.minisat.core.UnitPropagationListener;
import org.sat4j.pb.constraints.pb.PBConstr;
import org.sat4j.pb.constraints.pb.UnitClausesPB;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IVecInt;

public final class MinWatchCardPB
extends MinWatchCard
implements PBConstr {
    private static final long serialVersionUID = 1L;
    private final BigInteger bigDegree = BigInteger.valueOf(this.degree);
    private boolean learnt = false;
    static final /* synthetic */ boolean $assertionsDisabled;

    public MinWatchCardPB(ILits iLits, IVecInt iVecInt, boolean bl, int n) {
        super(iLits, iVecInt, bl, n);
    }

    public MinWatchCardPB(ILits iLits, IVecInt iVecInt, int n) {
        super(iLits, iVecInt, n);
    }

    public BigInteger getCoef(int n) {
        return BigInteger.ONE;
    }

    public BigInteger getDegree() {
        return this.bigDegree;
    }

    public BigInteger[] getCoefs() {
        BigInteger[] bigIntegerArray = new BigInteger[this.size()];
        for (int i = 0; i < bigIntegerArray.length; ++i) {
            bigIntegerArray[i] = BigInteger.ONE;
        }
        return bigIntegerArray;
    }

    public static PBConstr normalizedMinWatchCardPBNew(UnitPropagationListener unitPropagationListener, ILits iLits, IVecInt iVecInt, int n) throws ContradictionException {
        return MinWatchCardPB.minWatchCardPBNew(unitPropagationListener, iLits, iVecInt, true, n, true);
    }

    public static PBConstr minWatchCardPBNew(UnitPropagationListener unitPropagationListener, ILits iLits, IVecInt iVecInt, boolean bl, int n) throws ContradictionException {
        return MinWatchCardPB.minWatchCardPBNew(unitPropagationListener, iLits, iVecInt, bl, n, false);
    }

    private static PBConstr minWatchCardPBNew(UnitPropagationListener unitPropagationListener, ILits iLits, IVecInt iVecInt, boolean bl, int n, boolean bl2) throws ContradictionException {
        int n2 = n + MinWatchCardPB.linearisation((ILits)iLits, (IVecInt)iVecInt);
        if (iVecInt.size() < n2) {
            throw new ContradictionException();
        }
        if (iVecInt.size() == 0 && n2 > 0) {
            throw new ContradictionException();
        }
        if (iVecInt.size() == n2 || iVecInt.size() <= 0) {
            for (int i = 0; i < iVecInt.size(); ++i) {
                if (unitPropagationListener.enqueue(iVecInt.get(i))) continue;
                throw new ContradictionException();
            }
            return new UnitClausesPB(iVecInt);
        }
        MinWatchCardPB minWatchCardPB = null;
        minWatchCardPB = bl2 ? new MinWatchCardPB(iLits, iVecInt, n2) : new MinWatchCardPB(iLits, iVecInt, bl, n2);
        if (minWatchCardPB.bigDegree.signum() <= 0) {
            return null;
        }
        minWatchCardPB.computeWatches();
        return (MinWatchCardPB)minWatchCardPB.computePropagation(unitPropagationListener);
    }

    public boolean learnt() {
        return this.learnt;
    }

    public void setLearnt() {
        this.learnt = true;
    }

    public void register() {
        if (!$assertionsDisabled && !this.learnt) {
            throw new AssertionError();
        }
        this.computeWatches();
    }

    public void assertConstraint(UnitPropagationListener unitPropagationListener) {
        for (int i = 0; i < this.size(); ++i) {
            if (!this.getVocabulary().isUnassigned(this.get(i))) continue;
            boolean bl = unitPropagationListener.enqueue(this.get(i), (Constr)this);
            if (!$assertionsDisabled && !bl) {
                throw new AssertionError();
            }
        }
    }

    public IVecInt computeAnImpliedClause() {
        return null;
    }

    static {
        $assertionsDisabled = !MinWatchCardPB.class.desiredAssertionStatus();
    }
}

