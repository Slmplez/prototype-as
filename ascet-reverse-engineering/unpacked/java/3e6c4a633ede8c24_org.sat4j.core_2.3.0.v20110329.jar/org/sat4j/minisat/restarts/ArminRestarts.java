/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.restarts;

import org.sat4j.minisat.core.RestartStrategy;
import org.sat4j.minisat.core.SearchParams;

public final class ArminRestarts
implements RestartStrategy {
    private static final long serialVersionUID = 1L;
    private double inner;
    private double outer;
    private long conflicts;
    private SearchParams params;

    public void init(SearchParams searchParams) {
        this.params = searchParams;
        this.inner = searchParams.getInitConflictBound();
        this.outer = searchParams.getInitConflictBound();
        this.conflicts = Math.round(this.inner);
    }

    public long nextRestartNumberOfConflict() {
        return this.conflicts;
    }

    public void onRestart() {
        if (this.inner >= this.outer) {
            this.outer *= this.params.getConflictBoundIncFactor();
            this.inner = this.params.getInitConflictBound();
        } else {
            this.inner *= this.params.getConflictBoundIncFactor();
        }
        this.conflicts = Math.round(this.inner);
    }

    public String toString() {
        return "Armin Biere (Picosat) restarts strategy";
    }
}

