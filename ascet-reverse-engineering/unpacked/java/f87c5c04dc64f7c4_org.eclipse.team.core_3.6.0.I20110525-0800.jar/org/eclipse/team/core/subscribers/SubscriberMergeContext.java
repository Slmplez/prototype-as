/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.resources.mapping.ResourceTraversal
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ProgressMonitorWrapper
 */
package org.eclipse.team.core.subscribers;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ProgressMonitorWrapper;
import org.eclipse.team.core.diff.DiffFilter;
import org.eclipse.team.core.mapping.ISynchronizationScopeManager;
import org.eclipse.team.core.mapping.provider.MergeContext;
import org.eclipse.team.core.mapping.provider.ResourceDiffTree;
import org.eclipse.team.core.subscribers.Subscriber;
import org.eclipse.team.core.synchronize.SyncInfo;
import org.eclipse.team.internal.core.mapping.GroupProgressMonitor;
import org.eclipse.team.internal.core.subscribers.SubscriberDiffTreeEventHandler;

public abstract class SubscriberMergeContext
extends MergeContext {
    private Subscriber subscriber;
    private SubscriberDiffTreeEventHandler handler;
    private final ISynchronizationScopeManager manager;
    static /* synthetic */ Class class$0;

    protected SubscriberMergeContext(Subscriber subscriber, ISynchronizationScopeManager manager) {
        super(manager, SubscriberMergeContext.getType(subscriber), new ResourceDiffTree());
        this.subscriber = subscriber;
        this.manager = manager;
    }

    private static int getType(Subscriber subscriber) {
        return subscriber.getResourceComparator().isThreeWay() ? 3 : 2;
    }

    protected void initialize() {
        this.handler = new SubscriberDiffTreeEventHandler(this.subscriber, this.manager, (ResourceDiffTree)this.getDiffTree(), this.getDiffFilter());
        this.handler.setJobFamily(this);
        this.handler.start();
    }

    protected DiffFilter getDiffFilter() {
        return null;
    }

    public void refresh(ResourceTraversal[] traversals, int flags, IProgressMonitor monitor) throws CoreException {
        GroupProgressMonitor group = this.getGroup(monitor);
        if (group != null) {
            this.handler.setProgressGroupHint(group.getGroup(), group.getTicks());
        }
        this.handler.initializeIfNeeded();
        this.subscriber.refresh(traversals, monitor);
    }

    private GroupProgressMonitor getGroup(IProgressMonitor monitor) {
        if (monitor instanceof GroupProgressMonitor) {
            return (GroupProgressMonitor)monitor;
        }
        if (monitor instanceof ProgressMonitorWrapper) {
            ProgressMonitorWrapper wrapper = (ProgressMonitorWrapper)monitor;
            return this.getGroup(wrapper.getWrappedProgressMonitor());
        }
        return null;
    }

    public void dispose() {
        this.handler.shutdown();
        super.dispose();
    }

    protected SyncInfo getSyncInfo(IResource resource) throws CoreException {
        return this.handler.getSubscriber().getSyncInfo(resource);
    }

    public Subscriber getSubscriber() {
        return this.subscriber;
    }

    protected void runInBackground(IWorkspaceRunnable runnable) {
        this.handler.run(runnable, false);
    }

    public Object getAdapter(Class adapter) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.team.internal.core.subscribers.SubscriberDiffTreeEventHandler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter == clazz) {
            return this.handler;
        }
        return super.getAdapter(adapter);
    }
}

