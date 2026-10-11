/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.internal.core.subscribers;

import java.util.HashSet;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.variants.ResourceVariantByteStore;

public abstract class DescendantResourceVariantByteStore
extends ResourceVariantByteStore {
    ResourceVariantByteStore baseStore;
    ResourceVariantByteStore remoteStore;

    public DescendantResourceVariantByteStore(ResourceVariantByteStore baseCache, ResourceVariantByteStore remoteCache) {
        this.baseStore = baseCache;
        this.remoteStore = remoteCache;
    }

    public void dispose() {
        this.remoteStore.dispose();
    }

    public byte[] getBytes(IResource resource) throws TeamException {
        byte[] remoteBytes = this.remoteStore.getBytes(resource);
        byte[] baseBytes = this.baseStore.getBytes(resource);
        if (baseBytes == null) {
            return remoteBytes;
        }
        if (remoteBytes == null) {
            if (this.isVariantKnown(resource)) {
                return remoteBytes;
            }
            return baseBytes;
        }
        if (this.isDescendant(resource, baseBytes, remoteBytes)) {
            return remoteBytes;
        }
        return baseBytes;
    }

    public boolean setBytes(IResource resource, byte[] bytes) throws TeamException {
        byte[] baseBytes = this.baseStore.getBytes(resource);
        if (baseBytes != null && this.equals(baseBytes, bytes)) {
            return this.remoteStore.flushBytes(resource, 0);
        }
        return this.remoteStore.setBytes(resource, bytes);
    }

    public boolean flushBytes(IResource resource, int depth) throws TeamException {
        return this.remoteStore.flushBytes(resource, depth);
    }

    public abstract boolean isVariantKnown(IResource var1) throws TeamException;

    protected abstract boolean isDescendant(IResource var1, byte[] var2, byte[] var3) throws TeamException;

    public boolean deleteBytes(IResource resource) throws TeamException {
        return this.remoteStore.deleteBytes(resource);
    }

    protected ResourceVariantByteStore getBaseStore() {
        return this.baseStore;
    }

    protected ResourceVariantByteStore getRemoteStore() {
        return this.remoteStore;
    }

    public IResource[] members(IResource resource) throws TeamException {
        IResource[] remoteMembers = this.getRemoteStore().members(resource);
        IResource[] baseMembers = this.getBaseStore().members(resource);
        HashSet<IResource> members = new HashSet<IResource>();
        int i = 0;
        while (i < remoteMembers.length) {
            members.add(remoteMembers[i]);
            ++i;
        }
        i = 0;
        while (i < baseMembers.length) {
            IResource member = baseMembers[i];
            if (!this.isVariantKnown(member)) {
                members.add(member);
            }
            ++i;
        }
        return members.toArray(new IResource[members.size()]);
    }

    public void run(IResource root, IWorkspaceRunnable runnable, IProgressMonitor monitor) throws TeamException {
        this.remoteStore.run(root, runnable, monitor);
    }
}

