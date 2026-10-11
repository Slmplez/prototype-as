/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.mapping.ResourceTraversal
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.team.internal.core.mapping;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.core.runtime.IPath;

public class CompoundResourceTraversal {
    private Set deepFolders = new HashSet();
    private Set shallowFolders = new HashSet();
    private Set zeroFolders = new HashSet();
    private Set files = new HashSet();

    public synchronized void addTraversals(ResourceTraversal[] traversals) {
        int i = 0;
        while (i < traversals.length) {
            ResourceTraversal traversal = traversals[i];
            this.addTraversal(traversal);
            ++i;
        }
    }

    public synchronized void addTraversal(ResourceTraversal traversal) {
        IResource[] resources = traversal.getResources();
        int i = 0;
        while (i < resources.length) {
            IResource resource = resources[i];
            this.addResource(resource, traversal.getDepth());
            ++i;
        }
    }

    public synchronized void addResource(IResource resource, int depth) {
        if (resource.getType() == 1 && !this.isCovered(resource, 0)) {
            this.files.add(resource);
        }
        switch (depth) {
            case 2: {
                this.addDeepFolder(resource);
                break;
            }
            case 1: {
                this.addShallowFolder(resource);
                break;
            }
            case 0: {
                this.addZeroFolder(resource);
            }
        }
    }

    private void addShallowFolder(IResource resource) {
        if (!this.isCovered(resource, 1)) {
            this.shallowFolders.add(resource);
            this.removeDescendants(resource, 1);
        }
    }

    public synchronized boolean isCovered(IResource resource, int depth) {
        IPath fullPath = resource.getFullPath();
        Iterator iter = this.deepFolders.iterator();
        while (iter.hasNext()) {
            IResource deepFolder = (IResource)iter.next();
            if (!deepFolder.getFullPath().isPrefixOf(fullPath)) continue;
            return true;
        }
        if (resource.getType() == 1) {
            return this.shallowFolders.contains(resource.getParent()) || this.files.contains(resource);
        }
        switch (depth) {
            case 1: {
                return this.shallowFolders.contains(resource);
            }
            case 0: {
                return this.shallowFolders.contains(resource.getParent()) || this.zeroFolders.contains(resource);
            }
        }
        return false;
    }

    private void addZeroFolder(IResource resource) {
        if (!this.isCovered(resource, 0)) {
            this.zeroFolders.add(resource);
        }
    }

    private void addDeepFolder(IResource resource) {
        if (!this.isCovered(resource, 2)) {
            this.deepFolders.add(resource);
            this.removeDescendants(resource, 2);
        }
    }

    private void removeDescendants(IResource resource, int depth) {
        IResource child;
        IPath fullPath = resource.getFullPath();
        Iterator iter = this.files.iterator();
        while (iter.hasNext()) {
            child = (IResource)iter.next();
            switch (depth) {
                case 2: {
                    if (!fullPath.isPrefixOf(child.getFullPath())) break;
                    iter.remove();
                    break;
                }
                case 1: {
                    if (!fullPath.equals((Object)child.getFullPath().removeLastSegments(1))) break;
                    iter.remove();
                }
            }
        }
        if (depth == 2) {
            iter = this.shallowFolders.iterator();
            while (iter.hasNext()) {
                child = (IResource)iter.next();
                if (!fullPath.isPrefixOf(child.getFullPath())) continue;
                iter.remove();
            }
        }
        iter = this.zeroFolders.iterator();
        while (iter.hasNext()) {
            child = (IResource)iter.next();
            switch (depth) {
                case 2: {
                    if (!fullPath.isPrefixOf(child.getFullPath())) break;
                    iter.remove();
                    break;
                }
                case 1: {
                    if (!fullPath.equals((Object)child.getFullPath().removeLastSegments(1))) break;
                    iter.remove();
                }
            }
        }
    }

    public synchronized void add(CompoundResourceTraversal compoundTraversal) {
        this.addResources(compoundTraversal.deepFolders.toArray(new IResource[compoundTraversal.deepFolders.size()]), 2);
        this.addResources(compoundTraversal.shallowFolders.toArray(new IResource[compoundTraversal.shallowFolders.size()]), 1);
        this.addResources(compoundTraversal.zeroFolders.toArray(new IResource[compoundTraversal.zeroFolders.size()]), 0);
        this.addResources(compoundTraversal.files.toArray(new IResource[compoundTraversal.files.size()]), 0);
    }

    public synchronized void addResources(IResource[] resources, int depth) {
        int i = 0;
        while (i < resources.length) {
            IResource resource = resources[i];
            this.addResource(resource, depth);
            ++i;
        }
    }

    public synchronized IResource[] getUncoveredResources(ResourceTraversal[] traversals) {
        CompoundResourceTraversal newTraversals = new CompoundResourceTraversal();
        newTraversals.addTraversals(traversals);
        return this.getUncoveredResources(newTraversals);
    }

    private IResource[] getUncoveredResources(CompoundResourceTraversal otherTraversal) {
        IResource resource;
        HashSet<IResource> result = new HashSet<IResource>();
        Iterator iter = otherTraversal.files.iterator();
        while (iter.hasNext()) {
            resource = (IResource)iter.next();
            if (this.isCovered(resource, 0)) continue;
            result.add(resource);
        }
        iter = otherTraversal.zeroFolders.iterator();
        while (iter.hasNext()) {
            resource = (IResource)iter.next();
            if (this.isCovered(resource, 0)) continue;
            result.add(resource);
        }
        iter = otherTraversal.shallowFolders.iterator();
        while (iter.hasNext()) {
            resource = (IResource)iter.next();
            if (this.isCovered(resource, 1)) continue;
            result.add(resource);
        }
        iter = otherTraversal.deepFolders.iterator();
        while (iter.hasNext()) {
            resource = (IResource)iter.next();
            if (this.isCovered(resource, 2)) continue;
            result.add(resource);
        }
        return result.toArray(new IResource[result.size()]);
    }

    public synchronized ResourceTraversal[] asTraversals() {
        ArrayList<ResourceTraversal> result = new ArrayList<ResourceTraversal>();
        if (!this.files.isEmpty() || !this.zeroFolders.isEmpty()) {
            HashSet combined = new HashSet();
            combined.addAll(this.files);
            combined.addAll(this.zeroFolders);
            result.add(new ResourceTraversal(combined.toArray(new IResource[combined.size()]), 0, 0));
        }
        if (!this.shallowFolders.isEmpty()) {
            result.add(new ResourceTraversal(this.shallowFolders.toArray(new IResource[this.shallowFolders.size()]), 1, 0));
        }
        if (!this.deepFolders.isEmpty()) {
            result.add(new ResourceTraversal(this.deepFolders.toArray(new IResource[this.deepFolders.size()]), 2, 0));
        }
        return result.toArray(new ResourceTraversal[result.size()]);
    }

    public synchronized IResource[] getRoots() {
        ArrayList result = new ArrayList();
        result.addAll(this.files);
        result.addAll(this.zeroFolders);
        result.addAll(this.shallowFolders);
        result.addAll(this.deepFolders);
        return result.toArray(new IResource[result.size()]);
    }

    public synchronized ResourceTraversal[] getUncoveredTraversals(ResourceTraversal[] traversals) {
        CompoundResourceTraversal other = new CompoundResourceTraversal();
        other.addTraversals(traversals);
        return this.getUncoveredTraversals(other);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public ResourceTraversal[] getUncoveredTraversals(CompoundResourceTraversal otherTraversal) {
        CompoundResourceTraversal compoundResourceTraversal = otherTraversal;
        synchronized (compoundResourceTraversal) {
            IResource resource;
            CompoundResourceTraversal uncovered = new CompoundResourceTraversal();
            Iterator iter = otherTraversal.files.iterator();
            while (iter.hasNext()) {
                resource = (IResource)iter.next();
                if (this.isCovered(resource, 0)) continue;
                uncovered.addResource(resource, 0);
            }
            iter = otherTraversal.zeroFolders.iterator();
            while (iter.hasNext()) {
                resource = (IResource)iter.next();
                if (this.isCovered(resource, 0)) continue;
                uncovered.addResource(resource, 0);
            }
            iter = otherTraversal.shallowFolders.iterator();
            while (iter.hasNext()) {
                resource = (IResource)iter.next();
                if (this.isCovered(resource, 1)) continue;
                uncovered.addResource(resource, 1);
            }
            iter = otherTraversal.deepFolders.iterator();
            while (iter.hasNext()) {
                resource = (IResource)iter.next();
                if (this.isCovered(resource, 2)) continue;
                uncovered.addResource(resource, 2);
            }
            return uncovered.asTraversals();
        }
    }

    public synchronized void clear() {
        this.deepFolders.clear();
        this.shallowFolders.clear();
        this.zeroFolders.clear();
        this.files.clear();
    }
}

