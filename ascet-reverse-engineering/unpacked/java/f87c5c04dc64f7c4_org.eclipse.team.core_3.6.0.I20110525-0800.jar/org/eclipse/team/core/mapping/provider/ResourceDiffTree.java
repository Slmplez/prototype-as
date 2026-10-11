/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.resources.mapping.ResourceTraversal
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.team.core.mapping.provider;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IPath;
import org.eclipse.team.core.diff.FastDiffFilter;
import org.eclipse.team.core.diff.IDiff;
import org.eclipse.team.core.diff.IDiffVisitor;
import org.eclipse.team.core.diff.IThreeWayDiff;
import org.eclipse.team.core.diff.ITwoWayDiff;
import org.eclipse.team.core.diff.provider.DiffTree;
import org.eclipse.team.core.mapping.IResourceDiff;
import org.eclipse.team.core.mapping.IResourceDiffTree;

public class ResourceDiffTree
extends DiffTree
implements IResourceDiffTree {
    public static IResource getResourceFor(IDiff node) {
        if (node instanceof IResourceDiff) {
            IResourceDiff rd = (IResourceDiff)node;
            return rd.getResource();
        }
        if (node instanceof IThreeWayDiff) {
            IThreeWayDiff twd = (IThreeWayDiff)node;
            ITwoWayDiff child = twd.getLocalChange();
            if (child != null) {
                return ResourceDiffTree.getResourceFor(child);
            }
            child = twd.getRemoteChange();
            if (child != null) {
                return ResourceDiffTree.getResourceFor(child);
            }
        }
        Assert.isLegal((boolean)false);
        return null;
    }

    public IDiff getDiff(IResource resource) {
        return this.getDiff(resource.getFullPath());
    }

    public IResource getResource(IDiff diff) {
        if (diff instanceof IThreeWayDiff) {
            IThreeWayDiff twd = (IThreeWayDiff)diff;
            IResourceDiff localChange = (IResourceDiff)twd.getLocalChange();
            if (localChange != null) {
                return localChange.getResource();
            }
            return ((IResourceDiff)twd.getRemoteChange()).getResource();
        }
        return ((IResourceDiff)diff).getResource();
    }

    public void accept(ResourceTraversal[] traversals, IDiffVisitor visitor) {
        int i = 0;
        while (i < traversals.length) {
            ResourceTraversal traversal = traversals[i];
            IResource[] resources = traversal.getResources();
            int j = 0;
            while (j < resources.length) {
                IResource resource = resources[j];
                this.accept(resource.getFullPath(), visitor, traversal.getDepth());
                ++j;
            }
            ++i;
        }
    }

    public IDiff[] getDiffs(ResourceTraversal[] traversals) {
        HashSet result = new HashSet();
        int i = 0;
        while (i < traversals.length) {
            ResourceTraversal traversal = traversals[i];
            IResource[] resources = traversal.getResources();
            int j = 0;
            while (j < resources.length) {
                IResource resource = resources[j];
                this.internalGetDiffs(resource, traversal.getDepth(), result);
                ++j;
            }
            ++i;
        }
        return result.toArray(new IDiff[result.size()]);
    }

    public IDiff[] getDiffs(IResource resource, int depth) {
        HashSet result = new HashSet();
        this.internalGetDiffs(resource, depth, result);
        return result.toArray(new IDiff[result.size()]);
    }

    private void internalGetDiffs(IResource resource, int depth, final Set result) {
        this.accept(resource.getFullPath(), new IDiffVisitor(){

            public boolean visit(IDiff diff) {
                return result.add(diff);
            }
        }, depth);
    }

    private IResource internalGetResource(IPath fullPath, boolean container) {
        if (container) {
            if (fullPath.segmentCount() == 1) {
                return ResourcesPlugin.getWorkspace().getRoot().getProject(fullPath.segment(0));
            }
            return ResourcesPlugin.getWorkspace().getRoot().getFolder(fullPath);
        }
        return ResourcesPlugin.getWorkspace().getRoot().getFile(fullPath);
    }

    public IResource[] members(IResource resource) {
        ArrayList<IResource> result = new ArrayList<IResource>();
        IPath[] paths = this.getChildren(resource.getFullPath());
        int i = 0;
        while (i < paths.length) {
            IPath path = paths[i];
            IDiff node = this.getDiff(path);
            if (node == null) {
                result.add(this.internalGetResource(path, true));
            } else {
                result.add(this.getResource(node));
            }
            ++i;
        }
        return result.toArray(new IResource[result.size()]);
    }

    public IResource[] getAffectedResources() {
        ArrayList<IResource> result = new ArrayList<IResource>();
        IDiff[] nodes = this.getDiffs();
        int i = 0;
        while (i < nodes.length) {
            IDiff node = nodes[i];
            result.add(this.getResource(node));
            ++i;
        }
        return result.toArray(new IResource[result.size()]);
    }

    public void add(IDiff delta) {
        Assert.isTrue((delta instanceof IResourceDiff || delta instanceof IThreeWayDiff ? 1 : 0) != 0);
        super.add(delta);
    }

    public void remove(IResource resource) {
        this.remove(resource.getFullPath());
    }

    public boolean hasMatchingDiffs(ResourceTraversal[] traversals, final FastDiffFilter filter) {
        final RuntimeException found = new RuntimeException();
        try {
            this.accept(traversals, new IDiffVisitor(){

                public boolean visit(IDiff delta) {
                    if (filter.select(delta)) {
                        throw found;
                    }
                    return false;
                }
            });
        }
        catch (RuntimeException e) {
            if (e == found) {
                return true;
            }
            throw e;
        }
        return false;
    }
}

