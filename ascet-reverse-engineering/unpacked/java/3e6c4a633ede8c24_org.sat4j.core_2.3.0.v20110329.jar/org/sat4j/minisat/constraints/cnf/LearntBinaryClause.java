/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.constraints.cnf;

import org.sat4j.minisat.constraints.cnf.BinaryClause;
import org.sat4j.minisat.core.ILits;
import org.sat4j.specs.IVecInt;

public class LearntBinaryClause
extends BinaryClause {
    private static final long serialVersionUID = 1L;

    public LearntBinaryClause(IVecInt iVecInt, ILits iLits) {
        super(iVecInt, iLits);
    }

    public void setLearnt() {
    }

    public boolean learnt() {
        return true;
    }

    public void forwardActivity(double d) {
    }

    public void incActivity(double d) {
        this.activity += d;
    }
}

