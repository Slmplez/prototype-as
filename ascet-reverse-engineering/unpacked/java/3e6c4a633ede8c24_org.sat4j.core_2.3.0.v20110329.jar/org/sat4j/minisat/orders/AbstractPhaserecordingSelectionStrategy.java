/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.orders;

import org.sat4j.core.LiteralsUtils;
import org.sat4j.minisat.core.IPhaseSelectionStrategy;

abstract class AbstractPhaserecordingSelectionStrategy
implements IPhaseSelectionStrategy {
    private static final long serialVersionUID = 1L;
    protected int[] phase;

    AbstractPhaserecordingSelectionStrategy() {
    }

    public void init(int n) {
        if (this.phase == null || this.phase.length < n) {
            this.phase = new int[n];
        }
        for (int i = 1; i < n; ++i) {
            this.phase[i] = LiteralsUtils.negLit(i);
        }
    }

    public void init(int n, int n2) {
        this.phase[n] = n2;
    }

    public int select(int n) {
        return this.phase[n];
    }
}

