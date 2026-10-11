/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.jobs;

public class Counter {
    private long value = 0L;

    public synchronized long increment() {
        return this.value++;
    }
}

