/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.runtime.RuntimeLog
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.internal.jobs;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.internal.jobs.InternalJob;
import org.eclipse.core.internal.jobs.JobManager;
import org.eclipse.core.internal.jobs.ThreadJob;
import org.eclipse.core.internal.runtime.RuntimeLog;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.Job;

class ImplicitJobs {
    private ThreadJob jobCache = null;
    protected JobManager manager;
    private final Set suspendedRules = new HashSet(20);
    private final Map threadJobs = new HashMap(20);

    ImplicitJobs(JobManager manager) {
        this.manager = manager;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void begin(ISchedulingRule rule, IProgressMonitor monitor, boolean suspend) {
        ImplicitJobs implicitJobs;
        ThreadJob threadJob;
        if (JobManager.DEBUG_BEGIN_END) {
            JobManager.debug("Begin rule: " + rule);
        }
        Thread currentThread = Thread.currentThread();
        ImplicitJobs implicitJobs2 = this;
        synchronized (implicitJobs2) {
            threadJob = (ThreadJob)this.threadJobs.get(currentThread);
            if (threadJob != null) {
                threadJob.push(rule);
                return;
            }
            if (rule == null) {
                return;
            }
            Job realJob = this.manager.currentJob();
            if (realJob != null && realJob.getRule() != null) {
                threadJob = this.newThreadJob(realJob.getRule());
            } else {
                threadJob = this.newThreadJob(rule);
                threadJob.acquireRule = true;
            }
            if (this.isSuspended(rule)) {
                threadJob.acquireRule = false;
            }
            threadJob.setRealJob(realJob);
            threadJob.setThread(currentThread);
        }
        try {
            threadJob.push(rule);
            if (threadJob.acquireRule) {
                if (this.manager.runNow(threadJob, false) == null) {
                    this.manager.getLockManager().addLockThread(Thread.currentThread(), rule);
                } else {
                    threadJob = ThreadJob.joinRun(threadJob, monitor);
                }
            }
        }
        catch (Throwable throwable) {
            implicitJobs = this;
            synchronized (implicitJobs) {
                this.threadJobs.put(currentThread, threadJob);
                if (suspend) {
                    this.suspendedRules.add(rule);
                }
            }
            throw throwable;
        }
        implicitJobs = this;
        synchronized (implicitJobs) {
            this.threadJobs.put(currentThread, threadJob);
            if (suspend) {
                this.suspendedRules.add(rule);
            }
        }
    }

    synchronized void end(ISchedulingRule rule, boolean resume) {
        ThreadJob threadJob;
        if (JobManager.DEBUG_BEGIN_END) {
            JobManager.debug("End rule: " + rule);
        }
        if ((threadJob = (ThreadJob)this.threadJobs.get(Thread.currentThread())) == null) {
            Assert.isLegal((rule == null ? 1 : 0) != 0, (String)("endRule without matching beginRule: " + rule));
        } else if (threadJob.pop(rule)) {
            this.endThreadJob(threadJob, resume);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void endJob(InternalJob lastJob) {
        Status error;
        Thread currentThread = Thread.currentThread();
        ImplicitJobs implicitJobs = this;
        synchronized (implicitJobs) {
            ThreadJob threadJob = (ThreadJob)this.threadJobs.get(currentThread);
            if (threadJob == null) {
                if (lastJob.getRule() != null) {
                    this.notifyWaitingThreadJobs(lastJob);
                }
                return;
            }
            String msg = "Worker thread ended job: " + lastJob + ", but still holds rule: " + threadJob;
            error = new Status(4, "org.eclipse.core.jobs", 1, msg, null);
            this.endThreadJob(threadJob, false);
        }
        try {
            RuntimeLog.log((IStatus)error);
        }
        catch (RuntimeException runtimeException) {
            System.err.println(error.getMessage());
        }
    }

    private void endThreadJob(ThreadJob threadJob, boolean resume) {
        Thread currentThread = Thread.currentThread();
        this.threadJobs.remove(currentThread);
        ISchedulingRule rule = threadJob.getRule();
        if (resume && rule != null) {
            this.suspendedRules.remove(rule);
        }
        if (threadJob.acquireRule) {
            this.manager.getLockManager().removeLockThread(currentThread, rule);
            this.notifyWaitingThreadJobs(threadJob);
        }
        if (threadJob.isRunning()) {
            this.manager.endJob(threadJob, Status.OK_STATUS, false);
        }
        this.recycle(threadJob);
    }

    private boolean isSuspended(ISchedulingRule rule) {
        if (this.suspendedRules.size() == 0) {
            return false;
        }
        Iterator it = this.suspendedRules.iterator();
        while (it.hasNext()) {
            if (!((ISchedulingRule)it.next()).contains(rule)) continue;
            return true;
        }
        return false;
    }

    private ThreadJob newThreadJob(ISchedulingRule rule) {
        if (this.jobCache != null) {
            ThreadJob job = this.jobCache;
            job.internalSetRule(rule);
            job.isRunning = false;
            job.acquireRule = false;
            job.realJob = null;
            this.jobCache = null;
            return job;
        }
        return new ThreadJob(rule);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void notifyWaitingThreadJobs(InternalJob job) {
        Object object = job.jobStateLock;
        synchronized (object) {
            job.jobStateLock.notifyAll();
        }
    }

    private void recycle(ThreadJob job) {
        if (this.jobCache == null && job.recycle()) {
            this.jobCache = job;
        }
    }

    void resume(ISchedulingRule rule) {
        this.end(rule, true);
        if (JobManager.DEBUG_BEGIN_END) {
            JobManager.debug("Resume rule: " + rule);
        }
    }

    void suspend(ISchedulingRule rule, IProgressMonitor monitor) {
        if (JobManager.DEBUG_BEGIN_END) {
            JobManager.debug("Suspend rule: " + rule);
        }
        this.begin(rule, monitor, true);
    }

    synchronized void transfer(ISchedulingRule rule, Thread destinationThread) {
        if (rule == null) {
            return;
        }
        Thread currentThread = Thread.currentThread();
        if (currentThread == destinationThread) {
            return;
        }
        ThreadJob target = (ThreadJob)this.threadJobs.get(destinationThread);
        Assert.isLegal((target == null ? 1 : 0) != 0, (String)"Transfer rule to job that already owns a rule");
        ThreadJob source = (ThreadJob)this.threadJobs.get(currentThread);
        Assert.isNotNull((Object)source, (String)"transferRule without beginRule");
        Assert.isLegal((source.getRule() == rule ? 1 : 0) != 0, (String)("transferred rule " + rule + " does not match beginRule: " + source.getRule()));
        source.setThread(destinationThread);
        this.threadJobs.remove(currentThread);
        this.threadJobs.put(destinationThread, source);
        if (source.acquireRule) {
            this.manager.getLockManager().removeLockThread(currentThread, rule);
            this.manager.getLockManager().addLockThread(destinationThread, rule);
        }
        this.notifyWaitingThreadJobs(source);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    synchronized void removeWaiting(ThreadJob threadJob) {
        Object object = threadJob.jobStateLock;
        synchronized (object) {
            threadJob.isWaiting = false;
            this.notifyWaitingThreadJobs(threadJob);
            threadJob.setWaitQueueStamp(-1L);
        }
        this.manager.dequeue(this.manager.waitingThreadJobs, threadJob);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    synchronized void addWaiting(ThreadJob threadJob) {
        Object object = threadJob.jobStateLock;
        synchronized (object) {
            threadJob.isWaiting = true;
            this.notifyWaitingThreadJobs(threadJob);
            threadJob.setWaitQueueStamp(this.manager.waitQueueCounter.increment());
        }
        this.manager.enqueue(this.manager.waitingThreadJobs, threadJob);
    }

    synchronized ThreadJob getThreadJob(Thread thread) {
        return (ThreadJob)this.threadJobs.get(thread);
    }
}

