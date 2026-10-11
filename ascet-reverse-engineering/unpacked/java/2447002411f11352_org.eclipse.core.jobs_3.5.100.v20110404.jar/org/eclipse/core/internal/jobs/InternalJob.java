/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.QualifiedName
 */
package org.eclipse.core.internal.jobs;

import org.eclipse.core.internal.jobs.JobManager;
import org.eclipse.core.internal.jobs.ObjectMap;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.jobs.IJobChangeListener;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.Job;

public abstract class InternalJob
extends PlatformObject
implements Comparable {
    static final int ABOUT_TO_RUN = 16;
    static final int ABOUT_TO_SCHEDULE = 32;
    static final int BLOCKED = 8;
    static final int YIELDING = 64;
    private static final int M_STATE = 255;
    private static final int M_SYSTEM = 256;
    private static final int M_USER = 512;
    private static final int M_ABOUT_TO_RUN_CANCELED = 1024;
    private static final int M_RUN_CANCELED = 2048;
    private static int nextJobNumber = 0;
    protected static final JobManager manager = JobManager.getInstance();
    static final long T_INFINITE = Long.MAX_VALUE;
    static final long T_NONE = -1L;
    private volatile int flags = 0;
    private final int jobNumber = InternalJob.getNextJobNumber();
    private ListenerList listeners = null;
    private volatile IProgressMonitor monitor;
    private String name;
    private InternalJob next;
    private InternalJob previous;
    private int priority = 30;
    private ObjectMap properties;
    private volatile IStatus result;
    private ISchedulingRule schedulingRule;
    private long startTime;
    private long waitQueueStamp = -1L;
    private volatile Thread thread = null;
    final Object jobStateLock = new Object();
    static /* synthetic */ Class class$0;

    private static synchronized int getNextJobNumber() {
        return nextJobNumber++;
    }

    protected InternalJob(String name) {
        Assert.isNotNull((Object)name);
        this.name = name;
    }

    protected void addJobChangeListener(IJobChangeListener listener) {
        if (this.listeners == null) {
            this.listeners = new ListenerList(1);
        }
        this.listeners.add((Object)listener);
    }

    final void addLast(InternalJob entry) {
        InternalJob last = this;
        while (last.previous != null) {
            last = last.previous;
        }
        last.previous = entry;
        entry.next = last;
        entry.previous = null;
    }

    protected boolean belongsTo(Object family) {
        return false;
    }

    protected boolean cancel() {
        return manager.cancel(this);
    }

    protected void canceling() {
    }

    public final int compareTo(Object otherJob) {
        return ((InternalJob)otherJob).startTime >= this.startTime ? 1 : -1;
    }

    protected void done(IStatus endResult) {
        manager.endJob(this, endResult, true);
    }

    final ListenerList getListeners() {
        return this.listeners;
    }

    protected String getName() {
        return this.name;
    }

    protected int getPriority() {
        return this.priority;
    }

    final IProgressMonitor getProgressMonitor() {
        return this.monitor;
    }

    protected Object getProperty(QualifiedName key) {
        ObjectMap temp = this.properties;
        if (temp == null) {
            return null;
        }
        return temp.get(key);
    }

    protected IStatus getResult() {
        return this.result;
    }

    protected ISchedulingRule getRule() {
        return this.schedulingRule;
    }

    final long getStartTime() {
        return this.startTime;
    }

    protected int getState() {
        int state = this.flags & 0xFF;
        switch (state) {
            case 8: 
            case 64: {
                return 2;
            }
            case 16: {
                return 4;
            }
            case 32: {
                return 2;
            }
        }
        return state;
    }

    protected Thread getThread() {
        return this.thread;
    }

    final int internalGetState() {
        return this.flags & 0xFF;
    }

    final void internalSetPriority(int newPriority) {
        this.priority = newPriority;
    }

    final void internalSetRule(ISchedulingRule rule) {
        this.schedulingRule = rule;
    }

    final void internalSetState(int i) {
        this.flags = this.flags & 0xFFFFFF00 | i;
    }

    final boolean isAboutToRunCanceled() {
        return (this.flags & 0x400) != 0;
    }

    final boolean isRunCanceled() {
        return (this.flags & 0x800) != 0;
    }

    protected boolean isBlocking() {
        return manager.isBlocking(this);
    }

    final boolean isConflicting(InternalJob otherJob) {
        ISchedulingRule otherRule = otherJob.getRule();
        if (this.schedulingRule == null || otherRule == null) {
            return false;
        }
        Class<?> clazz = this.schedulingRule.getClass();
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.core.runtime.jobs.MultiRule");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz == clazz2) {
            return this.schedulingRule.isConflicting(otherRule);
        }
        return otherRule.isConflicting(this.schedulingRule);
    }

    protected boolean isSystem() {
        return (this.flags & 0x100) != 0;
    }

    protected boolean isUser() {
        return (this.flags & 0x200) != 0;
    }

    protected void join() throws InterruptedException {
        manager.join(this);
    }

    final InternalJob next() {
        return this.next;
    }

    final InternalJob previous() {
        return this.previous;
    }

    final InternalJob remove() {
        if (this.next != null) {
            this.next.setPrevious(this.previous);
        }
        if (this.previous != null) {
            this.previous.setNext(this.next);
        }
        this.previous = null;
        this.next = null;
        return this;
    }

    protected void removeJobChangeListener(IJobChangeListener listener) {
        if (this.listeners != null) {
            this.listeners.remove((Object)listener);
        }
    }

    protected abstract IStatus run(IProgressMonitor var1);

    protected void schedule(long delay) {
        if (this.shouldSchedule()) {
            manager.schedule(this, delay, false);
        }
    }

    final void setAboutToRunCanceled(boolean value) {
        this.flags = value ? this.flags | 0x400 : this.flags & 0xFFFFFBFF;
    }

    final void setRunCanceled(boolean value) {
        this.flags = value ? this.flags | 0x800 : this.flags & 0xFFFFF7FF;
    }

    protected void setName(String name) {
        Assert.isNotNull((Object)name);
        this.name = name;
    }

    final void setNext(InternalJob entry) {
        this.next = entry;
    }

    final void setPrevious(InternalJob entry) {
        this.previous = entry;
    }

    protected void setPriority(int newPriority) {
        switch (newPriority) {
            case 10: 
            case 20: 
            case 30: 
            case 40: 
            case 50: {
                manager.setPriority(this, newPriority);
                break;
            }
            default: {
                throw new IllegalArgumentException(String.valueOf(newPriority));
            }
        }
    }

    protected void setProgressGroup(IProgressMonitor group, int ticks) {
        Assert.isNotNull((Object)group);
        IProgressMonitor pm = manager.createMonitor(this, group, ticks);
        if (pm != null) {
            this.setProgressMonitor(pm);
        }
    }

    final void setProgressMonitor(IProgressMonitor monitor) {
        this.monitor = monitor;
    }

    protected void setProperty(QualifiedName key, Object value) {
        if (value == null) {
            if (this.properties == null) {
                return;
            }
            ObjectMap temp = (ObjectMap)this.properties.clone();
            temp.remove(key);
            this.properties = temp.isEmpty() ? null : temp;
        } else {
            ObjectMap temp = this.properties;
            temp = temp == null ? new ObjectMap(5) : (ObjectMap)this.properties.clone();
            temp.put(key, value);
            this.properties = temp;
        }
    }

    final void setResult(IStatus result) {
        this.result = result;
    }

    protected void setRule(ISchedulingRule rule) {
        manager.setRule(this, rule);
    }

    final void setStartTime(long time) {
        this.startTime = time;
    }

    protected void setSystem(boolean value) {
        if (this.getState() != 0) {
            throw new IllegalStateException();
        }
        this.flags = value ? this.flags | 0x100 : this.flags & 0xFFFFFEFF;
    }

    protected void setThread(Thread thread) {
        this.thread = thread;
    }

    protected void setUser(boolean value) {
        if (this.getState() != 0) {
            throw new IllegalStateException();
        }
        this.flags = value ? this.flags | 0x200 : this.flags & 0xFFFFFDFF;
    }

    protected boolean shouldSchedule() {
        return true;
    }

    protected boolean sleep() {
        return manager.sleep(this);
    }

    protected Job yieldRule(IProgressMonitor progressMonitor) {
        return manager.yieldRule(this, progressMonitor);
    }

    public String toString() {
        return String.valueOf(this.getName()) + "(" + this.jobNumber + ")";
    }

    protected void wakeUp(long delay) {
        manager.wakeUp(this, delay);
    }

    void setWaitQueueStamp(long waitQueueStamp) {
        this.waitQueueStamp = waitQueueStamp;
    }

    long getWaitQueueStamp() {
        return this.waitQueueStamp;
    }
}

