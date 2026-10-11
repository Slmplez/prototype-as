/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.core.variants;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.variants.AbstractResourceVariantTree;
import org.eclipse.team.core.variants.IResourceVariant;
import org.eclipse.team.core.variants.ResourceVariantByteStore;

public abstract class ResourceVariantTree
extends AbstractResourceVariantTree {
    private ResourceVariantByteStore store;

    protected ResourceVariantTree(ResourceVariantByteStore store) {
        this.store = store;
    }

    public IResource[] members(IResource resource) throws TeamException {
        return this.getByteStore().members(resource);
    }

    public boolean hasResourceVariant(IResource resource) throws TeamException {
        return this.getByteStore().getBytes(resource) != null;
    }

    public void flushVariants(IResource resource, int depth) throws TeamException {
        this.getByteStore().flushBytes(resource, depth);
    }

    protected boolean setVariant(IResource local, IResourceVariant remote) throws TeamException {
        ResourceVariantByteStore cache = this.getByteStore();
        byte[] newRemoteBytes = this.getBytes(local, remote);
        boolean changed = newRemoteBytes == null ? cache.deleteBytes(local) : cache.setBytes(local, newRemoteBytes);
        return changed;
    }

    protected ResourceVariantByteStore getByteStore() {
        return this.store;
    }

    protected byte[] getBytes(IResource local, IResourceVariant remote) throws TeamException {
        if (remote == null) {
            return null;
        }
        return remote.asBytes();
    }

    protected IResource[] collectChanges(final IResource local, final IResourceVariant remote, final int depth, IProgressMonitor monitor) throws TeamException {
        final IResource[][] resources = new IResource[1][];
        this.getByteStore().run(local, new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) throws CoreException {
                resources[0] = ResourceVariantTree.super.collectChanges(local, remote, depth, monitor);
            }
        }, monitor);
        return resources[0];
    }
}

