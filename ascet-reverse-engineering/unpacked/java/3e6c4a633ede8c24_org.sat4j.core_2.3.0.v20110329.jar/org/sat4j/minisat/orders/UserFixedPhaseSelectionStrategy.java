/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.orders;

import org.sat4j.minisat.orders.AbstractPhaserecordingSelectionStrategy;

public final class UserFixedPhaseSelectionStrategy
extends AbstractPhaserecordingSelectionStrategy {
    private static final long serialVersionUID = 1L;

    public void assignLiteral(int n) {
    }

    public void updateVar(int n) {
    }

    public String toString() {
        return "Fixed selection strategy.";
    }

    public void updateVarAtDecisionLevel(int n) {
    }

    public /* synthetic */ int select(int n) {
        return super.select(n);
    }

    public /* synthetic */ void init(int n, int n2) {
        super.init(n, n2);
    }

    public /* synthetic */ void init(int n) {
        super.init(n);
    }
}

