/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.jobs.IJobChangeEvent
 *  org.eclipse.core.runtime.jobs.IJobChangeListener
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.core.runtime.jobs.JobChangeAdapter
 */
package org.eclipse.team.internal.core;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.jobs.IJobChangeEvent;
import org.eclipse.core.runtime.jobs.IJobChangeListener;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.runtime.jobs.JobChangeAdapter;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.internal.core.ExceptionCollector;
import org.eclipse.team.internal.core.Policy;

public abstract class BackgroundEventHandler {
    public static final int RUNNABLE_EVENT = 1000;
    private List awaitingProcessing = new ArrayList();
    private Job eventHandlerJob;
    private boolean shutdown;
    private ExceptionCollector errors;
    private long timeOfLastDispatch = 0L;
    private int dispatchCount;
    private static final long DISPATCH_DELAY = 1500L;
    private static final long LONG_DISPATCH_DELAY = 10000L;
    private static final int DISPATCH_THRESHOLD = 3;
    private static final long WAIT_DELAY = 100L;
    private String jobName;

    protected BackgroundEventHandler(String jobName, String errorTitle) {
        this.jobName = jobName;
        this.errors = new ExceptionCollector(errorTitle, "org.eclipse.team.core", 4, null);
        this.createEventHandlingJob();
        this.schedule();
    }

    protected void createEventHandlingJob() {
        this.eventHandlerJob = new Job(this.getName()){

            public IStatus run(IProgressMonitor monitor) {
                return BackgroundEventHandler.this.processEvents(monitor);
            }

            public boolean shouldRun() {
                return !BackgroundEventHandler.this.isQueueEmpty();
            }

            public boolean shouldSchedule() {
                return !BackgroundEventHandler.this.isQueueEmpty();
            }

            public boolean belongsTo(Object family) {
                return BackgroundEventHandler.this.belongsTo(family);
            }
        };
        this.eventHandlerJob.addJobChangeListener((IJobChangeListener)new JobChangeAdapter(){

            public void done(IJobChangeEvent event) {
                BackgroundEventHandler.this.jobDone(event);
            }
        });
        this.eventHandlerJob.setSystem(true);
        this.eventHandlerJob.setPriority(20);
    }

    protected boolean belongsTo(Object family) {
        return this.getJobFamiliy() == family;
    }

    protected Object getJobFamiliy() {
        return null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void jobDone(IJobChangeEvent event) {
        if (this.isShutdown()) {
            BackgroundEventHandler backgroundEventHandler = this;
            synchronized (backgroundEventHandler) {
                this.awaitingProcessing.clear();
            }
        } else if (!this.isQueueEmpty()) {
            this.schedule();
        }
    }

    protected void schedule() {
        this.eventHandlerJob.schedule();
    }

    public void shutdown() {
        this.shutdown = true;
        this.eventHandlerJob.cancel();
    }

    public boolean isShutdown() {
        return this.shutdown;
    }

    protected synchronized void queueEvent(Event event, boolean front) {
        if (Policy.DEBUG_BACKGROUND_EVENTS) {
            System.out.println("Event queued on " + this.getName() + ":" + event.toString());
        }
        if (front) {
            this.awaitingProcessing.add(0, event);
        } else {
            this.awaitingProcessing.add(event);
        }
        if (!this.isShutdown() && this.eventHandlerJob != null) {
            if (this.eventHandlerJob.getState() == 0) {
                this.schedule();
            } else {
                this.notify();
            }
        }
    }

    protected String getName() {
        return this.jobName;
    }

    protected synchronized Event nextElement() {
        if (this.isShutdown() || this.isQueueEmpty()) {
            return null;
        }
        return (Event)this.awaitingProcessing.remove(0);
    }

    protected synchronized Event peek() {
        if (this.isShutdown() || this.isQueueEmpty()) {
            return null;
        }
        return (Event)this.awaitingProcessing.get(0);
    }

    protected synchronized boolean isQueueEmpty() {
        return this.awaitingProcessing.isEmpty();
    }

    /*
     * Handled impossible loop by duplicating code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected IStatus processEvents(IProgressMonitor monitor) {
        this.errors.clear();
        try {
            block10: {
                Event event;
                IProgressMonitor subMonitor;
                block9: {
                    monitor.beginTask(null, -1);
                    subMonitor = Policy.infiniteSubMonitorFor(monitor, 90);
                    subMonitor.beginTask(null, 1024);
                    this.timeOfLastDispatch = System.currentTimeMillis();
                    this.dispatchCount = 1;
                    if (!true) break block9;
                    event = this.nextElement();
                    if (event == null) return this.errors.getStatus();
                    if (this.isShutdown()) break block10;
                }
                do {
                    try {
                        this.processEvent(event, subMonitor);
                        if (Policy.DEBUG_BACKGROUND_EVENTS) {
                            System.out.println("Event processed on " + this.getName() + ":" + event.toString());
                        }
                        if (this.isReadyForDispatch(true)) {
                            this.dispatchEvents(Policy.subMonitorFor(subMonitor, 1));
                        }
                    }
                    catch (CoreException e) {
                        this.handleException(e);
                    }
                    event = this.nextElement();
                    if (event == null) return this.errors.getStatus();
                } while (!this.isShutdown());
            }
            return this.errors.getStatus();
        }
        finally {
            monitor.done();
        }
    }

    protected final void dispatchEvents(IProgressMonitor monitor) throws TeamException {
        if (this.doDispatchEvents(monitor)) {
            ++this.dispatchCount;
        }
        this.timeOfLastDispatch = System.currentTimeMillis();
    }

    protected abstract boolean doDispatchEvents(IProgressMonitor var1) throws TeamException;

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected boolean isReadyForDispatch(boolean wait) {
        if (this.isDispatchDelayExceeded()) {
            return true;
        }
        BackgroundEventHandler backgroundEventHandler = this;
        synchronized (backgroundEventHandler) {
            block7: {
                if (this.isQueueEmpty() && wait) break block7;
                return false;
            }
            try {
                this.wait(this.getDispatchWaitDelay());
            }
            catch (InterruptedException interruptedException) {}
        }
        return this.isQueueEmpty() || this.isDispatchDelayExceeded();
    }

    private boolean isDispatchDelayExceeded() {
        long duration = System.currentTimeMillis() - this.timeOfLastDispatch;
        return this.dispatchCount < 3 && duration >= this.getShortDispatchDelay() || duration >= this.getLongDispatchDelay();
    }

    protected long getDispatchWaitDelay() {
        return 100L;
    }

    protected long getShortDispatchDelay() {
        return 1500L;
    }

    protected long getLongDispatchDelay() {
        return 10000L;
    }

    protected void handleException(CoreException e) {
        this.errors.handleException(e);
    }

    protected abstract void processEvent(Event var1, IProgressMonitor var2) throws CoreException;

    public Job getEventHandlerJob() {
        return this.eventHandlerJob;
    }

    public static class Event {
        private int type;

        public Event(int type) {
            this.type = type;
        }

        public int getType() {
            return this.type;
        }

        public String toString() {
            StringBuffer buffer = new StringBuffer();
            buffer.append("Background Event: ");
            buffer.append(this.getTypeString());
            return buffer.toString();
        }

        public IResource getResource() {
            return null;
        }

        protected String getTypeString() {
            return String.valueOf(this.type);
        }
    }

    public static class ResourceEvent
    extends Event {
        private IResource resource;
        private int depth;

        public ResourceEvent(IResource resource, int type, int depth) {
            super(type);
            this.resource = resource;
            this.depth = depth;
        }

        public int getDepth() {
            return this.depth;
        }

        public IResource getResource() {
            return this.resource;
        }

        public String toString() {
            StringBuffer buffer = new StringBuffer();
            buffer.append("resource: ");
            buffer.append(this.resource.getFullPath());
            buffer.append(" type: ");
            buffer.append(this.getTypeString());
            buffer.append(" depth: ");
            buffer.append(this.getDepthString());
            return buffer.toString();
        }

        protected String getDepthString() {
            switch (this.depth) {
                case 0: {
                    return "DEPTH_ZERO";
                }
                case 1: {
                    return "DEPTH_ONE";
                }
                case 2: {
                    return "DEPTH_INFINITE";
                }
            }
            return "INVALID";
        }
    }

    public static class RunnableEvent
    extends Event {
        private IWorkspaceRunnable runnable;
        private boolean preemtive;

        public RunnableEvent(IWorkspaceRunnable runnable, boolean preemtive) {
            super(1000);
            this.runnable = runnable;
            this.preemtive = preemtive;
        }

        public void run(IProgressMonitor monitor) throws CoreException {
            this.runnable.run(monitor);
        }

        public boolean isPreemtive() {
            return this.preemtive;
        }
    }
}

