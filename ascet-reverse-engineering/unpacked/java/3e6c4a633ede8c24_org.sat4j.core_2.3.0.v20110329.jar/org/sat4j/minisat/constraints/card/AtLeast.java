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

public class AtLeast
implements Constr,
Undoable,
Serializable {
    private static final long serialVersionUID = 1L;
    protected int maxUnsatisfied;
    private int counter;
    protected final int[] lits;
    protected final ILits voc;

    protected AtLeast(ILits iLits, IVecInt iVecInt, int n) {
        this.maxUnsatisfied = iVecInt.size() - n;
        this.voc = iLits;
        this.counter = 0;
        this.lits = new int[iVecInt.size()];
        iVecInt.moveTo(this.lits);
        int[] nArray = this.lits;
        int n2 = nArray.length;
        for (int i = 0; i < n2; ++i) {
            int n3 = nArray[i];
            iLits.watch(n3 ^ 1, this);
        }
    }

    protected static int niceParameters(UnitPropagationListener unitPropagationListener, ILits iLits, IVecInt iVecInt, int n) throws ContradictionException {
        if (iVecInt.size() < n) {
            throw new ContradictionException();
        }
        int n2 = n;
        int n3 = 0;
        while (n3 < iVecInt.size()) {
            if (iLits.isUnassigned(iVecInt.get(n3))) {
                ++n3;
                continue;
            }
            if (iLits.isSatisfied(iVecInt.get(n3))) {
                --n2;
            }
            iVecInt.delete(n3);
        }
        iVecInt.sortUnique();
        if (iVecInt.size() == n2) {
            for (n3 = 0; n3 < iVecInt.size(); ++n3) {
                if (unitPropagationListener.enqueue(iVecInt.get(n3))) continue;
                throw new ContradictionException();
            }
            return 0;
        }
        if (iVecInt.size() < n2) {
            throw new ContradictionException();
        }
        return n2;
    }

    public static Constr atLeastNew(UnitPropagationListener unitPropagationListener, ILits iLits, IVecInt iVecInt, int n) throws ContradictionException {
        int n2 = AtLeast.niceParameters(unitPropagationListener, iLits, iVecInt, n);
        if (n2 == 0) {
            return new UnitClauses(iVecInt);
        }
        return new AtLeast(iLits, iVecInt, n2);
    }

    public void remove(UnitPropagationListener unitPropagationListener) {
        int[] nArray = this.lits;
        int n = nArray.length;
        for (int i = 0; i < n; ++i) {
            int n2 = nArray[i];
            this.voc.watches(n2 ^ 1).remove(this);
        }
    }

    public boolean propagate(UnitPropagationListener unitPropagationListener, int n) {
        this.voc.watch(n, this);
        if (this.counter == this.maxUnsatisfied) {
            return false;
        }
        ++this.counter;
        this.voc.undos(n).push(this);
        if (this.counter == this.maxUnsatisfied) {
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

    public boolean simplify() {
        return false;
    }

    public void undo(int n) {
        --this.counter;
    }

    public void calcReason(int n, IVecInt iVecInt) {
        int n2 = n == -1 ? -1 : 0;
        int[] nArray = this.lits;
        int n3 = nArray.length;
        for (int i = 0; i < n3; ++i) {
            int n4 = nArray[i];
            if (!this.voc.isFalsified(n4)) continue;
            iVecInt.push(n4 ^ 1);
            if (++n2 != this.maxUnsatisfied) continue;
            return;
        }
    }

    public boolean learnt() {
        return false;
    }

    public double getActivity() {
        return 0.0;
    }

    public void incActivity(double d) {
    }

    public boolean locked() {
        return true;
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

    public void rescaleBy(double d) {
        throw new UnsupportedOperationException();
    }

    public void assertConstraint(UnitPropagationListener unitPropagationListener) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Card (" + this.lits.length + ") : ");
        for (int i = 0; i < this.lits.length; ++i) {
            stringBuffer.append(" + ");
            stringBuffer.append(Lits.toString(this.lits[i]));
            stringBuffer.append("[");
            stringBuffer.append(this.voc.valueToString(this.lits[i]));
            stringBuffer.append("@");
            stringBuffer.append(this.voc.getLevel(this.lits[i]));
            stringBuffer.append("]");
            stringBuffer.append(" ");
            stringBuffer.append(" ");
        }
        stringBuffer.append(">= ");
        stringBuffer.append(this.size() - this.maxUnsatisfied);
        return stringBuffer.toString();
    }

    public void forwardActivity(double d) {
    }
}

