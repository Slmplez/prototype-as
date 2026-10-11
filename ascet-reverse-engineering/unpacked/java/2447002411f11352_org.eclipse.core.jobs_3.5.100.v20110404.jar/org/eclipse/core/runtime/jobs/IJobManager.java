/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 */
package org.eclipse.core.runtime.jobs;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.jobs.IJobChangeListener;
import org.eclipse.core.runtime.jobs.ILock;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.runtime.jobs.LockListener;
import org.eclipse.core.runtime.jobs.ProgressProvider;

public interface IJobManager {
    public static final String PROP_USE_DAEMON_THREADS = "eclipse.jobs.daemon";

    public void addJobChangeListener(IJobChangeListener var1);

    public void beginRule(ISchedulingRule var1, IProgressMonitor var2);

    public void cancel(Object var1);

    public IProgressMonitor createProgressGroup();

    public ISchedulingRule currentRule();

    public Job currentJob();

    public void endRule(ISchedulingRule var1);

    public Job[] find(Object var1);

    public boolean isIdle();

    public boolean isSuspended();

    public void join(Object var1, IProgressMonitor var2) throws InterruptedException, OperationCanceledException;

    public ILock newLock();

    public void removeJobChangeListener(IJobChangeListener var1);

    public void resume(ISchedulingRule var1);

    public void resume();

    public void setLockListener(LockListener var1);

    public void setProgressProvider(ProgressProvider var1);

    public void suspend();

    public void suspend(ISchedulingRule var1, IProgressMonitor var2);

    public void sleep(Object var1);

    public void transferRule(ISchedulingRule var1, Thread var2);

    public void wakeUp(Object var1);
}

