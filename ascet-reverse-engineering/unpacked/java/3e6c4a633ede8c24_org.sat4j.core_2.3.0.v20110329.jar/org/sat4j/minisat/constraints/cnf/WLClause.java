/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.constraints.cnf;

import java.io.Serializable;
import org.sat4j.minisat.constraints.cnf.Lits;
import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.ILits;
import org.sat4j.minisat.core.UnitPropagationListener;
import org.sat4j.specs.IVecInt;

public abstract class WLClause
implements Constr,
Serializable {
    private static final long serialVersionUID = 1L;
    protected double activity;
    protected final int[] lits;
    protected final ILits voc;
    static final /* synthetic */ boolean $assertionsDisabled;

    public WLClause(IVecInt iVecInt, ILits iLits) {
        this.lits = new int[iVecInt.size()];
        iVecInt.moveTo(this.lits);
        if (!$assertionsDisabled && iVecInt.size() != 0) {
            throw new AssertionError();
        }
        this.voc = iLits;
        this.activity = 0.0;
    }

    public void calcReason(int n, IVecInt iVecInt) {
        int n2;
        int[] nArray = this.lits;
        int n3 = n2 = n == -1 ? 0 : 1;
        while (n2 < nArray.length) {
            if (!$assertionsDisabled && !this.voc.isFalsified(nArray[n2])) {
                throw new AssertionError();
            }
            iVecInt.push(nArray[n2] ^ 1);
            ++n2;
        }
    }

    public void remove(UnitPropagationListener unitPropagationListener) {
        this.voc.watches(this.lits[0] ^ 1).remove(this);
        this.voc.watches(this.lits[1] ^ 1).remove(this);
    }

    public boolean simplify() {
        for (int i = 0; i < this.lits.length; ++i) {
            if (!this.voc.isSatisfied(this.lits[i])) continue;
            return true;
        }
        return false;
    }

    public boolean propagate(UnitPropagationListener unitPropagationListener, int n) {
        int n2;
        int[] nArray = this.lits;
        if (nArray[0] == (n ^ 1)) {
            nArray[0] = nArray[1];
            nArray[1] = n ^ 1;
        }
        int n3 = n ^ 1;
        for (n2 = 2; n2 < nArray.length; ++n2) {
            if (!this.voc.isFalsified(nArray[n2])) {
                nArray[1] = nArray[n2];
                nArray[n2] = n3;
                this.voc.watch(nArray[1] ^ 1, this);
                return true;
            }
            int n4 = n3;
            n3 = nArray[n2];
            nArray[n2] = n4;
        }
        for (n2 = 2; n2 < nArray.length; ++n2) {
            nArray[n2 - 1] = nArray[n2];
        }
        nArray[nArray.length - 1] = n3;
        this.voc.watch(n, this);
        return unitPropagationListener.enqueue(nArray[0], this);
    }

    public boolean locked() {
        return this.voc.getReason(this.lits[0]) == this;
    }

    public double getActivity() {
        return this.activity;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < this.lits.length; ++i) {
            stringBuffer.append(Lits.toString(this.lits[i]));
            stringBuffer.append("[");
            stringBuffer.append(this.voc.valueToString(this.lits[i]));
            stringBuffer.append("]");
            stringBuffer.append(" ");
        }
        return stringBuffer.toString();
    }

    public int get(int n) {
        return this.lits[n];
    }

    public void rescaleBy(double d) {
        this.activity *= d;
    }

    public int size() {
        return this.lits.length;
    }

    public void assertConstraint(UnitPropagationListener unitPropagationListener) {
        boolean bl = unitPropagationListener.enqueue(this.lits[0], this);
        if (!$assertionsDisabled && !bl) {
            throw new AssertionError();
        }
    }

    public ILits getVocabulary() {
        return this.voc;
    }

    public int[] getLits() {
        int[] nArray = new int[this.size()];
        System.arraycopy(this.lits, 0, nArray, 0, this.size());
        return nArray;
    }

    public boolean equals(Object object) {
        if (object == null) {
            return false;
        }
        try {
            WLClause wLClause = (WLClause)object;
            if (this.lits.length != wLClause.lits.length) {
                return false;
            }
            int[] nArray = this.lits;
            int n = nArray.length;
            for (int i = 0; i < n; ++i) {
                int n2 = nArray[i];
                boolean bl = false;
                int[] nArray2 = wLClause.lits;
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
        return (int)l / this.lits.length;
    }

    static {
        $assertionsDisabled = !WLClause.class.desiredAssertionStatus();
    }
}

