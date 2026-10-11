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
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.team.internal.core.subscribers;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.osgi.util.NLS;
import org.eclipse.team.core.TeamStatus;
import org.eclipse.team.core.diff.DiffFilter;
import org.eclipse.team.core.diff.IDiff;
import org.eclipse.team.core.diff.IDiffVisitor;
import org.eclipse.team.core.mapping.IResourceDiffTree;
import org.eclipse.team.core.mapping.ISynchronizationScopeManager;
import org.eclipse.team.core.mapping.provider.ResourceDiffTree;
import org.eclipse.team.core.subscribers.Subscriber;
import org.eclipse.team.internal.core.BackgroundEventHandler;
import org.eclipse.team.internal.core.Messages;
import org.eclipse.team.internal.core.Policy;
import org.eclipse.team.internal.core.subscribers.SubscriberEventHandler;
import org.eclipse.team.internal.core.subscribers.SubscriberResourceCollector;

public class SubscriberDiffTreeEventHandler
extends SubscriberEventHandler {
    private static final int STATE_NEW = 0;
    public static final int STATE_STARTED = 1;
    private static final int STATE_OK_TO_INITIALIZE = 3;
    private static final int STATE_COLLECTING_CHANGES = 5;
    private static final int STATE_SHUTDOWN = 8;
    private static final int EXCEPTION_NONE = 0;
    private static final int EXCEPTION_CANCELED = 1;
    private static final int EXCEPTION_ERROR = 2;
    private ResourceDiffTree tree;
    private SubscriberDiffCollector collector;
    private ISynchronizationScopeManager manager;
    private Object family;
    private DiffFilter filter;
    private int state = 0;
    private int exceptionState = 0;

    public SubscriberDiffTreeEventHandler(Subscriber subscriber, ISynchronizationScopeManager manager, ResourceDiffTree tree, DiffFilter filter) {
        super(subscriber, manager.getScope());
        this.manager = manager;
        this.tree = tree;
        this.collector = new SubscriberDiffCollector(subscriber);
        this.filter = filter;
    }

    protected void reset(ResourceTraversal[] traversals, int type) {
        this.exceptionState = 0;
        if (!this.manager.isInitialized() && this.state == 3) {
            this.queueEvent(new BackgroundEventHandler.RunnableEvent(new IWorkspaceRunnable(){

                public void run(IProgressMonitor monitor) throws CoreException {
                    if (SubscriberDiffTreeEventHandler.this.state == 3) {
                        try {
                            SubscriberDiffTreeEventHandler.this.prepareScope(monitor);
                            SubscriberDiffTreeEventHandler.this.state = 5;
                        }
                        finally {
                            if (SubscriberDiffTreeEventHandler.this.state != 5) {
                                SubscriberDiffTreeEventHandler.this.state = 1;
                                if (SubscriberDiffTreeEventHandler.this.exceptionState == 0) {
                                    SubscriberDiffTreeEventHandler.this.exceptionState = 1;
                                }
                            }
                        }
                    }
                }
            }, true), true);
        } else if (this.manager.isInitialized()) {
            this.state = 5;
            super.reset(traversals, type);
        }
    }

    public void reset() {
        this.reset(this.getScope().getTraversals(), 3);
    }

    protected void prepareScope(IProgressMonitor monitor) {
        try {
            this.manager.initialize(monitor);
        }
        catch (CoreException e) {
            this.handleException(e);
        }
        ResourceTraversal[] traversals = this.manager.getScope().getTraversals();
        if (traversals.length > 0) {
            this.reset(traversals, 3);
        }
    }

    protected void handleChange(IResource resource) throws CoreException {
        IDiff node = this.getSubscriber().getDiff(resource);
        if (node == null) {
            this.queueDispatchEvent(new SubscriberEventHandler.SubscriberEvent(this, resource, 1, 0));
        } else if (this.isInScope(resource)) {
            this.queueDispatchEvent(new SubscriberDiffChangedEvent(resource, 2, 0, node));
        }
    }

    private boolean isInScope(IResource resource) {
        return this.manager.getScope().contains(resource);
    }

    protected void collectAll(IResource resource, int depth, final IProgressMonitor monitor) {
        Policy.checkCanceled(monitor);
        monitor.beginTask(null, -1);
        ResourceTraversal[] traversals = new ResourceTraversal[]{new ResourceTraversal(new IResource[]{resource}, depth, 0)};
        try {
            try {
                this.getSubscriber().accept(traversals, new IDiffVisitor(){

                    public boolean visit(IDiff diff) {
                        Policy.checkCanceled(monitor);
                        monitor.subTask(NLS.bind((String)Messages.SubscriberDiffTreeEventHandler_0, (Object)SubscriberDiffTreeEventHandler.this.tree.getResource(diff).getFullPath().toString()));
                        SubscriberDiffTreeEventHandler.this.queueDispatchEvent(new SubscriberDiffChangedEvent(SubscriberDiffTreeEventHandler.this.tree.getResource(diff), 2, 0, diff));
                        SubscriberDiffTreeEventHandler.this.handlePreemptiveEvents(monitor);
                        SubscriberDiffTreeEventHandler.this.handlePendingDispatch(monitor);
                        return true;
                    }
                });
            }
            catch (CoreException e) {
                if (resource.getProject().isAccessible()) {
                    this.handleException(e, resource, 2, e.getMessage());
                }
                monitor.done();
            }
        }
        finally {
            monitor.done();
        }
    }

    protected void dispatchEvents(SubscriberEventHandler.SubscriberEvent[] events, IProgressMonitor monitor) {
        try {
            this.tree.beginInput();
            int i = 0;
            while (i < events.length) {
                SubscriberEventHandler.SubscriberEvent event = events[i];
                switch (event.getType()) {
                    case 2: {
                        if (!(event instanceof SubscriberDiffChangedEvent)) break;
                        SubscriberDiffChangedEvent se = (SubscriberDiffChangedEvent)event;
                        IDiff changedNode = se.getChangedNode();
                        if (changedNode.getKind() == 0) {
                            this.tree.remove(changedNode.getPath());
                            break;
                        }
                        this.addDiff(changedNode, monitor);
                        break;
                    }
                    case 1: {
                        IDiff[] nodesToRemove = this.tree.getDiffs(new ResourceTraversal[]{event.asTraversal()});
                        int j = 0;
                        while (j < nodesToRemove.length) {
                            IDiff node = nodesToRemove[j];
                            this.tree.remove(node.getPath());
                            ++j;
                        }
                        break;
                    }
                }
                ++i;
            }
        }
        finally {
            this.tree.endInput(monitor);
        }
    }

    private void addDiff(IDiff diff, IProgressMonitor monitor) {
        if (this.filter == null || this.filter.select(diff, monitor)) {
            this.tree.add(diff);
        } else {
            this.tree.remove(diff.getPath());
        }
    }

    public IResourceDiffTree getTree() {
        return this.tree;
    }

    public Subscriber getSubscriber() {
        return super.getSubscriber();
    }

    public void shutdown() {
        this.state = 8;
        this.collector.dispose();
        super.shutdown();
    }

    protected Object getJobFamiliy() {
        return this.family;
    }

    public void setJobFamily(Object family) {
        this.family = family;
    }

    protected void handleException(CoreException e, IResource resource, int code, String message) {
        super.handleException(e, resource, code, message);
        this.tree.reportError(new TeamStatus(4, "org.eclipse.team.core", code, message, e, resource));
        this.exceptionState = 2;
    }

    protected void handleCancel(OperationCanceledException e) {
        super.handleCancel(e);
        this.tree.reportError(new TeamStatus(4, "org.eclipse.team.core", 3, Messages.SubscriberEventHandler_12, e, (IResource)ResourcesPlugin.getWorkspace().getRoot()));
        if (this.exceptionState == 0) {
            this.exceptionState = 1;
        }
    }

    public DiffFilter getFilter() {
        return this.filter;
    }

    public void setFilter(DiffFilter filter) {
        this.filter = filter;
    }

    public synchronized void initializeIfNeeded() {
        if (this.state == 1) {
            this.state = 3;
            this.reset(this.getScope().getTraversals(), 3);
        } else if (this.exceptionState != 0) {
            this.reset(this.getScope().getTraversals(), 3);
        }
    }

    public synchronized void start() {
        super.start();
        if (this.state == 0) {
            this.state = 1;
        }
    }

    public int getState() {
        return this.state;
    }

    protected boolean isSystemJob() {
        if (this.manager != null && !this.manager.isInitialized()) {
            return false;
        }
        return super.isSystemJob();
    }

    public synchronized void remove(IResource resource) {
        if (this.state == 1) {
            return;
        }
        super.remove(resource);
    }

    public void change(IResource resource, int depth) {
        if (this.state == 1) {
            return;
        }
        super.change(resource, depth);
    }

    private class SubscriberDiffChangedEvent
    extends SubscriberEventHandler.SubscriberEvent {
        private final IDiff node;

        public SubscriberDiffChangedEvent(IResource resource, int type, int depth, IDiff node) {
            super(SubscriberDiffTreeEventHandler.this, resource, type, depth);
            this.node = node;
        }

        public IDiff getChangedNode() {
            return this.node;
        }
    }

    private class SubscriberDiffCollector
    extends SubscriberResourceCollector {
        public SubscriberDiffCollector(Subscriber subscriber) {
            super(subscriber);
        }

        protected boolean hasMembers(IResource resource) {
            return SubscriberDiffTreeEventHandler.this.tree.members(resource).length > 0;
        }

        protected void remove(IResource resource) {
            SubscriberDiffTreeEventHandler.this.remove(resource);
        }

        protected void change(IResource resource, int depth) {
            SubscriberDiffTreeEventHandler.this.change(resource, depth);
        }
    }
}

