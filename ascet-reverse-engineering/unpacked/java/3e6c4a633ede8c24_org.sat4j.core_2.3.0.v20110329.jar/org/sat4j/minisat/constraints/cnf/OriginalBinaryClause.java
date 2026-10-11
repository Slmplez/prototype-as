/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.constraints.cnf;

import org.sat4j.minisat.constraints.cnf.BinaryClause;
import org.sat4j.minisat.core.ILits;
import org.sat4j.minisat.core.UnitPropagationListener;
import org.sat4j.specs.IVecInt;

public class OriginalBinaryClause
extends BinaryClause {
    private static final long serialVersionUID = 1L;

    public OriginalBinaryClause(IVecInt iVecInt, ILits iLits) {
        super(iVecInt, iLits);
    }

    public void setLearnt() {
    }

    public boolean learnt() {
        return false;
    }

    public static OriginalBinaryClause brandNewClause(UnitPropagationListener unitPropagationListener, ILits iLits, IVecInt iVecInt) {
        OriginalBinaryClause originalBinaryClause = new OriginalBinaryClause(iVecInt, iLits);
        originalBinaryClause.register();
        return originalBinaryClause;
    }

    public void forwardActivity(double d) {
        this.activity += d;
    }

    public void incActivity(double d) {
    }
}

