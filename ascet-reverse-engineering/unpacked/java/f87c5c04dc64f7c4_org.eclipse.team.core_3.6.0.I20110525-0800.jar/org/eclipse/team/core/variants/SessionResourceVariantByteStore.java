/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.team.core.variants;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.Assert;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.variants.ResourceVariantByteStore;

public class SessionResourceVariantByteStore
extends ResourceVariantByteStore {
    private static final byte[] NO_REMOTE = new byte[0];
    private Map membersCache = new HashMap();
    private Map syncBytesCache = new HashMap();

    public boolean deleteBytes(IResource resource) throws TeamException {
        return this.flushBytes(resource, 0);
    }

    public void dispose() {
        this.syncBytesCache.clear();
        this.membersCache.clear();
    }

    public boolean flushBytes(IResource resource, int depth) throws TeamException {
        if (this.getSyncBytesCache().containsKey(resource)) {
            if (depth != 0) {
                IResource[] members = this.members(resource);
                int i = 0;
                while (i < members.length) {
                    IResource child = members[i];
                    this.flushBytes(child, depth == 2 ? 2 : 0);
                    ++i;
                }
            }
            this.getSyncBytesCache().remove(resource);
            this.internalRemoveFromParent(resource);
            return true;
        }
        return false;
    }

    public byte[] getBytes(IResource resource) throws TeamException {
        byte[] syncBytes = this.internalGetSyncBytes(resource);
        if (syncBytes != null && this.equals(syncBytes, NO_REMOTE)) {
            return null;
        }
        return syncBytes;
    }

    public boolean isEmpty() {
        return this.syncBytesCache.isEmpty();
    }

    public IResource[] members(IResource resource) {
        List members = (List)this.membersCache.get(resource);
        if (members == null) {
            return new IResource[0];
        }
        return members.toArray(new IResource[members.size()]);
    }

    public boolean setBytes(IResource resource, byte[] bytes) throws TeamException {
        Assert.isNotNull((Object)bytes);
        byte[] oldBytes = this.internalGetSyncBytes(resource);
        if (oldBytes != null && this.equals(oldBytes, bytes)) {
            return false;
        }
        this.internalSetSyncInfo(resource, bytes);
        return true;
    }

    private Map getSyncBytesCache() {
        return this.syncBytesCache;
    }

    private void internalAddToParent(IResource resource) {
        IContainer parent = resource.getParent();
        if (parent == null) {
            return;
        }
        ArrayList<IResource> members = (ArrayList<IResource>)this.membersCache.get(parent);
        if (members == null) {
            members = new ArrayList<IResource>();
            this.membersCache.put(parent, members);
        }
        members.add(resource);
    }

    private byte[] internalGetSyncBytes(IResource resource) {
        return (byte[])this.getSyncBytesCache().get(resource);
    }

    private void internalRemoveFromParent(IResource resource) {
        IContainer parent = resource.getParent();
        List members = (List)this.membersCache.get(parent);
        if (members != null) {
            members.remove(resource);
            if (members.isEmpty()) {
                this.membersCache.remove(parent);
            }
        }
    }

    private void internalSetSyncInfo(IResource resource, byte[] bytes) {
        this.getSyncBytesCache().put(resource, bytes);
        this.internalAddToParent(resource);
    }
}

