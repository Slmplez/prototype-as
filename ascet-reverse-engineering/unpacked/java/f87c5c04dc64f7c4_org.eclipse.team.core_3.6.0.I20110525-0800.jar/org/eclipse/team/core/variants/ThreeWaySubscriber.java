/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.team.core.variants;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IPath;
import org.eclipse.team.core.Team;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.subscribers.SubscriberChangeEvent;
import org.eclipse.team.core.variants.IResourceVariant;
import org.eclipse.team.core.variants.IResourceVariantComparator;
import org.eclipse.team.core.variants.IResourceVariantTree;
import org.eclipse.team.core.variants.ISynchronizerChangeListener;
import org.eclipse.team.core.variants.ResourceVariantTreeSubscriber;
import org.eclipse.team.core.variants.ThreeWayRemoteTree;
import org.eclipse.team.core.variants.ThreeWayResourceComparator;
import org.eclipse.team.core.variants.ThreeWaySynchronizer;
import org.eclipse.team.internal.core.TeamPlugin;
import org.eclipse.team.internal.core.subscribers.ThreeWayBaseTree;

public abstract class ThreeWaySubscriber
extends ResourceVariantTreeSubscriber
implements ISynchronizerChangeListener {
    private ThreeWayResourceComparator comparator;
    private ThreeWayBaseTree baseTree;
    private ThreeWayRemoteTree remoteTree;
    private ThreeWaySynchronizer synchronizer;

    protected ThreeWaySubscriber(ThreeWaySynchronizer synchronizer) {
        this.synchronizer = synchronizer;
        this.baseTree = new ThreeWayBaseTree(this);
        this.getSynchronizer().addListener(this);
    }

    protected final IResourceVariantTree getBaseTree() {
        return this.baseTree;
    }

    protected final IResourceVariantTree getRemoteTree() {
        if (this.remoteTree == null) {
            this.remoteTree = this.createRemoteTree();
        }
        return this.remoteTree;
    }

    public final IResourceVariantComparator getResourceComparator() {
        if (this.comparator == null) {
            this.comparator = new ThreeWayResourceComparator(this.getSynchronizer());
        }
        return this.comparator;
    }

    public void syncStateChanged(IResource[] resources) {
        this.fireTeamResourceChange(SubscriberChangeEvent.asSyncChangedDeltas(this, resources));
    }

    public boolean isSupervised(IResource resource) throws TeamException {
        if (!this.isChildOfRoot(resource)) {
            return false;
        }
        if (this.getSynchronizer().isIgnored(resource)) {
            return false;
        }
        return !Team.isIgnoredHint(resource);
    }

    public ThreeWaySynchronizer getSynchronizer() {
        return this.synchronizer;
    }

    public abstract IResourceVariant getResourceVariant(IResource var1, byte[] var2) throws TeamException;

    protected abstract ThreeWayRemoteTree createRemoteTree();

    protected void handleRootChanged(IResource resource, boolean added) {
        if (added) {
            this.rootAdded(resource);
        } else {
            this.rootRemoved(resource);
        }
    }

    private void rootAdded(IResource resource) {
        SubscriberChangeEvent delta = new SubscriberChangeEvent(this, 2, resource);
        this.fireTeamResourceChange(new SubscriberChangeEvent[]{delta});
    }

    private void rootRemoved(IResource resource) {
        try {
            this.getSynchronizer().flush(resource, 2);
        }
        catch (TeamException e) {
            TeamPlugin.log(e);
        }
        SubscriberChangeEvent delta = new SubscriberChangeEvent(this, 4, resource);
        this.fireTeamResourceChange(new SubscriberChangeEvent[]{delta});
    }

    private boolean isChildOfRoot(IResource resource) {
        IResource[] roots = this.roots();
        IPath fullPath = resource.getFullPath();
        int i = 0;
        while (i < roots.length) {
            IResource root = roots[i];
            if (root.getFullPath().isPrefixOf(fullPath)) {
                return true;
            }
            ++i;
        }
        return false;
    }
}

