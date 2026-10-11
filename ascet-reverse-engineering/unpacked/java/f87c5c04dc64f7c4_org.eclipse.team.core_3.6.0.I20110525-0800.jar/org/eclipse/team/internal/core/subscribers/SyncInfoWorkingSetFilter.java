/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 */
package org.eclipse.team.internal.core.subscribers;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import org.eclipse.core.resources.IResource;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.subscribers.Subscriber;
import org.eclipse.team.core.synchronize.FastSyncInfoFilter;
import org.eclipse.team.core.synchronize.SyncInfo;
import org.eclipse.team.internal.core.TeamPlugin;

public class SyncInfoWorkingSetFilter
extends FastSyncInfoFilter {
    private IResource[] resources;

    public boolean select(SyncInfo info) {
        if (this.isEmpty()) {
            return true;
        }
        return this.isIncluded(info.getLocal());
    }

    private boolean isIncluded(IResource resource) {
        int i = 0;
        while (i < this.resources.length) {
            IResource setResource = this.resources[i];
            if (this.isParent(setResource, resource)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private boolean isParent(IResource parent, IResource child) {
        return parent.getFullPath().isPrefixOf(child.getFullPath());
    }

    public IResource[] getRoots(Subscriber subscriber) {
        IResource[] roots = subscriber.roots();
        if (this.isEmpty()) {
            return roots;
        }
        HashSet<IResource> result = new HashSet<IResource>();
        int i = 0;
        while (i < roots.length) {
            IResource resource = roots[i];
            result.addAll(Arrays.asList(this.getIntersectionWithSet(subscriber, resource)));
            ++i;
        }
        return result.toArray(new IResource[result.size()]);
    }

    private IResource[] getIntersectionWithSet(Subscriber subscriber, IResource resource) {
        ArrayList<IResource> result = new ArrayList<IResource>();
        int i = 0;
        while (i < this.resources.length) {
            IResource setResource = this.resources[i];
            if (setResource != null) {
                if (this.isParent(resource, setResource)) {
                    try {
                        if (subscriber.isSupervised(setResource)) {
                            result.add(setResource);
                        }
                    }
                    catch (TeamException e) {
                        TeamPlugin.log(e);
                        result.add(setResource);
                    }
                } else if (this.isParent(setResource, resource)) {
                    result.add(resource);
                }
            }
            ++i;
        }
        return result.toArray(new IResource[result.size()]);
    }

    public void setWorkingSet(IResource[] resources) {
        this.resources = resources;
    }

    public IResource[] getWorkingSet() {
        return this.resources;
    }

    private boolean isEmpty() {
        return this.resources == null || this.resources.length == 0;
    }
}

