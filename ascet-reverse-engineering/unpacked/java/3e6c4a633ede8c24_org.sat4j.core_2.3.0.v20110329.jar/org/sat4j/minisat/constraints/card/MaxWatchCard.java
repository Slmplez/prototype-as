/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.constraints.card;

import java.io.Serializable;
import java.math.BigInteger;
import org.sat4j.minisat.constraints.cnf.Lits;
import org.sat4j.minisat.constraints.cnf.UnitClauses;
import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.ILits;
import org.sat4j.minisat.core.Undoable;
import org.sat4j.minisat.core.UnitPropagationListener;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IVecInt;

public final class MaxWatchCard
implements Constr,
Undoable,
Serializable {
    private static final long serialVersionUID = 1L;
    private int degree;
    private final int[] lits;
    private boolean moreThan;
    private int watchCumul;
    private final ILits voc;
    static final /* synthetic */ boolean $assertionsDisabled;

    private MaxWatchCard(ILits iLits, IVecInt iVecInt, boolean bl, int n) {
        int n2;
        this.voc = iLits;
        this.degree = n;
        this.moreThan = bl;
        int[] nArray = new int[iLits.nVars() * 2 + 2];
        for (n2 = 0; n2 < nArray.length; ++n2) {
            nArray[n2] = 0;
        }
        for (n2 = 0; n2 < iVecInt.size(); ++n2) {
            if (nArray[iVecInt.get(n2) ^ 1] == 0) {
                int n3 = iVecInt.get(n2);
                nArray[n3] = nArray[n3] + 1;
                continue;
            }
            int n4 = iVecInt.get(n2) ^ 1;
            nArray[n4] = nArray[n4] - 1;
        }
        n2 = 0;
        while (n2 < iVecInt.size()) {
            if (nArray[iVecInt.get(n2)] > 0) {
                int n5 = iVecInt.get(n2);
                nArray[n5] = nArray[n5] - 1;
                ++n2;
                continue;
            }
            if ((iVecInt.get(n2) & 1) != 0) {
                --this.degree;
            }
            iVecInt.set(n2, iVecInt.last());
            iVecInt.pop();
        }
        this.lits = new int[iVecInt.size()];
        iVecInt.moveTo(this.lits);
        this.normalize();
        this.watchCumul = 0;
        for (int i = 0; i < this.lits.length; ++i) {
            if (iLits.isFalsified(this.lits[i])) continue;
            ++this.watchCumul;
            iLits.watch(this.lits[i] ^ 1, this);
        }
    }

    public void calcReason(int n, IVecInt iVecInt) {
        for (int i = 0; i < this.lits.length; ++i) {
            if (!this.voc.isFalsified(this.lits[i])) continue;
            iVecInt.push(this.lits[i] ^ 1);
        }
    }

    public double getActivity() {
        return 0.0;
    }

    public void incActivity(double d) {
    }

    public boolean learnt() {
        return false;
    }

    public boolean locked() {
        return true;
    }

    public static Constr maxWatchCardNew(UnitPropagationListener unitPropagationListener, ILits iLits, IVecInt iVecInt, boolean bl, int n) throws ContradictionException {
        MaxWatchCard maxWatchCard = null;
        if (iVecInt.size() < n) {
            throw new ContradictionException("Creating trivially inconsistent constraint");
        }
        if (iVecInt.size() == n) {
            for (int i = 0; i < iVecInt.size(); ++i) {
                if (unitPropagationListener.enqueue(iVecInt.get(i))) continue;
                throw new ContradictionException("Contradiction with implied literal");
            }
            return new UnitClauses(iVecInt);
        }
        maxWatchCard = new MaxWatchCard(iLits, iVecInt, bl, n);
        if (maxWatchCard.degree <= 0) {
            return null;
        }
        if (maxWatchCard.watchCumul < maxWatchCard.degree) {
            throw new ContradictionException();
        }
        if (maxWatchCard.watchCumul == maxWatchCard.degree) {
            for (int i = 0; i < maxWatchCard.lits.length; ++i) {
                if (unitPropagationListener.enqueue(maxWatchCard.lits[i])) continue;
                throw new ContradictionException("Contradiction with implied literal");
            }
            return null;
        }
        return maxWatchCard;
    }

    public final void normalize() {
        if (!this.moreThan) {
            this.degree = 0 - this.degree;
            for (int i = 0; i < this.lits.length; ++i) {
                this.lits[i] = this.lits[i] ^ 1;
                ++this.degree;
            }
            this.moreThan = true;
        }
    }

    public boolean propagate(UnitPropagationListener unitPropagationListener, int n) {
        this.voc.watch(n, this);
        if (!$assertionsDisabled && this.voc.isFalsified(n)) {
            throw new AssertionError();
        }
        if (this.watchCumul == this.degree) {
            return false;
        }
        this.voc.undos(n).push(this);
        --this.watchCumul;
        if (this.watchCumul == this.degree) {
            int[] nArray = this.lits;
            int n2 = nArray.length;
            for (int i = 0; i < n2; ++i) {
                int n3 = nArray[i];
                if (!this.voc.isUnassigned(n3) || unitPropagationListener.enqueue(n3, this)) continue;
                return false;
            }
        }
        return true;
    }

    public void remove(UnitPropagationListener unitPropagationListener) {
        int[] nArray = this.lits;
        int n = nArray.length;
        for (int i = 0; i < n; ++i) {
            int n2 = nArray[i];
            this.voc.watches(n2 ^ 1).remove(this);
        }
    }

    public void rescaleBy(double d) {
    }

    public boolean simplify() {
        int n = 0;
        int n2 = this.watchCumul;
        while (n < this.lits.length) {
            if (!this.voc.isUnassigned(this.lits[n++]) || --n2 >= this.degree) continue;
            return false;
        }
        return false;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        if (this.lits.length > 0) {
            if (this.voc.isUnassigned(this.lits[0])) {
                stringBuffer.append(Lits.toString(this.lits[0]));
                stringBuffer.append(" ");
            }
            for (int i = 1; i < this.lits.length; ++i) {
                if (!this.voc.isUnassigned(this.lits[i])) continue;
                stringBuffer.append(" + ");
                stringBuffer.append(Lits.toString(this.lits[i]));
                stringBuffer.append(" ");
            }
            stringBuffer.append(">= ");
            stringBuffer.append(this.degree);
        }
        return stringBuffer.toString();
    }

    public void undo(int n) {
        ++this.watchCumul;
    }

    public void setLearnt() {
        throw new UnsupportedOperationException();
    }

    public void register() {
        throw new UnsupportedOperationException();
    }

    public int size() {
        return this.lits.length;
    }

    public int get(int n) {
        return this.lits[n];
    }

    public void assertConstraint(UnitPropagationListener unitPropagationListener) {
        throw new UnsupportedOperationException();
    }

    public BigInteger getCoef(int n) {
        return BigInteger.ONE;
    }

    public BigInteger getDegree() {
        return BigInteger.valueOf(this.degree);
    }

    public ILits getVocabulary() {
        return this.voc;
    }

    public void forwardActivity(double d) {
    }

    static {
        $assertionsDisabled = !MaxWatchCard.class.desiredAssertionStatus();
    }
}

