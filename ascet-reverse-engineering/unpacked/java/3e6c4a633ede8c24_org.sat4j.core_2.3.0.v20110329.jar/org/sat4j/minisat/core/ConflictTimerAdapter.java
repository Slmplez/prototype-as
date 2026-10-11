/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.core;

import java.io.Serializable;
import org.sat4j.minisat.core.ConflictTimer;

abstract class ConflictTimerAdapter
implements Serializable,
ConflictTimer {
    private static final long serialVersionUID = 1L;
    private int counter;
    private final int bound;

    ConflictTimerAdapter(int n) {
        this.bound = n;
        this.counter = 0;
    }

    public void reset() {
        this.counter = 0;
    }

    public void newConflict() {
        ++this.counter;
        if (this.counter == this.bound) {
            this.run();
            this.counter = 0;
        }
    }

    abstract void run();

    public int bound() {
        return this.bound;
    }
}

