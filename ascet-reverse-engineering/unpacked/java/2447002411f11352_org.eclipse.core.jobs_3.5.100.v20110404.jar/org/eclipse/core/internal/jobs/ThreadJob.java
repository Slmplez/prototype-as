/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.runtime.RuntimeLog
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.internal.jobs;

import org.eclipse.core.internal.jobs.InternalJob;
import org.eclipse.core.internal.jobs.JobManager;
import org.eclipse.core.internal.jobs.LockManager;
import org.eclipse.core.internal.runtime.RuntimeLog;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.Job;

class ThreadJob
extends Job {
    protected boolean acquireRule = false;
    boolean isBlocked = false;
    protected boolean isRunning = false;
    private RuntimeException lastPush = null;
    protected Job realJob;
    private ISchedulingRule[] ruleStack;
    private int top;
    boolean isWaiting;

    ThreadJob(ISchedulingRule rule) {
        super("Implicit Job");
        this.setSystem(true);
        this.internalSetPriority(10);
        this.ruleStack = new ISchedulingRule[2];
        this.top = -1;
        this.internalSetRule(rule);
    }

    boolean isResumingAfterYield() {
        return false;
    }

    private void illegalPop(ISchedulingRule rule) {
        StringBuffer buf = new StringBuffer("Attempted to endRule: ");
        buf.append(rule);
        if (this.top >= 0 && this.top < this.ruleStack.length) {
            buf.append(", does not match most recent begin: ");
            buf.append(this.ruleStack[this.top]);
        } else if (this.top < 0) {
            buf.append(", but there was no matching beginRule");
        } else {
            buf.append(", but the rule stack was out of bounds: " + this.top);
        }
        buf.append(".  See log for trace information if rule tracing is enabled.");
        String msg = buf.toString();
        if (JobManager.DEBUG || JobManager.DEBUG_BEGIN_END) {
            System.out.println(msg);
            RuntimeException t = this.lastPush == null ? new IllegalArgumentException() : this.lastPush;
            Status error = new Status(4, "org.eclipse.core.jobs", 1, msg, (Throwable)t);
            RuntimeLog.log((IStatus)error);
        }
        Assert.isLegal((boolean)false, (String)msg);
    }

    private void illegalPush(ISchedulingRule pushRule, ISchedulingRule baseRule) {
        StringBuffer buf = new StringBuffer("Attempted to beginRule: ");
        buf.append(pushRule);
        buf.append(", does not match outer scope rule: ");
        buf.append(baseRule);
        String msg = buf.toString();
        if (JobManager.DEBUG) {
            System.out.println(msg);
            Status error = new Status(4, "org.eclipse.core.jobs", 1, msg, (Throwable)new IllegalArgumentException());
            RuntimeLog.log((IStatus)error);
        }
        Assert.isLegal((boolean)false, (String)msg);
    }

    private static boolean isCanceled(IProgressMonitor monitor) {
        try {
            return monitor.isCanceled();
        }
        catch (RuntimeException e) {
            Status status = new Status(4, "org.eclipse.core.jobs", 2, "ThreadJob.isCanceled", (Throwable)e);
            RuntimeLog.log((IStatus)status);
            return false;
        }
    }

    synchronized boolean isRunning() {
        return this.isRunning;
    }

    static ThreadJob joinRun(ThreadJob threadJob, IProgressMonitor monitor) {
        if (ThreadJob.isCanceled(monitor)) {
            throw new OperationCanceledException();
        }
        InternalJob blockingJob = manager.findBlockingJob(threadJob);
        Thread blocker = blockingJob == null ? null : blockingJob.getThread();
        try {
            if (manager.getLockManager().aboutToWait(blocker)) {
                ThreadJob threadJob2 = threadJob;
                return threadJob2;
            }
            ThreadJob threadJob3 = ThreadJob.waitForRun(threadJob, monitor, blockingJob, blocker);
            return threadJob3;
        }
        finally {
            manager.getLockManager().aboutToRelease();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    static ThreadJob waitForRun(ThreadJob threadJob, IProgressMonitor monitor, InternalJob blockingJob, Thread blocker) {
        ThreadJob threadJob2;
        Thread currentThread;
        boolean canBlock = manager.getLockManager().canBlock();
        ThreadJob result = threadJob;
        boolean interrupted = false;
        boolean waiting = false;
        try {
            ThreadJob.waitStart(threadJob, monitor, blockingJob);
            ThreadJob.manager.implicitJobs.addWaiting(threadJob);
            waiting = true;
            if (canBlock) {
                manager.beginMonitoring(threadJob, monitor);
            }
            currentThread = Thread.currentThread();
            while (true) {
                if (ThreadJob.isCanceled(monitor)) {
                    throw new OperationCanceledException();
                }
                blockingJob = manager.runNow(threadJob, true);
                if (blockingJob != null) break block28;
                waiting = false;
                threadJob2 = threadJob;
                if (interrupted) {
                    Thread.currentThread().interrupt();
                }
                ThreadJob.waitEnd(threadJob, threadJob == result, monitor);
                break;
            }
        }
        catch (Throwable throwable) {
            if (interrupted) {
                Thread.currentThread().interrupt();
            }
            ThreadJob.waitEnd(threadJob, threadJob == result, monitor);
            if (threadJob == result && waiting) {
                ThreadJob.manager.implicitJobs.removeWaiting(threadJob);
            }
            if (canBlock) {
                manager.endMonitoring(threadJob);
            }
            throw throwable;
        }
        {
            block30: {
                block29: {
                    block28: {
                        if (threadJob == result && waiting) {
                            ThreadJob.manager.implicitJobs.removeWaiting(threadJob);
                        }
                        if (canBlock) {
                            manager.endMonitoring(threadJob);
                        }
                        return threadJob2;
                    }
                    Thread thread = blocker = blockingJob == null ? null : blockingJob.getThread();
                    if (blocker != currentThread || !(blockingJob instanceof ThreadJob)) break block29;
                    result = (ThreadJob)blockingJob;
                    result.push(threadJob.getRule());
                    result.isBlocked = threadJob.isBlocked;
                    ThreadJob threadJob3 = result;
                    if (interrupted) {
                        Thread.currentThread().interrupt();
                    }
                    ThreadJob.waitEnd(threadJob, threadJob == result, monitor);
                    if (threadJob == result && waiting) {
                        ThreadJob.manager.implicitJobs.removeWaiting(threadJob);
                    }
                    if (canBlock) {
                        manager.endMonitoring(threadJob);
                    }
                    return threadJob3;
                }
                if (!manager.getLockManager().aboutToWait(blocker)) break block30;
                ThreadJob threadJob4 = threadJob;
                if (interrupted) {
                    Thread.currentThread().interrupt();
                }
                ThreadJob.waitEnd(threadJob, threadJob == result, monitor);
                if (threadJob == result && waiting) {
                    ThreadJob.manager.implicitJobs.removeWaiting(threadJob);
                }
                if (canBlock) {
                    manager.endMonitoring(threadJob);
                }
                return threadJob4;
            }
            manager.getLockManager().addLockWaitThread(currentThread, threadJob.getRule());
            Object object = blockingJob.jobStateLock;
            synchronized (object) {
                try {
                    int state = blockingJob.getState();
                    if (state == 4 && canBlock) {
                        blockingJob.jobStateLock.wait();
                    } else if (state != 0) {
                        blockingJob.jobStateLock.wait(250L);
                    }
                }
                catch (InterruptedException interruptedException) {
                    interrupted = true;
                }
            }
            manager.getLockManager().removeLockWaitThread(currentThread, threadJob.getRule());
            continue;
        }
    }

    boolean pop(ISchedulingRule rule) {
        if (this.top < 0 || this.ruleStack[this.top] != rule) {
            this.illegalPop(rule);
        }
        this.ruleStack[this.top--] = null;
        return this.top < 0;
    }

    void push(ISchedulingRule rule) {
        ISchedulingRule baseRule = this.getRule();
        if (++this.top >= this.ruleStack.length) {
            ISchedulingRule[] newStack = new ISchedulingRule[this.ruleStack.length * 2];
            System.arraycopy(this.ruleStack, 0, newStack, 0, this.ruleStack.length);
            this.ruleStack = newStack;
        }
        this.ruleStack[this.top] = rule;
        if (JobManager.DEBUG_BEGIN_END) {
            this.lastPush = (RuntimeException)new RuntimeException().fillInStackTrace();
        }
        if (baseRule != null && rule != null && !baseRule.contains(rule)) {
            this.illegalPush(rule, baseRule);
        }
    }

    boolean recycle() {
        if (this.getState() != 0) {
            return false;
        }
        this.isBlocked = false;
        this.isRunning = false;
        this.acquireRule = false;
        this.realJob = null;
        this.setRule(null);
        this.setThread(null);
        if (this.ruleStack.length != 2) {
            this.ruleStack = new ISchedulingRule[2];
        } else {
            this.ruleStack[1] = null;
            this.ruleStack[0] = null;
        }
        this.top = -1;
        return true;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public IStatus run(IProgressMonitor monitor) {
        ThreadJob threadJob = this;
        synchronized (threadJob) {
            this.isRunning = true;
        }
        return ASYNC_FINISH;
    }

    void setRealJob(Job realJob) {
        this.realJob = realJob;
    }

    boolean shouldInterrupt() {
        return this.realJob == null ? true : !this.realJob.isSystem();
    }

    public String toString() {
        StringBuffer buf = new StringBuffer("ThreadJob");
        buf.append('(').append(this.realJob).append(',').append(this.getRuleStack()).append(')');
        return buf.toString();
    }

    String getRuleStack() {
        StringBuffer buf = new StringBuffer();
        buf.append('[');
        int i = 0;
        while (i <= this.top && i < this.ruleStack.length) {
            buf.append(this.ruleStack[i]).append(',');
            ++i;
        }
        buf.append(']');
        return buf.toString();
    }

    private static void waitEnd(ThreadJob threadJob, boolean updateLockManager, IProgressMonitor monitor) {
        if (updateLockManager) {
            LockManager lockManager = manager.getLockManager();
            Thread currentThread = Thread.currentThread();
            if (threadJob.isRunning()) {
                lockManager.addLockThread(currentThread, threadJob.getRule());
                lockManager.resumeSuspendedLocks(currentThread);
            } else {
                lockManager.removeLockWaitThread(currentThread, threadJob.getRule());
            }
        }
        if (threadJob.isBlocked) {
            threadJob.isBlocked = false;
            manager.reportUnblocked(monitor);
        }
    }

    private static void waitStart(ThreadJob threadJob, IProgressMonitor monitor, InternalJob blockingJob) {
        threadJob.isBlocked = true;
        manager.reportBlocked(monitor, blockingJob);
    }

    public boolean shouldSchedule() {
        return false;
    }
}

