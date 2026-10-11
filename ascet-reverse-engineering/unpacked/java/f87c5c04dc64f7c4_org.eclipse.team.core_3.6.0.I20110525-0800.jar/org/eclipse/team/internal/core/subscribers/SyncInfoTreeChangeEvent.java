/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 */
package org.eclipse.team.internal.core.subscribers;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.resources.IResource;
import org.eclipse.team.core.synchronize.ISyncInfoTreeChangeEvent;
import org.eclipse.team.core.synchronize.SyncInfoSet;
import org.eclipse.team.core.synchronize.SyncInfoSetChangeEvent;

public class SyncInfoTreeChangeEvent
extends SyncInfoSetChangeEvent
implements ISyncInfoTreeChangeEvent {
    private Set removedSubtrees = new HashSet();
    private Set addedSubtrees = new HashSet();

    public SyncInfoTreeChangeEvent(SyncInfoSet set) {
        super(set);
    }

    public void removedSubtreeRoot(IResource root) {
        if (this.addedSubtrees.contains(root)) {
            this.addedSubtrees.remove(root);
        } else if (!this.isDescendantOfAddedRoot(root)) {
            Iterator iter = this.removedSubtrees.iterator();
            while (iter.hasNext()) {
                IResource element = (IResource)iter.next();
                if (root.equals((Object)element)) {
                    return;
                }
                if (this.isParent(root, element)) {
                    iter.remove();
                    continue;
                }
                if (!this.isParent(element, root)) continue;
                return;
            }
            this.removedSubtrees.add(root);
        }
    }

    private boolean isParent(IResource root, IResource element) {
        return root.getFullPath().isPrefixOf(element.getFullPath());
    }

    public void addedSubtreeRoot(IResource parent) {
        if (this.removedSubtrees.contains(parent)) {
            this.reset();
        } else if (!this.isDescendantOfAddedRoot(parent)) {
            this.addedSubtrees.add(parent);
        }
    }

    private boolean isDescendantOfAddedRoot(IResource resource) {
        Iterator iter = this.addedSubtrees.iterator();
        while (iter.hasNext()) {
            IResource root = (IResource)iter.next();
            if (!this.isParent(root, resource)) continue;
            return true;
        }
        return false;
    }

    public IResource[] getAddedSubtreeRoots() {
        return this.addedSubtrees.toArray(new IResource[this.addedSubtrees.size()]);
    }

    public IResource[] getRemovedSubtreeRoots() {
        return this.removedSubtrees.toArray(new IResource[this.removedSubtrees.size()]);
    }

    public boolean isEmpty() {
        return super.isEmpty() && this.removedSubtrees.isEmpty() && this.addedSubtrees.isEmpty();
    }
}

