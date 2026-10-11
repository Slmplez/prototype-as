/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.jobs;

import org.eclipse.core.runtime.jobs.ISchedulingRule;

class Deadlock {
    private Thread[] threads;
    private Thread candidate;
    private ISchedulingRule[] locks;

    public Deadlock(Thread[] threads, ISchedulingRule[] locks, Thread candidate) {
        this.threads = threads;
        this.locks = locks;
        this.candidate = candidate;
    }

    public ISchedulingRule[] getLocks() {
        return this.locks;
    }

    public Thread getCandidate() {
        return this.candidate;
    }

    public Thread[] getThreads() {
        return this.threads;
    }
}

