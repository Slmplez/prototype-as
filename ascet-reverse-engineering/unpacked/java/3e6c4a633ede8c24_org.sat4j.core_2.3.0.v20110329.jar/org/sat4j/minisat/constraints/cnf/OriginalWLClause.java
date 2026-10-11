/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.constraints.cnf;

import org.sat4j.minisat.constraints.cnf.WLClause;
import org.sat4j.minisat.core.ILits;
import org.sat4j.minisat.core.UnitPropagationListener;
import org.sat4j.specs.IVecInt;

public final class OriginalWLClause
extends WLClause {
    private static final long serialVersionUID = 1L;
    static final /* synthetic */ boolean $assertionsDisabled;

    public OriginalWLClause(IVecInt iVecInt, ILits iLits) {
        super(iVecInt, iLits);
    }

    public void register() {
        if (!$assertionsDisabled && this.lits.length <= 1) {
            throw new AssertionError();
        }
        this.voc.watch(this.lits[0] ^ 1, this);
        this.voc.watch(this.lits[1] ^ 1, this);
    }

    public boolean learnt() {
        return false;
    }

    public void setLearnt() {
    }

    public static OriginalWLClause brandNewClause(UnitPropagationListener unitPropagationListener, ILits iLits, IVecInt iVecInt) {
        OriginalWLClause originalWLClause = new OriginalWLClause(iVecInt, iLits);
        originalWLClause.register();
        return originalWLClause;
    }

    public void forwardActivity(double d) {
        this.activity += d;
    }

    public void incActivity(double d) {
    }

    static {
        $assertionsDisabled = !OriginalWLClause.class.desiredAssertionStatus();
    }
}

