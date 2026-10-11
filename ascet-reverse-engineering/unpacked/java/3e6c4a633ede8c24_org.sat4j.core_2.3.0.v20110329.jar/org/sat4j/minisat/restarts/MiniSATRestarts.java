/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.restarts;

import org.sat4j.minisat.core.RestartStrategy;
import org.sat4j.minisat.core.SearchParams;

public final class MiniSATRestarts
implements RestartStrategy {
    private static final long serialVersionUID = 1L;
    private double nofConflicts;
    private SearchParams params;

    public void init(SearchParams searchParams) {
        this.params = searchParams;
        this.nofConflicts = searchParams.getInitConflictBound();
    }

    public long nextRestartNumberOfConflict() {
        return Math.round(this.nofConflicts);
    }

    public void onRestart() {
        this.nofConflicts *= this.params.getConflictBoundIncFactor();
    }

    public String toString() {
        return "MiniSAT restarts strategy";
    }
}

