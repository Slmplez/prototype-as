/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.constraints.cnf;

import org.sat4j.minisat.constraints.cnf.WLClause;
import org.sat4j.minisat.core.ILits;
import org.sat4j.specs.IVecInt;

public final class LearntWLClause
extends WLClause {
    private static final long serialVersionUID = 1L;
    static final /* synthetic */ boolean $assertionsDisabled;

    public LearntWLClause(IVecInt iVecInt, ILits iLits) {
        super(iVecInt, iLits);
    }

    public void register() {
        int n;
        if (!$assertionsDisabled && this.lits.length <= 1) {
            throw new AssertionError();
        }
        int n2 = 1;
        int n3 = this.voc.getLevel(this.lits[1]);
        for (n = 2; n < this.lits.length; ++n) {
            int n4 = this.voc.getLevel(this.lits[n]);
            if (n4 <= n3) continue;
            n2 = n;
            n3 = n4;
        }
        n = this.lits[1];
        this.lits[1] = this.lits[n2];
        this.lits[n2] = n;
        this.voc.watch(this.lits[0] ^ 1, this);
        this.voc.watch(this.lits[1] ^ 1, this);
    }

    public boolean learnt() {
        return true;
    }

    public void setLearnt() {
    }

    public void forwardActivity(double d) {
    }

    public void incActivity(double d) {
        this.activity += d;
    }

    static {
        $assertionsDisabled = !LearntWLClause.class.desiredAssertionStatus();
    }
}

