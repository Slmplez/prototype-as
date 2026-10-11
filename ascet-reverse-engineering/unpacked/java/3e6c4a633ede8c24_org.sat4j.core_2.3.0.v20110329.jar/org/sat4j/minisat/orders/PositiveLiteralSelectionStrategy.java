/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.orders;

import org.sat4j.core.LiteralsUtils;
import org.sat4j.minisat.core.IPhaseSelectionStrategy;

public final class PositiveLiteralSelectionStrategy
implements IPhaseSelectionStrategy {
    private static final long serialVersionUID = 1L;

    public void assignLiteral(int n) {
    }

    public void init(int n) {
    }

    public void init(int n, int n2) {
    }

    public int select(int n) {
        return LiteralsUtils.posLit(n);
    }

    public void updateVar(int n) {
    }

    public String toString() {
        return "positive phase selection";
    }

    public void updateVarAtDecisionLevel(int n) {
    }
}

