/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.resources.mapping.ResourceTraversal
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.SubProgressMonitor
 */
package org.eclipse.team.internal.core.subscribers;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.team.core.ITeamStatus;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.TeamStatus;
import org.eclipse.team.core.mapping.ISynchronizationScope;
import org.eclipse.team.core.subscribers.Subscriber;
import org.eclipse.team.core.synchronize.SyncInfo;
import org.eclipse.team.core.synchronize.SyncInfoSet;
import org.eclipse.team.internal.core.Messages;
import org.eclipse.team.internal.core.TeamPlugin;
import org.eclipse.team.internal.core.subscribers.RootResourceSynchronizationScope;
import org.eclipse.team.internal.core.subscribers.SubscriberEventHandler;
import org.eclipse.team.internal.core.subscribers.SubscriberSyncInfoSet;
import org.eclipse.team.internal.core.subscribers.SyncSetInputFromSubscriber;

public class SubscriberSyncInfoEventHandler
extends SubscriberEventHandler {
    private final SyncSetInputFromSubscriber syncSetInput;

    public static ISynchronizationScope createScope(IResource[] roots, Subscriber subscriber) {
        if (roots == null) {
            roots = subscriber.roots();
        }
        return new RootResourceSynchronizationScope(roots);
    }

    public SubscriberSyncInfoEventHandler(Subscriber subscriber, IResource[] roots) {
        super(subscriber, SubscriberSyncInfoEventHandler.createScope(roots, subscriber));
        this.syncSetInput = new SyncSetInputFromSubscriber(subscriber, this);
    }

    protected void handleException(CoreException e, IResource resource, int code, String message) {
        super.handleException(e, resource, code, message);
        this.syncSetInput.handleError(new TeamStatus(4, "org.eclipse.team.core", code, message, e, resource));
    }

    protected void handleCancel(OperationCanceledException e) {
        super.handleCancel(e);
        this.syncSetInput.handleError(new TeamStatus(4, "org.eclipse.team.core", 3, Messages.SubscriberEventHandler_12, e, (IResource)ResourcesPlugin.getWorkspace().getRoot()));
    }

    public SyncSetInputFromSubscriber getSyncSetInput() {
        return this.syncSetInput;
    }

    protected void handleChange(IResource resource) throws TeamException {
        SyncInfo info = this.syncSetInput.getSubscriber().getSyncInfo(resource);
        if (info == null) {
            this.queueDispatchEvent(new SubscriberEventHandler.SubscriberEvent(resource, 1, 0));
        } else {
            this.queueDispatchEvent(new SubscriberSyncInfoEvent(resource, 2, 0, info));
        }
    }

    protected void collectAll(IResource resource, int depth, IProgressMonitor monitor) {
        monitor.beginTask(null, -1);
        try {
            SubProgressMonitor collectionMonitor = new SubProgressMonitor(monitor, -1){
                boolean dispatching = false;

                public void subTask(String name) {
                    this.dispatch();
                    super.subTask(name);
                }

                private void dispatch() {
                    if (this.dispatching) {
                        return;
                    }
                    try {
                        this.dispatching = true;
                        SubscriberSyncInfoEventHandler.this.handlePreemptiveEvents((IProgressMonitor)this);
                        SubscriberSyncInfoEventHandler.this.handlePendingDispatch((IProgressMonitor)this);
                    }
                    finally {
                        this.dispatching = false;
                    }
                }

                public void worked(int work) {
                    this.dispatch();
                    super.worked(work);
                }
            };
            SyncInfoSet collectionSet = new SyncInfoSet(){

                public void add(SyncInfo info) {
                    super.add(info);
                    SubscriberSyncInfoEventHandler.this.queueDispatchEvent(new SubscriberSyncInfoEvent(info.getLocal(), 2, 0, info));
                }

                public void addError(ITeamStatus status) {
                    TeamStatus ts;
                    IResource resource;
                    if (status instanceof TeamStatus && (resource = (ts = (TeamStatus)status).getResource()) != null && !resource.getProject().isAccessible()) {
                        return;
                    }
                    super.addError(status);
                    TeamPlugin.getPlugin().getLog().log((IStatus)status);
                    SubscriberSyncInfoEventHandler.this.syncSetInput.handleError(status);
                }

                public void remove(IResource resource) {
                    super.remove(resource);
                    SubscriberSyncInfoEventHandler.this.queueDispatchEvent(new SubscriberEventHandler.SubscriberEvent(resource, 1, 0));
                }
            };
            this.syncSetInput.getSubscriber().collectOutOfSync(new IResource[]{resource}, depth, collectionSet, (IProgressMonitor)collectionMonitor);
        }
        finally {
            monitor.done();
        }
    }

    protected void dispatchEvents(SubscriberEventHandler.SubscriberEvent[] events, IProgressMonitor monitor) {
        SubscriberSyncInfoSet syncSet = this.syncSetInput.getSyncSet();
        try {
            syncSet.beginInput();
            int i = 0;
            while (i < events.length) {
                SubscriberEventHandler.SubscriberEvent event = events[i];
                switch (event.getType()) {
                    case 2: {
                        if (!(event instanceof SubscriberSyncInfoEvent)) break;
                        SubscriberSyncInfoEvent se = (SubscriberSyncInfoEvent)event;
                        this.syncSetInput.collect(se.getResult(), monitor);
                        break;
                    }
                    case 1: {
                        syncSet.remove(event.getResource(), event.getDepth());
                    }
                }
                ++i;
            }
        }
        finally {
            syncSet.endInput(monitor);
        }
    }

    public void reset(IResource[] roots) {
        RootResourceSynchronizationScope scope = (RootResourceSynchronizationScope)this.getScope();
        if (roots == null) {
            roots = this.getSubscriber().roots();
        }
        scope.setRoots(roots);
    }

    protected synchronized void reset(ResourceTraversal[] oldTraversals, ResourceTraversal[] newTraversals) {
        this.run(new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) throws CoreException {
                SubscriberSyncInfoEventHandler.this.syncSetInput.reset(monitor);
            }
        }, false);
        super.reset(oldTraversals, newTraversals);
    }

    private class SubscriberSyncInfoEvent
    extends SubscriberEventHandler.SubscriberEvent {
        private final SyncInfo result;

        public SubscriberSyncInfoEvent(IResource resource, int type, int depth, SyncInfo result) {
            super(resource, type, depth);
            this.result = result;
        }

        public SyncInfo getResult() {
            return this.result;
        }
    }
}

