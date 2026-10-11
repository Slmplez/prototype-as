/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.internal.core.subscribers;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.variants.IResourceVariant;
import org.eclipse.team.core.variants.ResourceVariantByteStore;
import org.eclipse.team.core.variants.ResourceVariantTree;
import org.eclipse.team.core.variants.ThreeWaySubscriber;

public final class ThreeWayBaseTree
extends ResourceVariantTree {
    private ThreeWaySubscriber subscriber;

    public ThreeWayBaseTree(ThreeWaySubscriber subscriber) {
        super(new BaseResourceVariantByteStore(subscriber));
        this.subscriber = subscriber;
    }

    public IResource[] refresh(IResource[] resources, int depth, IProgressMonitor monitor) throws TeamException {
        return new IResource[0];
    }

    protected IResourceVariant[] fetchMembers(IResourceVariant variant, IProgressMonitor progress) throws TeamException {
        return new IResourceVariant[0];
    }

    protected IResourceVariant fetchVariant(IResource resource, int depth, IProgressMonitor monitor) throws TeamException {
        return null;
    }

    public IResource[] roots() {
        return this.getSubscriber().roots();
    }

    public IResourceVariant getResourceVariant(IResource resource) throws TeamException {
        return this.getSubscriber().getResourceVariant(resource, this.getByteStore().getBytes(resource));
    }

    private ThreeWaySubscriber getSubscriber() {
        return this.subscriber;
    }

    static class BaseResourceVariantByteStore
    extends ResourceVariantByteStore {
        private ThreeWaySubscriber subscriber;

        public BaseResourceVariantByteStore(ThreeWaySubscriber subscriber) {
            this.subscriber = subscriber;
        }

        public void dispose() {
        }

        public byte[] getBytes(IResource resource) throws TeamException {
            return this.subscriber.getSynchronizer().getBaseBytes(resource);
        }

        public boolean setBytes(IResource resource, byte[] bytes) throws TeamException {
            return false;
        }

        public boolean flushBytes(IResource resource, int depth) throws TeamException {
            return false;
        }

        public boolean deleteBytes(IResource resource) throws TeamException {
            return false;
        }

        public IResource[] members(IResource resource) throws TeamException {
            return this.subscriber.getSynchronizer().members(resource);
        }
    }
}

