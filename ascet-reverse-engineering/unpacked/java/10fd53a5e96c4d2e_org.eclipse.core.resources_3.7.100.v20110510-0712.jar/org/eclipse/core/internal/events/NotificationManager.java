/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 */
package org.eclipse.core.internal.events;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.internal.events.ILifecycleListener;
import org.eclipse.core.internal.events.LifecycleEvent;
import org.eclipse.core.internal.events.ResourceChangeEvent;
import org.eclipse.core.internal.events.ResourceChangeListenerList;
import org.eclipse.core.internal.events.ResourceComparator;
import org.eclipse.core.internal.events.ResourceDelta;
import org.eclipse.core.internal.events.ResourceDeltaFactory;
import org.eclipse.core.internal.events.ResourceStats;
import org.eclipse.core.internal.resources.IManager;
import org.eclipse.core.internal.resources.MarkerSet;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.watson.ElementTree;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;

public class NotificationManager
implements IManager,
ILifecycleListener {
    private static final long NOTIFICATION_DELAY = 1500L;
    private Set<Thread> avoidNotify = new HashSet<Thread>();
    protected boolean isNotifying;
    private ResourceDelta lastDelta;
    private long lastDeltaId;
    private ElementTree lastDeltaState;
    protected long lastNotifyDuration = 0L;
    private long lastPostBuildId = 0L;
    private ElementTree lastPostBuildTree;
    private long lastPostChangeId = 0L;
    private ElementTree lastPostChangeTree;
    private ResourceChangeListenerList listeners;
    protected boolean notificationRequested = false;
    private Job notifyJob;
    Workspace workspace;

    public NotificationManager(Workspace workspace) {
        this.workspace = workspace;
        this.listeners = new ResourceChangeListenerList();
        this.notifyJob = new NotifyJob();
    }

    public void addListener(IResourceChangeListener listener, int eventMask) {
        this.listeners.add(listener, eventMask);
        if (ResourceStats.TRACE_LISTENERS) {
            ResourceStats.listenerAdded(listener);
        }
    }

    public boolean beginAvoidNotify() {
        return this.avoidNotify.add(Thread.currentThread());
    }

    public void beginNotify() {
        this.notifyJob.cancel();
        this.notificationRequested = false;
    }

    public void broadcastChanges(ElementTree lastState, ResourceChangeEvent event, boolean lockTree) {
        int type = event.getType();
        try {
            int trigger;
            if (!this.listeners.hasListenerFor(type)) {
                return;
            }
            this.isNotifying = true;
            ResourceDelta delta = this.getDelta(lastState, type);
            if (!(delta != null && delta.getKind() != 0 || (trigger = event.getBuildKind()) != 9 && trigger != 0)) {
                return;
            }
            event.setDelta(delta);
            long start = System.currentTimeMillis();
            this.notify(this.getListeners(), event, lockTree);
            this.lastNotifyDuration = System.currentTimeMillis() - start;
        }
        finally {
            this.isNotifying = false;
            this.cleanUp(lastState, type);
        }
    }

    private void cleanUp(ElementTree lastState, int type) {
        boolean postChange;
        boolean bl = postChange = type == 1;
        if (postChange || type == 16) {
            long id = this.workspace.getMarkerManager().getChangeId();
            lastState.immutable();
            if (postChange) {
                this.lastPostChangeTree = lastState;
                this.lastPostChangeId = id;
            } else {
                this.lastPostBuildTree = lastState;
                this.lastPostBuildId = id;
            }
            this.workspace.getMarkerManager().resetMarkerDeltas(Math.min(this.lastPostBuildId, this.lastPostChangeId));
            this.lastDelta = null;
            this.lastDeltaState = lastState;
        }
    }

    public void broadcastChanges(IResourceChangeListener listener, int type, IResourceDelta delta) {
        ResourceChangeListenerList.ListenerEntry[] entries = new ResourceChangeListenerList.ListenerEntry[]{new ResourceChangeListenerList.ListenerEntry(listener, type)};
        this.notify(entries, new ResourceChangeEvent(this.workspace, type, 0, delta), false);
    }

    public void endAvoidNotify() {
        this.avoidNotify.remove(Thread.currentThread());
    }

    public void requestNotify() {
        if (this.isNotifying || this.avoidNotify.contains(Thread.currentThread())) {
            return;
        }
        long delay = Math.max(1500L, this.lastNotifyDuration * 10L);
        if (this.notifyJob.getState() == 0) {
            this.notifyJob.schedule(delay);
        }
    }

    protected ResourceDelta getDelta(ElementTree tree, int type) {
        boolean postChange;
        long id = this.workspace.getMarkerManager().getChangeId();
        boolean bl = postChange = type == 1;
        if (!postChange && this.lastDelta != null && !ElementTree.hasChanges(tree, this.lastDeltaState, ResourceComparator.getNotificationComparator(), true)) {
            if (id != this.lastDeltaId) {
                Map<IPath, MarkerSet> markerDeltas = this.workspace.getMarkerManager().getMarkerDeltas(this.lastPostBuildId);
                this.lastDelta.updateMarkers(markerDeltas);
            }
        } else {
            ElementTree oldTree = postChange ? this.lastPostChangeTree : this.lastPostBuildTree;
            long markerId = postChange ? this.lastPostChangeId : this.lastPostBuildId;
            this.lastDelta = ResourceDeltaFactory.computeDelta(this.workspace, oldTree, tree, (IPath)Path.ROOT, markerId + 1L);
        }
        this.lastDeltaState = tree;
        this.lastDeltaId = id;
        return this.lastDelta;
    }

    protected ResourceChangeListenerList.ListenerEntry[] getListeners() {
        return this.listeners.getListeners();
    }

    public void handleEvent(LifecycleEvent event) {
        switch (event.kind) {
            case 1: {
                if (!this.listeners.hasListenerFor(2)) {
                    return;
                }
                IProject project = (IProject)event.resource;
                this.notify(this.getListeners(), new ResourceChangeEvent(this.workspace, 2, project), true);
                break;
            }
            case 64: {
                if (event.resource.equals(event.newResource)) {
                    return;
                }
            }
            case 16: {
                if (!this.listeners.hasListenerFor(4)) {
                    return;
                }
                IProject project = (IProject)event.resource;
                this.notify(this.getListeners(), new ResourceChangeEvent(this.workspace, 4, project), true);
                break;
            }
            case 4096: {
                if (!this.listeners.hasListenerFor(32)) {
                    return;
                }
                if (event.resource.getType() == 4) {
                    this.notify(this.getListeners(), new ResourceChangeEvent(event.resource, 32, event.resource), true);
                    break;
                }
                if (event.resource.getType() != 8) break;
                this.notify(this.getListeners(), new ResourceChangeEvent(this.workspace, 32, null), true);
            }
        }
    }

    private void notify(ResourceChangeListenerList.ListenerEntry[] resourceListeners, final IResourceChangeEvent event, boolean lockTree) {
        int type = event.getType();
        boolean oldLock = this.workspace.isTreeLocked();
        if (lockTree) {
            this.workspace.setTreeLocked(true);
        }
        try {
            int i = 0;
            while (i < resourceListeners.length) {
                if ((type & resourceListeners[i].eventMask) != 0) {
                    final IResourceChangeListener listener = resourceListeners[i].listener;
                    if (ResourceStats.TRACE_LISTENERS) {
                        ResourceStats.startNotify(listener);
                    }
                    SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                        public void handleException(Throwable e) {
                        }

                        public void run() throws Exception {
                            listener.resourceChanged(event);
                        }
                    });
                    if (ResourceStats.TRACE_LISTENERS) {
                        ResourceStats.endNotify();
                    }
                }
                ++i;
            }
        }
        finally {
            if (lockTree) {
                this.workspace.setTreeLocked(oldLock);
            }
        }
    }

    public void removeListener(IResourceChangeListener listener) {
        this.listeners.remove(listener);
        if (ResourceStats.TRACE_LISTENERS) {
            ResourceStats.listenerRemoved(listener);
        }
    }

    public boolean shouldNotify() {
        return !this.isNotifying && this.notificationRequested;
    }

    public void shutdown(IProgressMonitor monitor) {
        this.listeners = new ResourceChangeListenerList();
    }

    public void startup(IProgressMonitor monitor) {
        this.lastPostBuildTree = this.lastPostChangeTree = this.workspace.getElementTree();
        this.workspace.addLifecycleListener(this);
    }

    class NotifyJob
    extends Job {
        private final IWorkspaceRunnable noop;

        public NotifyJob() {
            super(Messages.resources_updating);
            this.noop = new IWorkspaceRunnable(){

                public void run(IProgressMonitor monitor) {
                }
            };
            this.setSystem(true);
        }

        public IStatus run(IProgressMonitor monitor) {
            if (monitor.isCanceled()) {
                return Status.CANCEL_STATUS;
            }
            NotificationManager.this.notificationRequested = true;
            try {
                NotificationManager.this.workspace.run(this.noop, null, 0, null);
            }
            catch (CoreException e) {
                return e.getStatus();
            }
            return Status.OK_STATUS;
        }
    }
}

