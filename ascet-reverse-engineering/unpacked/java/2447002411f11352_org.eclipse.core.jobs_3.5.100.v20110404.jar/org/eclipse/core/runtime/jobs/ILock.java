/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.jobs;

public interface ILock {
    public boolean acquire(long var1) throws InterruptedException;

    public void acquire();

    public int getDepth();

    public void release();
}

