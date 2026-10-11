/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.mapping.ResourceMapping
 *  org.eclipse.core.resources.mapping.ResourceMappingContext
 *  org.eclipse.core.resources.mapping.ResourceTraversal
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.team.core.subscribers;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.mapping.ResourceMapping;
import org.eclipse.core.resources.mapping.ResourceMappingContext;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.osgi.util.NLS;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.TeamStatus;
import org.eclipse.team.core.diff.IDiff;
import org.eclipse.team.core.diff.IDiffVisitor;
import org.eclipse.team.core.diff.IThreeWayDiff;
import org.eclipse.team.core.subscribers.ISubscriberChangeEvent;
import org.eclipse.team.core.subscribers.ISubscriberChangeListener;
import org.eclipse.team.core.subscribers.SubscriberResourceMappingContext;
import org.eclipse.team.core.synchronize.SyncInfo;
import org.eclipse.team.core.synchronize.SyncInfoSet;
import org.eclipse.team.core.variants.IResourceVariantComparator;
import org.eclipse.team.internal.core.Messages;
import org.eclipse.team.internal.core.Policy;
import org.eclipse.team.internal.core.mapping.SyncInfoToDiffConverter;

public abstract class Subscriber {
    private List listeners = new ArrayList(1);

    public abstract String getName();

    public abstract boolean isSupervised(IResource var1) throws TeamException;

    public abstract IResource[] members(IResource var1) throws TeamException;

    public abstract IResource[] roots();

    public abstract SyncInfo getSyncInfo(IResource var1) throws TeamException;

    public abstract IResourceVariantComparator getResourceComparator();

    public abstract void refresh(IResource[] var1, int var2, IProgressMonitor var3) throws TeamException;

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void addListener(ISubscriberChangeListener listener) {
        List list = this.listeners;
        synchronized (list) {
            if (!this.listeners.contains(listener)) {
                this.listeners.add(listener);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void removeListener(ISubscriberChangeListener listener) {
        List list = this.listeners;
        synchronized (list) {
            this.listeners.remove(listener);
        }
    }

    public void collectOutOfSync(IResource[] resources, int depth, SyncInfoSet set, IProgressMonitor monitor) {
        try {
            monitor.beginTask(null, 100 * resources.length);
            int i = 0;
            while (i < resources.length) {
                IResource resource = resources[i];
                IProgressMonitor subMonitor = Policy.subMonitorFor(monitor, 100);
                subMonitor.beginTask(null, -1);
                this.collect(resource, depth, set, subMonitor);
                subMonitor.done();
                ++i;
            }
        }
        finally {
            monitor.done();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void fireTeamResourceChange(final ISubscriberChangeEvent[] deltas) {
        ISubscriberChangeListener[] allListeners;
        List list = this.listeners;
        synchronized (list) {
            allListeners = this.listeners.toArray(new ISubscriberChangeListener[this.listeners.size()]);
        }
        int i = 0;
        while (i < allListeners.length) {
            final ISubscriberChangeListener listener = allListeners[i];
            SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                public void handleException(Throwable exception) {
                }

                public void run() throws Exception {
                    listener.subscriberResourceChanged(deltas);
                }
            });
            ++i;
        }
    }

    private void collect(IResource resource, int depth, SyncInfoSet set, IProgressMonitor monitor) {
        Policy.checkCanceled(monitor);
        if (resource.getType() != 1 && depth != 0) {
            try {
                IResource[] members = this.members(resource);
                int i = 0;
                while (i < members.length) {
                    this.collect(members[i], depth == 2 ? 2 : 0, set, monitor);
                    ++i;
                }
            }
            catch (TeamException e) {
                set.addError(new TeamStatus(4, "org.eclipse.team.core", 2, NLS.bind((String)Messages.SubscriberEventHandler_8, (Object[])new String[]{resource.getFullPath().toString(), e.getMessage()}), (Throwable)((Object)e), resource));
            }
        }
        monitor.subTask(NLS.bind((String)Messages.SubscriberEventHandler_2, (Object[])new String[]{resource.getFullPath().toString()}));
        try {
            SyncInfo info = this.getSyncInfo(resource);
            if (info == null || info.getKind() == 0) {
                set.remove(resource);
            } else {
                set.add(info);
            }
        }
        catch (TeamException e) {
            set.addError(new TeamStatus(4, "org.eclipse.team.core", 1, NLS.bind((String)Messages.SubscriberEventHandler_9, (Object[])new String[]{resource.getFullPath().toString(), e.getMessage()}), (Throwable)((Object)e), resource));
        }
        monitor.worked(1);
    }

    public IDiff getDiff(IResource resource) throws CoreException {
        SyncInfo info = this.getSyncInfo(resource);
        if (info == null || info.getKind() == 0) {
            return null;
        }
        return SyncInfoToDiffConverter.getDefault().getDeltaFor(info);
    }

    public void accept(ResourceTraversal[] traversals, IDiffVisitor visitor) throws CoreException {
        int i = 0;
        while (i < traversals.length) {
            ResourceTraversal traversal = traversals[i];
            this.accept(traversal.getResources(), traversal.getDepth(), visitor);
            ++i;
        }
    }

    public void accept(IResource[] resources, int depth, IDiffVisitor visitor) throws CoreException {
        int i = 0;
        while (i < resources.length) {
            IResource resource = resources[i];
            this.accept(resource, depth, visitor);
            ++i;
        }
    }

    private void accept(IResource resource, int depth, IDiffVisitor visitor) throws CoreException {
        IDiff node = this.getDiff(resource);
        if (node != null && node.getKind() != 0 && !visitor.visit(node)) {
            return;
        }
        if (depth != 0) {
            IResource[] members = this.members(resource);
            int newDepth = depth == 2 ? 2 : 0;
            int i = 0;
            while (i < members.length) {
                IResource member = members[i];
                this.accept(member, newDepth, visitor);
                ++i;
            }
        }
    }

    public void refresh(ResourceTraversal[] traversals, IProgressMonitor monitor) throws TeamException {
        monitor.beginTask(null, 100 * traversals.length);
        int i = 0;
        while (i < traversals.length) {
            ResourceTraversal traversal = traversals[i];
            this.refresh(traversal.getResources(), traversal.getDepth(), Policy.subMonitorFor(monitor, 100));
            ++i;
        }
        monitor.done();
    }

    public int getState(ResourceMapping mapping, int stateMask, IProgressMonitor monitor) throws CoreException {
        ResourceTraversal[] traversals = mapping.getTraversals((ResourceMappingContext)new SubscriberResourceMappingContext(this, true), monitor);
        final int[] direction = new int[1];
        final int[] kind = new int[1];
        this.accept(traversals, new IDiffVisitor(){

            public boolean visit(IDiff diff) {
                if (diff instanceof IThreeWayDiff) {
                    IThreeWayDiff twd = (IThreeWayDiff)diff;
                    direction[0] = direction[0] | twd.getDirection();
                }
                int diffKind = diff.getKind();
                if (kind[0] == 0) {
                    kind[0] = diffKind;
                }
                if (kind[0] != diffKind) {
                    kind[0] = 4;
                }
                return diffKind == 4;
            }
        });
        return (direction[0] | kind[0]) & stateMask;
    }
}

