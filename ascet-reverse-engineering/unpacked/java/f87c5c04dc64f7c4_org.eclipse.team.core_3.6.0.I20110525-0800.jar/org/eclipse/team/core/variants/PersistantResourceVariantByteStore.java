/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.ISynchronizer
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 */
package org.eclipse.team.core.variants;

import java.util.ArrayList;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ISynchronizer;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.variants.ResourceVariantByteStore;

public class PersistantResourceVariantByteStore
extends ResourceVariantByteStore {
    private static final byte[] NO_REMOTE = new byte[0];
    private QualifiedName syncName;

    public PersistantResourceVariantByteStore(QualifiedName name) {
        this.syncName = name;
        this.getSynchronizer().add(this.syncName);
    }

    public void dispose() {
        this.getSynchronizer().remove(this.getSyncName());
    }

    public QualifiedName getSyncName() {
        return this.syncName;
    }

    public byte[] getBytes(IResource resource) throws TeamException {
        byte[] syncBytes = this.internalGetSyncBytes(resource);
        if (syncBytes != null && this.equals(syncBytes, NO_REMOTE)) {
            return null;
        }
        return syncBytes;
    }

    public boolean setBytes(IResource resource, byte[] bytes) throws TeamException {
        Assert.isNotNull((Object)bytes);
        byte[] oldBytes = this.internalGetSyncBytes(resource);
        if (oldBytes != null && this.equals(oldBytes, bytes)) {
            return false;
        }
        try {
            this.getSynchronizer().setSyncInfo(this.getSyncName(), resource, bytes);
            return true;
        }
        catch (CoreException e) {
            throw TeamException.asTeamException(e);
        }
    }

    public boolean flushBytes(IResource resource, int depth) throws TeamException {
        if (resource.exists() || resource.isPhantom()) {
            try {
                if (depth != 0 || this.internalGetSyncBytes(resource) != null) {
                    this.getSynchronizer().flushSyncInfo(this.getSyncName(), resource, depth);
                    return true;
                }
            }
            catch (CoreException e) {
                throw TeamException.asTeamException(e);
            }
        }
        return false;
    }

    public boolean isVariantKnown(IResource resource) throws TeamException {
        return this.internalGetSyncBytes(resource) != null;
    }

    public boolean deleteBytes(IResource resource) throws TeamException {
        return this.setBytes(resource, NO_REMOTE);
    }

    public IResource[] members(IResource resource) throws TeamException {
        if (resource.getType() == 1) {
            return new IResource[0];
        }
        try {
            IResource[] members = ((IContainer)resource).members(true);
            ArrayList<IResource> filteredMembers = new ArrayList<IResource>(members.length);
            int i = 0;
            while (i < members.length) {
                IResource member = members[i];
                if (this.getBytes(member) != null) {
                    filteredMembers.add(member);
                }
                ++i;
            }
            return filteredMembers.toArray(new IResource[filteredMembers.size()]);
        }
        catch (CoreException e) {
            throw TeamException.asTeamException(e);
        }
    }

    private ISynchronizer getSynchronizer() {
        return ResourcesPlugin.getWorkspace().getSynchronizer();
    }

    private byte[] internalGetSyncBytes(IResource resource) throws TeamException {
        try {
            return this.getSynchronizer().getSyncInfo(this.getSyncName(), resource);
        }
        catch (CoreException e) {
            throw TeamException.asTeamException(e);
        }
    }

    public void run(IResource root, IWorkspaceRunnable runnable, IProgressMonitor monitor) throws TeamException {
        try {
            ResourcesPlugin.getWorkspace().run(runnable, (ISchedulingRule)root, 0, monitor);
        }
        catch (CoreException e) {
            throw TeamException.asTeamException(e);
        }
    }
}

