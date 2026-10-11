/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 */
package org.eclipse.team.internal.core.subscribers;

import java.util.Date;
import org.eclipse.core.resources.IResource;
import org.eclipse.team.core.synchronize.SyncInfo;
import org.eclipse.team.core.synchronize.SyncInfoTree;
import org.eclipse.team.internal.core.subscribers.ChangeSet;

public abstract class CheckedInChangeSet
extends ChangeSet {
    private final SyncInfoTree set = new SyncInfoTree();

    public abstract String getAuthor();

    public abstract Date getDate();

    public SyncInfoTree getSyncInfoSet() {
        return this.set;
    }

    public IResource[] getResources() {
        return this.set.getResources();
    }

    public boolean isEmpty() {
        return this.set.isEmpty();
    }

    public boolean contains(IResource local) {
        return this.set.getSyncInfo(local) != null;
    }

    public void add(SyncInfo info) {
        if (this.isValidChange(info)) {
            this.set.add(info);
        }
    }

    protected boolean isValidChange(SyncInfo info) {
        return info != null;
    }

    public void add(SyncInfo[] infos) {
        try {
            this.set.beginInput();
            int i = 0;
            while (i < infos.length) {
                SyncInfo info = infos[i];
                this.add(info);
                ++i;
            }
        }
        finally {
            this.set.endInput(null);
        }
    }

    public void remove(IResource resource) {
        if (this.contains(resource)) {
            this.set.remove(resource);
        }
    }

    public void remove(IResource[] resources) {
        int i = 0;
        while (i < resources.length) {
            IResource resource = resources[i];
            this.remove(resource);
            ++i;
        }
    }

    public void rootRemoved(IResource resource, int depth) {
        SyncInfo[] infos = this.set.getSyncInfos(resource, depth);
        if (infos.length > 0) {
            IResource[] resources = new IResource[infos.length];
            int i = 0;
            while (i < resources.length) {
                resources[i] = infos[i].getLocal();
                ++i;
            }
            this.set.removeAll(resources);
        }
    }

    public boolean containsChildren(IResource resource, int depth) {
        return this.set.getSyncInfos(resource, depth).length > 0;
    }
}

