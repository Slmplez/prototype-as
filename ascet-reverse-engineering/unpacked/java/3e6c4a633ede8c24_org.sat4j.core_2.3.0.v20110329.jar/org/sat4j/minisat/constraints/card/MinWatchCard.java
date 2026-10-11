/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.constraints.card;

import java.io.Serializable;
import org.sat4j.minisat.constraints.cnf.Lits;
import org.sat4j.minisat.constraints.cnf.UnitClauses;
import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.ILits;
import org.sat4j.minisat.core.Undoable;
import org.sat4j.minisat.core.UnitPropagationListener;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IVecInt;

public class MinWatchCard
implements Constr,
Undoable,
Serializable {
    private static final long serialVersionUID = 1L;
    public static final boolean ATLEAST = true;
    public static final boolean ATMOST = false;
    protected int degree;
    private final int[] lits;
    private boolean moreThan;
    protected int watchCumul;
    private final ILits voc;
    static final /* synthetic */ boolean $assertionsDisabled;

    public MinWatchCard(ILits iLits, IVecInt iVecInt, boolean bl, int n) {
        int n2;
        this.voc = iLits;
        this.degree = n;
        this.moreThan = bl;
        int[] nArray = new int[iLits.nVars() * 2 + 2];
        for (n2 = 0; n2 < iVecInt.size(); ++n2) {
            int n3 = iVecInt.get(n2);
            if (nArray[n3 ^ 1] == 0) {
                int n4 = n3;
                nArray[n4] = nArray[n4] + 1;
                continue;
            }
            int n5 = n3 ^ 1;
            nArray[n5] = nArray[n5] - 1;
        }
        n2 = 0;
        while (n2 < iVecInt.size()) {
            if (nArray[iVecInt.get(n2)] > 0) {
                int n6 = iVecInt.get(n2);
                nArray[n6] = nArray[n6] - 1;
                ++n2;
                continue;
            }
            if ((iVecInt.get(n2) & 1) != 0) {
                --this.degree;
            }
            iVecInt.delete(n2);
        }
        this.lits = new int[iVecInt.size()];
        iVecInt.moveTo(this.lits);
        this.normalize();
    }

    protected MinWatchCard(ILits iLits, IVecInt iVecInt, int n) {
        this.voc = iLits;
        this.degree = n;
        this.moreThan = true;
        this.lits = new int[iVecInt.size()];
        iVecInt.moveTo(this.lits);
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

    protected static int linearisation(ILits iLits, IVecInt iVecInt) {
        int n = 0;
        int n2 = 0;
        while (n2 < iVecInt.size()) {
            if (iLits.isUnassigned(iVecInt.get(n2))) {
                ++n2;
                continue;
            }
            if (iLits.isSatisfied(iVecInt.get(n2))) {
                --n;
            }
            iVecInt.set(n2, iVecInt.last());
            iVecInt.pop();
        }
        if (!$assertionsDisabled && n > 0) {
            throw new AssertionError();
        }
        return n;
    }

    public boolean locked() {
        return true;
    }

    public static Constr minWatchCardNew(UnitPropagationListener unitPropagationListener, ILits iLits, IVecInt iVecInt, boolean bl, int n) throws ContradictionException {
        int n2 = n + MinWatchCard.linearisation(iLits, iVecInt);
        if (iVecInt.size() < n2) {
            throw new ContradictionException();
        }
        if (iVecInt.size() == n2) {
            for (int i = 0; i < iVecInt.size(); ++i) {
                if (unitPropagationListener.enqueue(iVecInt.get(i))) continue;
                throw new ContradictionException();
            }
            return new UnitClauses(iVecInt);
        }
        MinWatchCard minWatchCard = new MinWatchCard(iLits, iVecInt, bl, n2);
        if (minWatchCard.degree <= 0) {
            return null;
        }
        minWatchCard.computeWatches();
        minWatchCard.computePropagation(unitPropagationListener);
        return minWatchCard;
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
        int n2;
        if (this.watchCumul == this.degree) {
            this.voc.watch(n, this);
            return false;
        }
        int n3 = 0;
        while ((this.lits[n3] ^ 1) != n) {
            ++n3;
        }
        if (!$assertionsDisabled && this.watchCumul <= this.degree) {
            throw new AssertionError();
        }
        for (n2 = this.degree + 1; n2 < this.lits.length && this.voc.isFalsified(this.lits[n2]); ++n2) {
        }
        if (n2 == this.lits.length) {
            this.voc.watch(n, this);
            --this.watchCumul;
            if (!$assertionsDisabled && this.watchCumul != this.degree) {
                throw new AssertionError();
            }
            this.voc.undos(n).push(this);
            for (int i = 0; i <= this.degree; ++i) {
                if (n == (this.lits[i] ^ 1) || unitPropagationListener.enqueue(this.lits[i], this)) continue;
                return false;
            }
            return true;
        }
        int n4 = this.lits[n2];
        this.lits[n2] = this.lits[n3];
        this.lits[n3] = n4;
        this.voc.watch(n4 ^ 1, this);
        return true;
    }

    public void remove(UnitPropagationListener unitPropagationListener) {
        for (int i = 0; i < Math.min(this.degree + 1, this.lits.length); ++i) {
            this.voc.watches(this.lits[i] ^ 1).remove(this);
        }
    }

    public void rescaleBy(double d) {
    }

    public boolean simplify() {
        int n = 0;
        for (int i = 0; i < this.lits.length; ++i) {
            if (!this.voc.isSatisfied(this.lits[i]) || ++n != this.degree) continue;
            return true;
        }
        return false;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Card (" + this.lits.length + ") : ");
        if (this.lits.length > 0) {
            stringBuffer.append(Lits.toString(this.lits[0]));
            stringBuffer.append("[");
            stringBuffer.append(this.voc.valueToString(this.lits[0]));
            stringBuffer.append("@");
            stringBuffer.append(this.voc.getLevel(this.lits[0]));
            stringBuffer.append("]");
            stringBuffer.append(" ");
            for (int i = 1; i < this.lits.length; ++i) {
                stringBuffer.append(" + ");
                stringBuffer.append(Lits.toString(this.lits[i]));
                stringBuffer.append("[");
                stringBuffer.append(this.voc.valueToString(this.lits[i]));
                stringBuffer.append("@");
                stringBuffer.append(this.voc.getLevel(this.lits[i]));
                stringBuffer.append("]");
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

    protected void computeWatches() {
        int n;
        int n2;
        int n3 = this.lits.length;
        for (n2 = 0; n2 <= this.degree && n2 < n3; ++n2) {
            while (this.voc.isFalsified(this.lits[n2]) && --n3 > n2) {
                n = this.lits[n2];
                this.lits[n2] = this.lits[n3];
                this.lits[n3] = n;
            }
            if (this.voc.isFalsified(this.lits[n2])) continue;
            ++this.watchCumul;
            this.voc.watch(this.lits[n2] ^ 1, this);
        }
        if (this.learnt()) {
            n2 = 1;
            while (this.watchCumul <= this.degree && n2 > 0) {
                n2 = 0;
                int n4 = -1;
                int n5 = -1;
                for (int i = this.watchCumul; i < this.lits.length; ++i) {
                    if (!this.voc.isFalsified(this.lits[i])) continue;
                    ++n2;
                    int n6 = this.voc.getLevel(this.lits[i]);
                    if (n6 <= n4) continue;
                    n5 = i;
                    n4 = n6;
                }
                if (n2 <= 0) continue;
                if (!$assertionsDisabled && n5 < 0) {
                    throw new AssertionError();
                }
                this.voc.watch(this.lits[n5] ^ 1, this);
                n = this.lits[n5];
                this.lits[n5] = this.lits[this.watchCumul];
                this.lits[this.watchCumul] = n;
                ++this.watchCumul;
                if (!$assertionsDisabled && --n2 < 0) {
                    throw new AssertionError();
                }
            }
            if (!$assertionsDisabled && this.lits.length != 1 && this.watchCumul <= 1) {
                throw new AssertionError();
            }
        }
    }

    protected MinWatchCard computePropagation(UnitPropagationListener unitPropagationListener) throws ContradictionException {
        if (this.watchCumul == this.degree) {
            for (int i = 0; i < this.lits.length; ++i) {
                if (unitPropagationListener.enqueue(this.lits[i])) continue;
                throw new ContradictionException();
            }
            return null;
        }
        if (this.watchCumul < this.degree) {
            throw new ContradictionException();
        }
        return this;
    }

    public int[] getLits() {
        int[] nArray = new int[this.size()];
        System.arraycopy(this.lits, 0, nArray, 0, this.size());
        return nArray;
    }

    public ILits getVocabulary() {
        return this.voc;
    }

    public boolean equals(Object object) {
        if (object == null) {
            return false;
        }
        try {
            MinWatchCard minWatchCard = (MinWatchCard)object;
            if (minWatchCard.degree != this.degree) {
                return false;
            }
            if (this.lits.length != minWatchCard.lits.length) {
                return false;
            }
            int[] nArray = this.lits;
            int n = nArray.length;
            for (int i = 0; i < n; ++i) {
                int n2 = nArray[i];
                boolean bl = false;
                int[] nArray2 = minWatchCard.lits;
                int n3 = nArray2.length;
                for (int j = 0; j < n3; ++j) {
                    int n4 = nArray2[j];
                    if (n2 != n4) continue;
                    bl = true;
                    break;
                }
                if (bl) continue;
                return false;
            }
            return true;
        }
        catch (ClassCastException classCastException) {
            return false;
        }
    }

    public int hashCode() {
        long l = 0L;
        int[] nArray = this.lits;
        int n = nArray.length;
        for (int i = 0; i < n; ++i) {
            int n2 = nArray[i];
            l += (long)n2;
        }
        return (int)(l += (long)this.degree) / (this.lits.length + 1);
    }

    public void forwardActivity(double d) {
    }

    static {
        $assertionsDisabled = !MinWatchCard.class.desiredAssertionStatus();
    }
}

