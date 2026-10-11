/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.core;

import java.io.Serializable;
import java.util.Iterator;
import org.sat4j.core.Vec;
import org.sat4j.minisat.core.ConflictTimer;
import org.sat4j.specs.IVec;

class ConflictTimerContainer
implements Serializable,
ConflictTimer {
    private static final long serialVersionUID = 1L;
    private final IVec<ConflictTimer> timers = new Vec<ConflictTimer>();

    ConflictTimerContainer() {
    }

    ConflictTimerContainer add(ConflictTimer conflictTimer) {
        this.timers.push(conflictTimer);
        return this;
    }

    public void reset() {
        Iterator<ConflictTimer> iterator = this.timers.iterator();
        while (iterator.hasNext()) {
            iterator.next().reset();
        }
    }

    public void newConflict() {
        Iterator<ConflictTimer> iterator = this.timers.iterator();
        while (iterator.hasNext()) {
            iterator.next().newConflict();
        }
    }
}

