/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.runtime.jobs;

import org.eclipse.core.internal.jobs.InternalJob;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.IJobChangeListener;
import org.eclipse.core.runtime.jobs.IJobManager;
import org.eclipse.core.runtime.jobs.ISchedulingRule;

public abstract class Job
extends InternalJob
implements IAdaptable {
    public static final IStatus ASYNC_FINISH = new Status(0, "org.eclipse.core.jobs", 1, "", null);
    public static final int INTERACTIVE = 10;
    public static final int SHORT = 20;
    public static final int LONG = 30;
    public static final int BUILD = 40;
    public static final int DECORATE = 50;
    public static final int NONE = 0;
    public static final int SLEEPING = 1;
    public static final int WAITING = 2;
    public static final int RUNNING = 4;

    public static final IJobManager getJobManager() {
        return manager;
    }

    public Job(String name) {
        super(name);
    }

    public final void addJobChangeListener(IJobChangeListener listener) {
        super.addJobChangeListener(listener);
    }

    public boolean belongsTo(Object family) {
        return false;
    }

    public final boolean cancel() {
        return super.cancel();
    }

    protected void canceling() {
    }

    public final void done(IStatus result) {
        super.done(result);
    }

    public final String getName() {
        return super.getName();
    }

    public final int getPriority() {
        return super.getPriority();
    }

    public final Object getProperty(QualifiedName key) {
        return super.getProperty(key);
    }

    public final IStatus getResult() {
        return super.getResult();
    }

    public final ISchedulingRule getRule() {
        return super.getRule();
    }

    public final int getState() {
        return super.getState();
    }

    public final Thread getThread() {
        return super.getThread();
    }

    public final boolean isBlocking() {
        return super.isBlocking();
    }

    public final boolean isSystem() {
        return super.isSystem();
    }

    public final boolean isUser() {
        return super.isUser();
    }

    public final void join() throws InterruptedException {
        super.join();
    }

    public final void removeJobChangeListener(IJobChangeListener listener) {
        super.removeJobChangeListener(listener);
    }

    protected abstract IStatus run(IProgressMonitor var1);

    public final void schedule() {
        super.schedule(0L);
    }

    public final void schedule(long delay) {
        super.schedule(delay);
    }

    public final void setName(String name) {
        super.setName(name);
    }

    public final void setPriority(int priority) {
        super.setPriority(priority);
    }

    public final void setProgressGroup(IProgressMonitor group, int ticks) {
        super.setProgressGroup(group, ticks);
    }

    public void setProperty(QualifiedName key, Object value) {
        super.setProperty(key, value);
    }

    public final void setRule(ISchedulingRule rule) {
        super.setRule(rule);
    }

    public final void setSystem(boolean value) {
        super.setSystem(value);
    }

    public final void setUser(boolean value) {
        super.setUser(value);
    }

    public final void setThread(Thread thread) {
        super.setThread(thread);
    }

    public boolean shouldRun() {
        return true;
    }

    public boolean shouldSchedule() {
        return true;
    }

    public final boolean sleep() {
        return super.sleep();
    }

    public String toString() {
        return super.toString();
    }

    public final void wakeUp() {
        super.wakeUp(0L);
    }

    public final void wakeUp(long delay) {
        super.wakeUp(delay);
    }

    public Job yieldRule(IProgressMonitor monitor) {
        return super.yieldRule(monitor);
    }
}

