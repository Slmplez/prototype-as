/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.constraints.cnf;

import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.UnitPropagationListener;
import org.sat4j.specs.IVecInt;

public class UnitClauses
implements Constr {
    protected final int[] literals;

    public UnitClauses(IVecInt iVecInt) {
        this.literals = new int[iVecInt.size()];
        iVecInt.copyTo(this.literals);
    }

    public void assertConstraint(UnitPropagationListener unitPropagationListener) {
        int[] nArray = this.literals;
        int n = nArray.length;
        for (int i = 0; i < n; ++i) {
            int n2 = nArray[i];
            unitPropagationListener.enqueue(n2, this);
        }
    }

    public void calcReason(int n, IVecInt iVecInt) {
        throw new UnsupportedOperationException();
    }

    public double getActivity() {
        throw new UnsupportedOperationException();
    }

    public void incActivity(double d) {
    }

    public boolean locked() {
        throw new UnsupportedOperationException();
    }

    public void register() {
        throw new UnsupportedOperationException();
    }

    public void remove(UnitPropagationListener unitPropagationListener) {
        for (int i = this.literals.length - 1; i >= 0; --i) {
            unitPropagationListener.unset(this.literals[i]);
        }
    }

    public void rescaleBy(double d) {
        throw new UnsupportedOperationException();
    }

    public void setLearnt() {
        throw new UnsupportedOperationException();
    }

    public boolean simplify() {
        throw new UnsupportedOperationException();
    }

    public boolean propagate(UnitPropagationListener unitPropagationListener, int n) {
        throw new UnsupportedOperationException();
    }

    public int get(int n) {
        throw new UnsupportedOperationException();
    }

    public boolean learnt() {
        throw new UnsupportedOperationException();
    }

    public int size() {
        throw new UnsupportedOperationException();
    }

    public void forwardActivity(double d) {
    }
}

