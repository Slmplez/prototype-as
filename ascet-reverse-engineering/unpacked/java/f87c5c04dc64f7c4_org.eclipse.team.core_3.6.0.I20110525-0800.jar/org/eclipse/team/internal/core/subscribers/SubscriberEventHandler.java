/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.resources.mapping.ResourceMapping
 *  org.eclipse.core.resources.mapping.ResourceTraversal
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.jobs.IJobChangeEvent
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.team.internal.core.subscribers;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.mapping.ResourceMapping;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.jobs.IJobChangeEvent;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.osgi.util.NLS;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.mapping.ISynchronizationScope;
import org.eclipse.team.core.mapping.ISynchronizationScopeChangeListener;
import org.eclipse.team.core.subscribers.Subscriber;
import org.eclipse.team.internal.core.BackgroundEventHandler;
import org.eclipse.team.internal.core.Messages;
import org.eclipse.team.internal.core.Policy;

public abstract class SubscriberEventHandler
extends BackgroundEventHandler {
    private List resultCache = new ArrayList();
    private boolean started = false;
    private boolean initializing = true;
    private IProgressMonitor progressGroup;
    private int ticks;
    private final Subscriber subscriber;
    private ISynchronizationScope scope;
    private ISynchronizationScopeChangeListener scopeChangeListener;

    public SubscriberEventHandler(Subscriber subscriber, ISynchronizationScope scope) {
        super(NLS.bind((String)Messages.SubscriberEventHandler_jobName, (Object[])new String[]{subscriber.getName()}), NLS.bind((String)Messages.SubscriberEventHandler_errors, (Object[])new String[]{subscriber.getName()}));
        this.subscriber = subscriber;
        this.scope = scope;
        this.scopeChangeListener = new ISynchronizationScopeChangeListener(){

            public void scopeChanged(ISynchronizationScope scope, ResourceMapping[] newMappings, ResourceTraversal[] newTraversals) {
                SubscriberEventHandler.this.reset(new ResourceTraversal[0], scope.getTraversals());
            }
        };
        this.scope.addScopeChangeListener(this.scopeChangeListener);
    }

    protected synchronized void reset(ResourceTraversal[] oldTraversals, ResourceTraversal[] newTraversals) {
        this.reset(newTraversals, 2);
    }

    public synchronized void start() {
        this.started = true;
        ResourceTraversal[] traversals = this.scope.getTraversals();
        this.reset(traversals, 3);
        this.initializing = false;
    }

    protected synchronized void queueEvent(BackgroundEventHandler.Event event, boolean front) {
        if (this.started) {
            super.queueEvent(event, front);
        }
    }

    public void schedule() {
        Job job = this.getEventHandlerJob();
        if (job.getState() == 0) {
            if (this.progressGroup != null) {
                job.setSystem(false);
                job.setProgressGroup(this.progressGroup, this.ticks);
            } else {
                job.setSystem(this.isSystemJob());
            }
        }
        this.getEventHandlerJob().schedule();
    }

    protected boolean isSystemJob() {
        return !this.initializing;
    }

    protected void jobDone(IJobChangeEvent event) {
        super.jobDone(event);
        this.progressGroup = null;
    }

    public void change(IResource resource, int depth) {
        this.queueEvent(new SubscriberEvent(resource, 2, depth), false);
    }

    public void remove(IResource resource) {
        this.queueEvent(new SubscriberEvent(resource, 1, 2), false);
    }

    private void collect(IResource resource, int depth, IProgressMonitor monitor) {
        block6: {
            Policy.checkCanceled(monitor);
            this.handlePreemptiveEvents(monitor);
            if (resource.getType() != 1 && depth != 0) {
                try {
                    IResource[] members = this.getSubscriber().members(resource);
                    int i = 0;
                    while (i < members.length) {
                        this.collect(members[i], depth == 2 ? 2 : 0, monitor);
                        ++i;
                    }
                }
                catch (TeamException e) {
                    if (!resource.getProject().isAccessible()) break block6;
                    this.handleException(e, resource, 2, NLS.bind((String)Messages.SubscriberEventHandler_8, (Object[])new String[]{resource.getFullPath().toString(), e.getMessage()}));
                }
            }
        }
        monitor.subTask(NLS.bind((String)Messages.SubscriberEventHandler_2, (Object[])new String[]{resource.getFullPath().toString()}));
        try {
            this.handleChange(resource);
            this.handlePendingDispatch(monitor);
        }
        catch (CoreException e) {
            this.handleException(e, resource, 1, NLS.bind((String)Messages.SubscriberEventHandler_9, (Object[])new String[]{resource.getFullPath().toString(), e.getMessage()}));
        }
        monitor.worked(1);
    }

    protected Subscriber getSubscriber() {
        return this.subscriber;
    }

    protected abstract void handleChange(IResource var1) throws CoreException;

    protected void handlePendingDispatch(IProgressMonitor monitor) {
        if (this.isReadyForDispatch(false)) {
            try {
                this.dispatchEvents(Policy.subMonitorFor(monitor, 5));
            }
            catch (TeamException e) {
                this.handleException(e, null, 2, e.getMessage());
            }
        }
    }

    protected void handleException(CoreException e, IResource resource, int code, String message) {
        this.handleException(e);
    }

    protected abstract void collectAll(IResource var1, int var2, IProgressMonitor var3);

    protected abstract void dispatchEvents(SubscriberEvent[] var1, IProgressMonitor var2);

    protected void reset(ResourceTraversal[] traversals, int type) {
        int i = 0;
        while (i < traversals.length) {
            ResourceTraversal traversal = traversals[i];
            IResource[] resources = traversal.getResources();
            int j = 0;
            while (j < resources.length) {
                this.queueEvent(new SubscriberEvent(resources[j], type, traversal.getDepth()), false);
                ++j;
            }
            ++i;
        }
    }

    protected void processEvent(BackgroundEventHandler.Event event, IProgressMonitor monitor) {
        try {
            int type = event.getType();
            switch (type) {
                case 1000: {
                    this.executeRunnable(event, monitor);
                    break;
                }
                case 1: {
                    this.queueDispatchEvent(event);
                    break;
                }
                case 2: {
                    this.collect(event.getResource(), ((BackgroundEventHandler.ResourceEvent)event).getDepth(), monitor);
                    break;
                }
                case 3: {
                    monitor.subTask(NLS.bind((String)Messages.SubscriberEventHandler_2, (Object[])new String[]{event.getResource().getFullPath().toString()}));
                    this.collectAll(event.getResource(), ((BackgroundEventHandler.ResourceEvent)event).getDepth(), Policy.subMonitorFor(monitor, 64));
                }
            }
        }
        catch (OperationCanceledException e) {
            this.handleCancel(e);
        }
        catch (RuntimeException e) {
            if (event.getType() == 1000) {
                this.handleException(new TeamException(Messages.SubscriberEventHandler_10, e));
            }
            this.handleException(new TeamException(Messages.SubscriberEventHandler_10, e), event.getResource(), 2, NLS.bind((String)Messages.SubscriberEventHandler_11, (Object[])new String[]{event.getResource().getFullPath().toString(), e.getMessage()}));
        }
    }

    protected void queueDispatchEvent(BackgroundEventHandler.Event event) {
        this.resultCache.add(event);
    }

    protected void handleCancel(OperationCanceledException e) {
        this.resultCache.clear();
    }

    private void executeRunnable(BackgroundEventHandler.Event event, IProgressMonitor monitor) {
        try {
            this.dispatchEvents(Policy.subMonitorFor(monitor, 1));
        }
        catch (TeamException e) {
            this.handleException(e, null, 2, e.getMessage());
        }
        try {
            ((BackgroundEventHandler.RunnableEvent)event).run(Policy.subMonitorFor(monitor, 1));
        }
        catch (CoreException e) {
            this.handleException(e, null, 2, e.getMessage());
        }
    }

    protected boolean doDispatchEvents(IProgressMonitor monitor) {
        if (!this.resultCache.isEmpty()) {
            this.dispatchEvents(this.resultCache.toArray(new SubscriberEvent[this.resultCache.size()]), monitor);
            this.resultCache.clear();
            return true;
        }
        return false;
    }

    public void run(IWorkspaceRunnable runnable, boolean frontOnQueue) {
        this.queueEvent(new BackgroundEventHandler.RunnableEvent(runnable, frontOnQueue), frontOnQueue);
    }

    public void setProgressGroupHint(IProgressMonitor progressGroup, int ticks) {
        this.progressGroup = progressGroup;
        this.ticks = ticks;
    }

    protected void handlePreemptiveEvents(IProgressMonitor monitor) {
        BackgroundEventHandler.Event event = this.peek();
        if (event instanceof BackgroundEventHandler.RunnableEvent && ((BackgroundEventHandler.RunnableEvent)event).isPreemtive()) {
            this.executeRunnable(this.nextElement(), monitor);
        }
    }

    protected ISynchronizationScope getScope() {
        return this.scope;
    }

    public void shutdown() {
        super.shutdown();
        this.scope.removeScopeChangeListener(this.scopeChangeListener);
    }

    class SubscriberEvent
    extends BackgroundEventHandler.ResourceEvent {
        static final int REMOVAL = 1;
        static final int CHANGE = 2;
        static final int INITIALIZE = 3;

        SubscriberEvent(IResource resource, int type, int depth) {
            super(resource, type, depth);
        }

        protected String getTypeString() {
            switch (this.getType()) {
                case 1: {
                    return "REMOVAL";
                }
                case 2: {
                    return "CHANGE";
                }
                case 3: {
                    return "INITIALIZE";
                }
            }
            return "INVALID";
        }

        public ResourceTraversal asTraversal() {
            return new ResourceTraversal(new IResource[]{this.getResource()}, this.getDepth(), 0);
        }
    }
}

