/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.constraints.cnf;

import org.sat4j.core.LiteralsUtils;
import org.sat4j.minisat.constraints.cnf.Lits;
import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.UnitPropagationListener;
import org.sat4j.specs.IVecInt;

public class UnitClause
implements Constr {
    protected final int literal;

    public UnitClause(int n) {
        this.literal = n;
    }

    public void assertConstraint(UnitPropagationListener unitPropagationListener) {
        unitPropagationListener.enqueue(this.literal, this);
    }

    public void calcReason(int n, IVecInt iVecInt) {
        if (n == -1) {
            iVecInt.push(LiteralsUtils.neg(n));
        }
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
        unitPropagationListener.unset(this.literal);
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
        if (n > 0) {
            throw new IllegalArgumentException();
        }
        return this.literal;
    }

    public boolean learnt() {
        throw new UnsupportedOperationException();
    }

    public int size() {
        return 1;
    }

    public void forwardActivity(double d) {
    }

    public String toString() {
        return Lits.toString(this.literal);
    }
}

