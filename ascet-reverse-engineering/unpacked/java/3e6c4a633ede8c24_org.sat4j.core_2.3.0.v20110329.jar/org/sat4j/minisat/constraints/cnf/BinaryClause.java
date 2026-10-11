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

public abstract class BinaryClause
implements Constr,
Serializable {
    private static final long serialVersionUID = 1L;
    protected double activity;
    private final ILits voc;
    protected int head;
    protected int tail;
    static final /* synthetic */ boolean $assertionsDisabled;

    public BinaryClause(IVecInt iVecInt, ILits iLits) {
        if (!$assertionsDisabled && iVecInt.size() != 2) {
            throw new AssertionError();
        }
        this.head = iVecInt.get(0);
        this.tail = iVecInt.get(1);
        this.voc = iLits;
        this.activity = 0.0;
    }

    public void calcReason(int n, IVecInt iVecInt) {
        if (this.voc.isFalsified(this.head)) {
            iVecInt.push(LiteralsUtils.neg(this.head));
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
        return this.voc.isSatisfied(this.head) || this.voc.isSatisfied(this.tail);
    }

    public boolean propagate(UnitPropagationListener unitPropagationListener, int n) {
        this.voc.watch(n, this);
        if (this.head == LiteralsUtils.neg(n)) {
            return unitPropagationListener.enqueue(this.tail, this);
        }
        if (!$assertionsDisabled && this.tail != LiteralsUtils.neg(n)) {
            throw new AssertionError();
        }
        return unitPropagationListener.enqueue(this.head, this);
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
        if (!$assertionsDisabled && n != 1) {
            throw new AssertionError();
        }
        return this.tail;
    }

    public void rescaleBy(double d) {
        this.activity *= d;
    }

    public int size() {
        return 2;
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
        int[] nArray = new int[]{this.head, this.tail};
        return nArray;
    }

    public boolean equals(Object object) {
        if (object == null) {
            return false;
        }
        try {
            BinaryClause binaryClause = (BinaryClause)object;
            return binaryClause.head == this.head && binaryClause.tail == this.tail;
        }
        catch (ClassCastException classCastException) {
            return false;
        }
    }

    public int hashCode() {
        long l = this.head + this.tail;
        return (int)l / 2;
    }

    public void register() {
        this.voc.watch(LiteralsUtils.neg(this.head), this);
        this.voc.watch(LiteralsUtils.neg(this.tail), this);
    }

    static {
        $assertionsDisabled = !BinaryClause.class.desiredAssertionStatus();
    }
}

