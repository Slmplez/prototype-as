/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.minisat.constraints.card.AtLeast
 *  org.sat4j.minisat.core.Constr
 *  org.sat4j.minisat.core.ILits
 *  org.sat4j.minisat.core.UnitPropagationListener
 *  org.sat4j.specs.ContradictionException
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb.constraints.pb;

import java.math.BigInteger;
import org.sat4j.minisat.constraints.card.AtLeast;
import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.ILits;
import org.sat4j.minisat.core.UnitPropagationListener;
import org.sat4j.pb.constraints.pb.PBConstr;
import org.sat4j.pb.constraints.pb.UnitClausesPB;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IVecInt;

public final class AtLeastPB
extends AtLeast
implements PBConstr {
    private static final long serialVersionUID = 1L;
    private final BigInteger degree;
    private boolean learnt = false;
    static final /* synthetic */ boolean $assertionsDisabled;

    private AtLeastPB(ILits iLits, IVecInt iVecInt, int n) {
        super(iLits, iVecInt, n);
        this.degree = BigInteger.valueOf(n);
    }

    public static PBConstr atLeastNew(UnitPropagationListener unitPropagationListener, ILits iLits, IVecInt iVecInt, int n) throws ContradictionException {
        int n2 = AtLeastPB.niceParameters((UnitPropagationListener)unitPropagationListener, (ILits)iLits, (IVecInt)iVecInt, (int)n);
        if (n2 == 0) {
            return new UnitClausesPB(iVecInt);
        }
        return new AtLeastPB(iLits, iVecInt, n2);
    }

    public static AtLeastPB atLeastNew(ILits iLits, IVecInt iVecInt, int n) {
        return new AtLeastPB(iLits, iVecInt, n);
    }

    public BigInteger getCoef(int n) {
        return BigInteger.ONE;
    }

    public BigInteger getDegree() {
        return this.degree;
    }

    public ILits getVocabulary() {
        return this.voc;
    }

    public int[] getLits() {
        int[] nArray = new int[this.size()];
        System.arraycopy(this.lits, 0, nArray, 0, this.size());
        return nArray;
    }

    public BigInteger[] getCoefs() {
        BigInteger[] bigIntegerArray = new BigInteger[this.size()];
        for (int i = 0; i < bigIntegerArray.length; ++i) {
            bigIntegerArray[i] = BigInteger.ONE;
        }
        return bigIntegerArray;
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
        $assertionsDisabled = !AtLeastPB.class.desiredAssertionStatus();
    }
}

