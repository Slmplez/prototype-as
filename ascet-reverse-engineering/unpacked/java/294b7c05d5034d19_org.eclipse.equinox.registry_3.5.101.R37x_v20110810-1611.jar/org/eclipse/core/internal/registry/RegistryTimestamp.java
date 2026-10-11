/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

public final class RegistryTimestamp {
    private long aggregateTimestamp;
    private boolean modified;

    public RegistryTimestamp() {
        this.reset();
    }

    public long getContentsTimestamp() {
        return this.aggregateTimestamp;
    }

    public void set(long timestamp) {
        this.aggregateTimestamp = timestamp;
        this.modified = false;
    }

    public void reset() {
        this.aggregateTimestamp = 0L;
        this.modified = false;
    }

    public boolean isModifed() {
        return this.modified;
    }

    public void add(long timestamp) {
        this.aggregateTimestamp ^= timestamp;
        this.modified = true;
    }

    public void remove(long timestamp) {
        this.aggregateTimestamp ^= timestamp;
        this.modified = true;
    }
}

