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
import org.eclipse.team.core.variants.IResourceVariant;
import org.eclipse.team.core.variants.ResourceVariantByteStore;
import org.eclipse.team.core.variants.ResourceVariantTree;
import org.eclipse.team.core.variants.ThreeWaySubscriber;
import org.eclipse.team.core.variants.ThreeWaySynchronizer;

public abstract class ThreeWayRemoteTree
extends ResourceVariantTree {
    private ThreeWaySubscriber subscriber;

    public ThreeWayRemoteTree(ThreeWaySubscriber subscriber) {
        super(new RemoteResourceVariantByteStore(subscriber.getSynchronizer()));
        this.subscriber = subscriber;
    }

    public IResource[] roots() {
        return this.getSubscriber().roots();
    }

    public IResourceVariant getResourceVariant(IResource resource) throws TeamException {
        return this.getSubscriber().getResourceVariant(resource, this.getByteStore().getBytes(resource));
    }

    protected ThreeWaySubscriber getSubscriber() {
        return this.subscriber;
    }

    protected IResource[] collectChanges(final IResource local, final IResourceVariant remote, final int depth, IProgressMonitor monitor) throws TeamException {
        final IResource[][] resources = new IResource[1][];
        this.getSubscriber().getSynchronizer().run(local, new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) throws CoreException {
                resources[0] = ThreeWayRemoteTree.super.collectChanges(local, remote, depth, monitor);
            }
        }, monitor);
        return resources[0];
    }

    static class RemoteResourceVariantByteStore
    extends ResourceVariantByteStore {
        private ThreeWaySynchronizer synchronizer;

        public RemoteResourceVariantByteStore(ThreeWaySynchronizer synchronizer) {
            this.synchronizer = synchronizer;
        }

        public void dispose() {
        }

        public byte[] getBytes(IResource resource) throws TeamException {
            return this.getSynchronizer().getRemoteBytes(resource);
        }

        public boolean setBytes(IResource resource, byte[] bytes) throws TeamException {
            return this.getSynchronizer().setRemoteBytes(resource, bytes);
        }

        public boolean flushBytes(IResource resource, int depth) throws TeamException {
            return false;
        }

        public boolean isVariantKnown(IResource resource) throws TeamException {
            return this.getSynchronizer().hasSyncBytes(resource);
        }

        public boolean deleteBytes(IResource resource) throws TeamException {
            return this.getSynchronizer().removeRemoteBytes(resource);
        }

        public IResource[] members(IResource resource) throws TeamException {
            return this.synchronizer.members(resource);
        }

        private ThreeWaySynchronizer getSynchronizer() {
            return this.synchronizer;
        }
    }
}

