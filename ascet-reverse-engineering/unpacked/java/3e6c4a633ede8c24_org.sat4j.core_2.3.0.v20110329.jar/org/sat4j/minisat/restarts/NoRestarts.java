/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.restarts;

import org.sat4j.minisat.core.RestartStrategy;
import org.sat4j.minisat.core.SearchParams;

public final class NoRestarts
implements RestartStrategy {
    private static final long serialVersionUID = 1L;

    public void init(SearchParams searchParams) {
    }

    public long nextRestartNumberOfConflict() {
        return Long.MAX_VALUE;
    }

    public void onRestart() {
    }
}

