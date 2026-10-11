/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.constraints.cnf;

import java.io.Serializable;
import org.sat4j.core.LiteralsUtils;
import org.sat4j.minisat.constraints.cnf.Lits;
import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.ILits;
import org.sat4j.minisat.core.UnitPropagationListener;
import org.sat4j.specs.IVecInt;

public abstract class HTClause
implements Constr,
Serializable {
    private static final long serialVersionUID = 1L;
    protected double activity;
    protected final int[] middleLits;
    protected final ILits voc;
    protected int head;
    protected int tail;
    static final /* synthetic */ boolean $assertionsDisabled;

    public HTClause(IVecInt iVecInt, ILits iLits) {
        if (!$assertionsDisabled && iVecInt.size() <= 1) {
            throw new AssertionError();
        }
        this.head = iVecInt.get(0);
        this.tail = iVecInt.last();
        int n = iVecInt.size() - 2;
        if (!$assertionsDisabled && n <= 0) {
            throw new AssertionError();
        }
        this.middleLits = new int[n];
        System.arraycopy(iVecInt.toArray(), 1, this.middleLits, 0, n);
        iVecInt.clear();
        if (!$assertionsDisabled && iVecInt.size() != 0) {
            throw new AssertionError();
        }
        this.voc = iLits;
        this.activity = 0.0;
    }

    public void calcReason(int n, IVecInt iVecInt) {
        if (this.voc.isFalsified(this.head)) {
            iVecInt.push(LiteralsUtils.neg(this.head));
        }
        int[] nArray = this.middleLits;
        for (int i = 0; i < nArray.length; ++i) {
            if (!this.voc.isFalsified(nArray[i])) continue;
            iVecInt.push(LiteralsUtils.neg(nArray[i]));
        }
        if (this.voc.isFalsified(this.tail)) {
            iVecInt.push(LiteralsUtils.neg(this.tail));
        }
    }

    public void remove(UnitPropagationListener unitPropagationListener) {
        this.voc.watches(LiteralsUtils.neg(this.head)).remove(this);
        this.voc.watches(LiteralsUtils.neg(this.tail)).remove(this);
    }

    public boolean simplify() {
        if (this.voc.isSatisfied(this.head) || this.voc.isSatisfied(this.tail)) {
            return true;
        }
        for (int i = 0; i < this.middleLits.length; ++i) {
            if (!this.voc.isSatisfied(this.middleLits[i])) continue;
            return true;
        }
        return false;
    }

    public boolean propagate(UnitPropagationListener unitPropagationListener, int n) {
        int n2;
        if (this.head == LiteralsUtils.neg(n)) {
            int n3;
            int[] nArray = this.middleLits;
            for (n3 = 0; n3 < nArray.length && this.voc.isFalsified(nArray[n3]); ++n3) {
            }
            if (!$assertionsDisabled && n3 > nArray.length) {
                throw new AssertionError();
            }
            if (n3 == nArray.length) {
                this.voc.watch(n, this);
                return unitPropagationListener.enqueue(this.tail, this);
            }
            this.head = nArray[n3];
            nArray[n3] = LiteralsUtils.neg(n);
            this.voc.watch(LiteralsUtils.neg(this.head), this);
            return true;
        }
        if (!$assertionsDisabled && this.tail != LiteralsUtils.neg(n)) {
            throw new AssertionError();
        }
        int[] nArray = this.middleLits;
        for (n2 = nArray.length - 1; n2 >= 0 && this.voc.isFalsified(nArray[n2]); --n2) {
        }
        if (!$assertionsDisabled && -1 > n2) {
            throw new AssertionError();
        }
        if (-1 == n2) {
            this.voc.watch(n, this);
            return unitPropagationListener.enqueue(this.head, this);
        }
        this.tail = nArray[n2];
        nArray[n2] = LiteralsUtils.neg(n);
        this.voc.watch(LiteralsUtils.neg(this.tail), this);
        return true;
    }

    public boolean locked() {
        return this.voc.getReason(this.head) == this || this.voc.getReason(this.tail) == this;
    }

    public double getActivity() {
        return this.activity;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(Lits.toString(this.head));
        stringBuffer.append("[");
        stringBuffer.append(this.voc.valueToString(this.head));
        stringBuffer.append("]");
        stringBuffer.append(" ");
        for (int i = 0; i < this.middleLits.length; ++i) {
            stringBuffer.append(Lits.toString(this.middleLits[i]));
            stringBuffer.append("[");
            stringBuffer.append(this.voc.valueToString(this.middleLits[i]));
            stringBuffer.append("]");
            stringBuffer.append(" ");
        }
        stringBuffer.append(Lits.toString(this.tail));
        stringBuffer.append("[");
        stringBuffer.append(this.voc.valueToString(this.tail));
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

    public int get(int n) {
        if (n == 0) {
            return this.head;
        }
        if (n == this.middleLits.length + 1) {
            return this.tail;
        }
        return this.middleLits[n - 1];
    }

    public void rescaleBy(double d) {
        this.activity *= d;
    }

    public int size() {
        return this.middleLits.length + 2;
    }

    public void assertConstraint(UnitPropagationListener unitPropagationListener) {
        if (!$assertionsDisabled && !this.voc.isUnassigned(this.head)) {
            throw new AssertionError();
        }
        boolean bl = unitPropagationListener.enqueue(this.head, this);
        if (!$assertionsDisabled && !bl) {
            throw new AssertionError();
        }
    }

    public ILits getVocabulary() {
        return this.voc;
    }

    public int[] getLits() {
        int[] nArray = new int[this.size()];
        System.arraycopy(this.middleLits, 0, nArray, 1, this.middleLits.length);
        nArray[0] = this.head;
        nArray[nArray.length - 1] = this.tail;
        return nArray;
    }

    public boolean equals(Object object) {
        if (object == null) {
            return false;
        }
        try {
            HTClause hTClause = (HTClause)object;
            if (hTClause.head != this.head || hTClause.tail != this.tail) {
                return false;
            }
            if (this.middleLits.length != hTClause.middleLits.length) {
                return false;
            }
            int[] nArray = this.middleLits;
            int n = nArray.length;
            for (int i = 0; i < n; ++i) {
                int n2 = nArray[i];
                boolean bl = false;
                int[] nArray2 = hTClause.middleLits;
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
        long l = this.head + this.tail;
        int[] nArray = this.middleLits;
        int n = nArray.length;
        for (int i = 0; i < n; ++i) {
            int n2 = nArray[i];
            l += (long)n2;
        }
        return (int)l / this.middleLits.length;
    }

    static {
        $assertionsDisabled = !HTClause.class.desiredAssertionStatus();
    }
}

