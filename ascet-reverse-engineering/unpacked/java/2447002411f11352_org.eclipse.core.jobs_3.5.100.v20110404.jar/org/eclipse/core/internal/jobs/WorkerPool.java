/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.core.internal.jobs;

import org.eclipse.core.internal.jobs.InternalJob;
import org.eclipse.core.internal.jobs.JobManager;
import org.eclipse.core.internal.jobs.ThreadJob;
import org.eclipse.core.internal.jobs.Worker;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.jobs.Job;

class WorkerPool {
    private static final int BEST_BEFORE = 60000;
    private static final int MIN_THREADS = 1;
    private int busyThreads = 0;
    protected final ClassLoader defaultContextLoader;
    private boolean isDaemon = false;
    private JobManager manager;
    private int numThreads = 0;
    private int sleepingThreads = 0;
    private Worker[] threads = new Worker[10];

    protected WorkerPool(JobManager manager) {
        this.manager = manager;
        this.defaultContextLoader = Thread.currentThread().getContextClassLoader();
    }

    private synchronized void add(Worker worker) {
        int size = this.threads.length;
        if (this.numThreads + 1 > size) {
            Worker[] newThreads = new Worker[2 * size];
            System.arraycopy(this.threads, 0, newThreads, 0, size);
            this.threads = newThreads;
        }
        this.threads[this.numThreads++] = worker;
    }

    private synchronized void decrementBusyThreads() {
        if (--this.busyThreads < 0) {
            if (JobManager.DEBUG) {
                Assert.isTrue((boolean)false, (String)Integer.toString(this.busyThreads));
            }
            this.busyThreads = 0;
        }
    }

    protected void endJob(InternalJob job, IStatus result) {
        try {
            if (job.getRule() != null && !(job instanceof ThreadJob)) {
                this.manager.getLockManager().removeLockCompletely(Thread.currentThread(), job.getRule());
            }
            this.manager.endJob(job, result, true);
            this.manager.implicitJobs.endJob(job);
        }
        finally {
            this.decrementBusyThreads();
        }
    }

    protected synchronized void endWorker(Worker worker) {
        if (this.remove(worker) && JobManager.DEBUG) {
            JobManager.debug("worker removed from pool: " + worker);
        }
    }

    private synchronized void incrementBusyThreads() {
        if (++this.busyThreads > this.numThreads) {
            if (JobManager.DEBUG) {
                Assert.isTrue((boolean)false, (String)(String.valueOf(Integer.toString(this.busyThreads)) + ',' + this.numThreads));
            }
            this.busyThreads = this.numThreads;
        }
    }

    protected synchronized void jobQueued() {
        if (this.sleepingThreads > 0) {
            this.notify();
            return;
        }
        if (this.busyThreads >= this.numThreads) {
            Worker worker = new Worker(this);
            worker.setDaemon(this.isDaemon);
            this.add(worker);
            if (JobManager.DEBUG) {
                JobManager.debug("worker added to pool: " + worker);
            }
            worker.start();
            return;
        }
    }

    private synchronized boolean remove(Worker worker) {
        int i = 0;
        while (i < this.threads.length) {
            if (this.threads[i] == worker) {
                System.arraycopy(this.threads, i + 1, this.threads, i, this.numThreads - i - 1);
                this.threads[--this.numThreads] = null;
                return true;
            }
            ++i;
        }
        return false;
    }

    void setDaemon(boolean value) {
        this.isDaemon = value;
    }

    protected synchronized void shutdown() {
        this.notifyAll();
    }

    private synchronized void sleep(long duration) {
        ++this.sleepingThreads;
        --this.busyThreads;
        if (JobManager.DEBUG) {
            JobManager.debug("worker sleeping for: " + duration + "ms");
        }
        try {
            try {
                this.wait(duration);
            }
            catch (InterruptedException interruptedException) {
                if (JobManager.DEBUG) {
                    JobManager.debug("worker interrupted while waiting... :-|");
                }
                --this.sleepingThreads;
                ++this.busyThreads;
            }
        }
        finally {
            --this.sleepingThreads;
            ++this.busyThreads;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected InternalJob startJob(Worker worker) {
        WorkerPool workerPool = this;
        synchronized (workerPool) {
            if (!this.manager.isActive()) {
                this.endWorker(worker);
                return null;
            }
            this.incrementBusyThreads();
        }
        Job job = null;
        try {
            job = this.manager.startJob();
            long idleStart = System.currentTimeMillis();
            while (this.manager.isActive() && job == null) {
                long hint = this.manager.sleepHint();
                if (hint > 0L) {
                    this.sleep(Math.min(hint, 60000L));
                }
                job = this.manager.startJob();
                WorkerPool workerPool2 = this;
                synchronized (workerPool2) {
                    if (job == null && System.currentTimeMillis() - idleStart > 60000L && this.numThreads - this.busyThreads > 1) {
                        this.endWorker(worker);
                        return null;
                    }
                }
                if (hint > 0L || job != null) continue;
                this.sleep(50L);
            }
            if (job == null) return job;
            if (job.getRule() != null && !(job instanceof ThreadJob)) {
                this.manager.getLockManager().addLockThread(Thread.currentThread(), job.getRule());
            }
            if (this.manager.sleepHint() > 0L) return job;
            this.jobQueued();
            return job;
        }
        finally {
            if (job == null) {
                this.decrementBusyThreads();
            }
        }
    }
}

