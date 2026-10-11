/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.team.core.variants;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.osgi.util.NLS;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.variants.IResourceVariant;
import org.eclipse.team.core.variants.IResourceVariantTree;
import org.eclipse.team.internal.core.Messages;
import org.eclipse.team.internal.core.Policy;
import org.eclipse.team.internal.core.TeamPlugin;

public abstract class AbstractResourceVariantTree
implements IResourceVariantTree {
    public IResource[] refresh(IResource[] resources, int depth, IProgressMonitor monitor) throws TeamException {
        ArrayList<IResource> changedResources = new ArrayList<IResource>();
        monitor.beginTask(null, 100 * resources.length);
        int i = 0;
        while (i < resources.length) {
            IResource resource = resources[i];
            IResource[] changed = this.refresh(resource, depth, Policy.subMonitorFor(monitor, 100));
            changedResources.addAll(Arrays.asList(changed));
            ++i;
        }
        monitor.done();
        return changedResources.toArray(new IResource[changedResources.size()]);
    }

    protected IResource[] refresh(IResource resource, int depth, IProgressMonitor monitor) throws TeamException {
        IResource[] changedResources = null;
        monitor.beginTask(null, 100);
        try {
            monitor.setTaskName(NLS.bind((String)Messages.SynchronizationCacheRefreshOperation_0, (Object[])new String[]{resource.getFullPath().makeRelative().toString()}));
            IResourceVariant tree = this.fetchVariant(resource, depth, Policy.subMonitorFor(monitor, 70));
            IProgressMonitor sub = Policy.infiniteSubMonitorFor(monitor, 30);
            try {
                sub.beginTask(null, 64);
                changedResources = this.collectChanges(resource, tree, depth, Policy.subMonitorFor(sub, 64));
            }
            finally {
                sub.done();
            }
        }
        finally {
            monitor.done();
        }
        if (changedResources == null) {
            return new IResource[0];
        }
        return changedResources;
    }

    protected IResource[] collectChanges(IResource local, IResourceVariant remote, int depth, IProgressMonitor monitor) throws TeamException {
        ArrayList changedResources = new ArrayList();
        this.collectChanges(local, remote, changedResources, depth, monitor);
        return changedResources.toArray(new IResource[changedResources.size()]);
    }

    protected abstract IResourceVariant[] fetchMembers(IResourceVariant var1, IProgressMonitor var2) throws TeamException;

    protected abstract IResourceVariant fetchVariant(IResource var1, int var2, IProgressMonitor var3) throws TeamException;

    protected IResource[] collectedMembers(IResource local, IResource[] members) throws TeamException {
        return new IResource[0];
    }

    protected abstract boolean setVariant(IResource var1, IResourceVariant var2) throws TeamException;

    private void collectChanges(IResource local, IResourceVariant remote, Collection changedResources, int depth, IProgressMonitor monitor) throws TeamException {
        boolean changed = this.setVariant(local, remote);
        if (changed) {
            changedResources.add(local);
        }
        if (depth == 0) {
            return;
        }
        Map children = this.mergedMembers(local, remote, monitor);
        Iterator it = children.keySet().iterator();
        while (it.hasNext()) {
            IResource localChild = (IResource)it.next();
            IResourceVariant remoteChild = (IResourceVariant)children.get(localChild);
            this.collectChanges(localChild, remoteChild, changedResources, depth == 2 ? 2 : 0, monitor);
        }
        IResource[] cleared = this.collectedMembers(local, children.keySet().toArray(new IResource[children.keySet().size()]));
        changedResources.addAll(Arrays.asList(cleared));
        monitor.worked(1);
    }

    private Map mergedMembers(IResource local, IResourceVariant remote, IProgressMonitor progress) throws TeamException {
        HashMap<IResource, IResourceVariant> mergedResources = new HashMap<IResource, IResourceVariant>();
        IResourceVariant[] remoteChildren = remote == null ? new IResourceVariant[]{} : this.fetchMembers(remote, progress);
        IResource[] localChildren = this.members(local);
        if (remoteChildren.length > 0 || localChildren.length > 0) {
            String name;
            int i;
            HashSet<String> allSet = new HashSet<String>(20);
            HashMap<String, IResource> localSet = null;
            HashMap<String, IResourceVariant> remoteSet = null;
            if (localChildren.length > 0) {
                localSet = new HashMap<String, IResource>(10);
                i = 0;
                while (i < localChildren.length) {
                    IResource localChild = localChildren[i];
                    name = localChild.getName();
                    localSet.put(name, localChild);
                    allSet.add(name);
                    ++i;
                }
            }
            if (remoteChildren.length > 0) {
                remoteSet = new HashMap<String, IResourceVariant>(10);
                i = 0;
                while (i < remoteChildren.length) {
                    IResourceVariant remoteChild = remoteChildren[i];
                    name = remoteChild.getName();
                    remoteSet.put(name, remoteChild);
                    allSet.add(name);
                    ++i;
                }
            }
            Iterator e = allSet.iterator();
            while (e.hasNext()) {
                IResourceVariant remoteChild;
                String keyChildName = (String)e.next();
                Policy.checkCanceled(progress);
                IResource localChild = localSet != null ? (IResource)localSet.get(keyChildName) : null;
                IResourceVariant iResourceVariant = remoteChild = remoteSet != null ? (IResourceVariant)remoteSet.get(keyChildName) : null;
                if (localChild == null) {
                    Assert.isTrue((remoteChild != null ? 1 : 0) != 0);
                    boolean isContainer = remoteChild.isContainer();
                    localChild = this.getResourceChild(local, keyChildName, isContainer);
                }
                if (localChild == null) {
                    TeamPlugin.log(4, NLS.bind((String)"File {0} cannot be the parent of remote resource {1}", (Object[])new Object[]{local.getFullPath(), keyChildName}), null);
                    continue;
                }
                mergedResources.put(localChild, remoteChild);
            }
        }
        return mergedResources;
    }

    private IResource getResourceChild(IResource parent, String childName, boolean isContainer) {
        if (parent.getType() == 1) {
            return null;
        }
        if (isContainer) {
            return ((IContainer)parent).getFolder((IPath)new Path(null, childName));
        }
        return ((IContainer)parent).getFile((IPath)new Path(null, childName));
    }
}

