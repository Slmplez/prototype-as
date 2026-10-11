/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.orders;

import org.sat4j.minisat.orders.VarOrderHeap;

public final class PureOrder
extends VarOrderHeap {
    private static final long serialVersionUID = 1L;
    private int period;
    private int cpt;

    public PureOrder() {
        this(20);
    }

    public PureOrder(int n) {
        this.setPeriod(n);
    }

    public final void setPeriod(int n) {
        this.cpt = this.period = n;
    }

    public int getPeriod() {
        return this.period;
    }

    public int select() {
        if (this.cpt < this.period) {
            ++this.cpt;
        } else {
            this.cpt = 0;
            int n = 2 * this.lits.nVars();
            for (int i = 2; i <= n; ++i) {
                if (!this.lits.isUnassigned(i) || this.lits.watches(i).size() <= 0 || this.lits.watches(i ^ 1).size() != 0) continue;
                return i;
            }
        }
        return super.select();
    }

    public String toString() {
        return "tries to first branch on a single phase watched unassigned variable (pure literal if using a CB data structure) else VSIDS from MiniSAT";
    }
}

