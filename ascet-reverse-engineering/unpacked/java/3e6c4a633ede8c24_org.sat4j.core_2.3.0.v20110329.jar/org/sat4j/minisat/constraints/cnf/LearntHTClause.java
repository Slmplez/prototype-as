/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.constraints.cnf;

import org.sat4j.core.LiteralsUtils;
import org.sat4j.minisat.constraints.cnf.HTClause;
import org.sat4j.minisat.core.ILits;
import org.sat4j.specs.IVecInt;

public class LearntHTClause
extends HTClause {
    private static final long serialVersionUID = 1L;

    public LearntHTClause(IVecInt iVecInt, ILits iLits) {
        super(iVecInt, iLits);
    }

    public void register() {
        if (this.middleLits.length > 0) {
            int n;
            int n2 = 0;
            int n3 = this.voc.getLevel(this.middleLits[0]);
            for (n = 1; n < this.middleLits.length; ++n) {
                int n4 = this.voc.getLevel(this.middleLits[n]);
                if (n4 <= n3) continue;
                n2 = n;
                n3 = n4;
            }
            if (n3 > this.voc.getLevel(this.tail)) {
                n = this.tail;
                this.tail = this.middleLits[n2];
                this.middleLits[n2] = n;
            }
        }
        this.voc.watch(LiteralsUtils.neg(this.head), this);
        this.voc.watch(LiteralsUtils.neg(this.tail), this);
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
}

