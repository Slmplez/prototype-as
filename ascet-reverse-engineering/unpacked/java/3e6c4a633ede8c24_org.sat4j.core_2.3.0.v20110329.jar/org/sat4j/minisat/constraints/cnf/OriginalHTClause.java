/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.constraints.cnf;

import org.sat4j.core.LiteralsUtils;
import org.sat4j.minisat.constraints.cnf.HTClause;
import org.sat4j.minisat.core.ILits;
import org.sat4j.minisat.core.UnitPropagationListener;
import org.sat4j.specs.IVecInt;

public class OriginalHTClause
extends HTClause {
    private static final long serialVersionUID = 1L;

    public OriginalHTClause(IVecInt iVecInt, ILits iLits) {
        super(iVecInt, iLits);
    }

    public void register() {
        this.voc.watch(LiteralsUtils.neg(this.head), this);
        this.voc.watch(LiteralsUtils.neg(this.tail), this);
    }

    public boolean learnt() {
        return false;
    }

    public void setLearnt() {
    }

    public static OriginalHTClause brandNewClause(UnitPropagationListener unitPropagationListener, ILits iLits, IVecInt iVecInt) {
        OriginalHTClause originalHTClause = new OriginalHTClause(iVecInt, iLits);
        originalHTClause.register();
        return originalHTClause;
    }

    public void forwardActivity(double d) {
        this.activity += d;
    }

    public void incActivity(double d) {
    }
}

