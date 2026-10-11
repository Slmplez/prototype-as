/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IStorage
 *  org.eclipse.core.resources.mapping.RemoteResourceMappingContext
 *  org.eclipse.core.resources.mapping.ResourceTraversal
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.team.core.subscribers;

import java.util.HashSet;
import java.util.Set;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IStorage;
import org.eclipse.core.resources.mapping.RemoteResourceMappingContext;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.subscribers.Subscriber;
import org.eclipse.team.core.synchronize.SyncInfo;
import org.eclipse.team.core.variants.IResourceVariant;
import org.eclipse.team.internal.core.Messages;
import org.eclipse.team.internal.core.Policy;

public class SubscriberResourceMappingContext
extends RemoteResourceMappingContext {
    private final Subscriber subscriber;
    private Set shallowRefresh = new HashSet();
    private Set deepRefresh = new HashSet();
    private boolean autoRefresh;

    public static RemoteResourceMappingContext createContext(Subscriber subscriber) {
        return new SubscriberResourceMappingContext(subscriber, true);
    }

    public SubscriberResourceMappingContext(Subscriber subscriber, boolean autoRefresh) {
        this.subscriber = subscriber;
        this.autoRefresh = autoRefresh;
    }

    public final boolean hasRemoteChange(IResource resource, IProgressMonitor monitor) throws CoreException {
        try {
            monitor.beginTask(null, 100);
            this.ensureRefreshed(resource, 1, 0, monitor);
            SyncInfo syncInfo = this.subscriber.getSyncInfo(resource);
            this.validateRemote(resource, syncInfo);
            if (syncInfo == null) {
                return false;
            }
            int direction = SyncInfo.getDirection(syncInfo.getKind());
            boolean bl = direction == 8 || direction == 12;
            return bl;
        }
        finally {
            monitor.done();
        }
    }

    public boolean hasLocalChange(IResource resource, IProgressMonitor monitor) throws CoreException {
        SyncInfo syncInfo = this.subscriber.getSyncInfo(resource);
        if (syncInfo == null) {
            return false;
        }
        int direction = SyncInfo.getDirection(syncInfo.getKind());
        return direction == 4 || direction == 12;
    }

    public final IStorage fetchRemoteContents(IFile file, IProgressMonitor monitor) throws CoreException {
        try {
            monitor.beginTask(null, 100);
            this.ensureRefreshed((IResource)file, 0, 1, Policy.subMonitorFor(monitor, 10));
            SyncInfo syncInfo = this.subscriber.getSyncInfo((IResource)file);
            IResourceVariant remote = this.validateRemote((IResource)file, syncInfo);
            if (remote == null) {
                return null;
            }
            IStorage iStorage = remote.getStorage(Policy.subMonitorFor(monitor, 90));
            return iStorage;
        }
        finally {
            monitor.done();
        }
    }

    public final IStorage fetchBaseContents(IFile file, IProgressMonitor monitor) throws CoreException {
        try {
            monitor.beginTask(null, 100);
            this.ensureRefreshed((IResource)file, 0, 1, Policy.subMonitorFor(monitor, 10));
            SyncInfo syncInfo = this.subscriber.getSyncInfo((IResource)file);
            IResourceVariant base = this.validateBase((IResource)file, syncInfo);
            if (base == null) {
                return null;
            }
            IStorage iStorage = base.getStorage(Policy.subMonitorFor(monitor, 90));
            return iStorage;
        }
        finally {
            monitor.done();
        }
    }

    public final IResource[] fetchMembers(IContainer container, IProgressMonitor monitor) throws CoreException {
        try {
            monitor.beginTask(null, 100);
            this.ensureRefreshed((IResource)container, 1, 0, Policy.subMonitorFor(monitor, 100));
            SyncInfo syncInfo = this.subscriber.getSyncInfo((IResource)container);
            if (this.validateRemote((IResource)container, syncInfo) == null) {
                IResource[] iResourceArray = new IResource[]{};
                return iResourceArray;
            }
            IResource[] iResourceArray = this.subscriber.members((IResource)container);
            return iResourceArray;
        }
        finally {
            monitor.done();
        }
    }

    public final void refresh(ResourceTraversal[] traversals, int flags, IProgressMonitor monitor) throws CoreException {
        this.subscriber.refresh(traversals, monitor);
        int i = 0;
        while (i < traversals.length) {
            ResourceTraversal traversal = traversals[i];
            this.refreshed(traversal.getResources(), traversal.getDepth());
            ++i;
        }
    }

    protected void refresh(IResource[] resources, int depth, int flags, IProgressMonitor monitor) throws TeamException {
        this.subscriber.refresh(resources, depth, monitor);
        this.refreshed(resources, depth);
    }

    protected final void refreshed(IResource[] resources, int depth) {
        int i = 0;
        while (i < resources.length) {
            IResource resource = resources[i];
            if (depth == 1 || resource.getType() == 1) {
                this.shallowRefresh.add(resource);
            } else if (depth == 2) {
                this.deepRefresh.add(resource);
            }
            ++i;
        }
    }

    private void ensureRefreshed(IResource resource, int depth, int flags, IProgressMonitor monitor) throws TeamException {
        if (this.autoRefresh) {
            if (depth == 2) {
                if (this.wasRefreshedDeeply(resource)) {
                    return;
                }
                if (resource.getType() == 1 && this.wasRefreshedShallow(resource)) {
                    return;
                }
            } else if (this.wasRefreshedShallow(resource)) {
                return;
            }
            this.refresh(new IResource[]{resource}, depth, flags, monitor);
        }
    }

    private boolean wasRefreshedShallow(IResource resource) {
        if (this.shallowRefresh.contains(resource)) {
            return true;
        }
        if (resource.getType() == 1 && this.shallowRefresh.contains(resource.getParent())) {
            return true;
        }
        return this.wasRefreshedDeeply(resource);
    }

    private boolean wasRefreshedDeeply(IResource resource) {
        if (resource.getType() == 8) {
            return false;
        }
        if (this.deepRefresh.contains(resource)) {
            return true;
        }
        return this.wasRefreshedDeeply((IResource)resource.getParent());
    }

    private IResourceVariant validateRemote(IResource resource, SyncInfo syncInfo) throws CoreException {
        if (syncInfo == null) {
            return null;
        }
        IResourceVariant remote = syncInfo.getRemote();
        if (remote == null) {
            return null;
        }
        return this.validateRemote(resource, remote);
    }

    private IResourceVariant validateRemote(IResource resource, IResourceVariant remote) throws CoreException {
        boolean containerExpected;
        boolean bl = containerExpected = resource.getType() != 1;
        if (remote.isContainer() && !containerExpected) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.team.core", 366, String.valueOf(Messages.SubscriberResourceMappingContext_0) + resource.getFullPath().toString(), null));
        }
        if (!remote.isContainer() && containerExpected) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.team.core", 366, String.valueOf(Messages.SubscriberResourceMappingContext_1) + resource.getFullPath().toString(), null));
        }
        return remote;
    }

    private IResourceVariant validateBase(IResource resource, SyncInfo syncInfo) throws CoreException {
        if (syncInfo == null) {
            return null;
        }
        IResourceVariant base = syncInfo.getBase();
        if (base == null) {
            return null;
        }
        return this.validateRemote(resource, base);
    }

    public void setAutoRefresh(boolean autoRefresh) {
        this.autoRefresh = autoRefresh;
    }

    public boolean isThreeWay() {
        return this.subscriber.getResourceComparator().isThreeWay();
    }

    public boolean contentDiffers(IFile file, IProgressMonitor monitor) throws CoreException {
        return this.hasRemoteChange((IResource)file, monitor) || this.hasLocalChange((IResource)file, monitor);
    }

    public IProject[] getProjects() {
        HashSet<IProject> projects = new HashSet<IProject>();
        IResource[] roots = this.subscriber.roots();
        int i = 0;
        while (i < roots.length) {
            IResource resource = roots[i];
            projects.add(resource.getProject());
            ++i;
        }
        return projects.toArray(new IProject[projects.size()]);
    }
}

