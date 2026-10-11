/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceChangeEvent
 *  org.eclipse.core.resources.IResourceChangeListener
 *  org.eclipse.core.resources.IResourceDelta
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.team.internal.core.subscribers;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Assert;
import org.eclipse.team.core.subscribers.ISubscriberChangeEvent;
import org.eclipse.team.core.subscribers.ISubscriberChangeListener;
import org.eclipse.team.core.subscribers.Subscriber;

public abstract class SubscriberResourceCollector
implements IResourceChangeListener,
ISubscriberChangeListener {
    Subscriber subscriber;

    public SubscriberResourceCollector(Subscriber subscriber) {
        Assert.isNotNull((Object)subscriber);
        this.subscriber = subscriber;
        ResourcesPlugin.getWorkspace().addResourceChangeListener((IResourceChangeListener)this, 1);
        subscriber.addListener(this);
    }

    public Subscriber getSubscriber() {
        return this.subscriber;
    }

    public void dispose() {
        this.getSubscriber().removeListener(this);
        ResourcesPlugin.getWorkspace().removeResourceChangeListener((IResourceChangeListener)this);
    }

    public void subscriberResourceChanged(ISubscriberChangeEvent[] deltas) {
        try {
            this.beginInput();
            IResource[] roots = this.getRoots();
            int i = 0;
            while (i < deltas.length) {
                switch (deltas[i].getFlags()) {
                    case 1: {
                        if (!this.isAllRootsIncluded() && !this.isDescendantOfRoot(deltas[i].getResource(), roots)) break;
                        this.change(deltas[i].getResource(), 0);
                        break;
                    }
                    case 4: {
                        this.remove(deltas[i].getResource());
                        break;
                    }
                    case 2: {
                        if (!this.isAllRootsIncluded() && !this.isDescendantOfRoot(deltas[i].getResource(), roots)) break;
                        this.change(deltas[i].getResource(), 2);
                    }
                }
                ++i;
            }
        }
        finally {
            this.endInput();
        }
    }

    protected void beginInput() {
    }

    protected void endInput() {
    }

    public void resourceChanged(IResourceChangeEvent event) {
        try {
            this.beginInput();
            this.processDelta(event.getDelta(), this.getRoots());
        }
        finally {
            this.endInput();
        }
    }

    protected void processDelta(IResourceDelta delta, IResource[] roots) {
        IResource resource = delta.getResource();
        int kind = delta.getKind();
        if (resource.getType() == 4 && ((kind & 2) != 0 || (delta.getFlags() & 0x4000) != 0 && !((IProject)resource).isOpen() || !this.isAncestorOfRoot(resource, roots)) && this.hasMembers(resource)) {
            this.remove(resource);
        }
        boolean visitChildren = false;
        if (this.isDescendantOfRoot(resource, roots)) {
            int changeFlags;
            visitChildren = true;
            if ((delta.getFlags() & 0x8000) != 0) {
                this.remove(resource);
                this.change(resource, 2);
            }
            if (((changeFlags = delta.getFlags()) & 0x4100) != 0) {
                this.change(resource, 0);
            }
            if ((delta.getKind() & 3) != 0) {
                this.change(resource, 0);
            }
        }
        if (visitChildren || this.isAncestorOfRoot(resource, roots)) {
            IResourceDelta[] affectedChildren = delta.getAffectedChildren(7);
            int i = 0;
            while (i < affectedChildren.length) {
                this.processDelta(affectedChildren[i], roots);
                ++i;
            }
        }
    }

    protected IResource[] getRoots() {
        return this.getSubscriber().roots();
    }

    protected abstract boolean hasMembers(IResource var1);

    protected abstract void remove(IResource var1);

    protected abstract void change(IResource var1, int var2);

    protected boolean isAllRootsIncluded() {
        return true;
    }

    private boolean isAncestorOfRoot(IResource parent, IResource[] roots) {
        if (parent.getType() == 8) {
            return true;
        }
        int i = 0;
        while (i < roots.length) {
            IResource resource = roots[i];
            if (parent.getFullPath().isPrefixOf(resource.getFullPath())) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private boolean isDescendantOfRoot(IResource resource, IResource[] roots) {
        int i = 0;
        while (i < roots.length) {
            IResource root = roots[i];
            if (root.getFullPath().isPrefixOf(resource.getFullPath())) {
                return true;
            }
            ++i;
        }
        return false;
    }
}

