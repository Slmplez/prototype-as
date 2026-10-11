/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.team.internal.core.subscribers;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IPath;
import org.eclipse.team.core.diff.IDiff;
import org.eclipse.team.core.mapping.IResourceDiffTree;
import org.eclipse.team.core.mapping.provider.ResourceDiffTree;
import org.eclipse.team.internal.core.subscribers.ChangeSet;

public class DiffChangeSet
extends ChangeSet {
    private final ResourceDiffTree tree = new ResourceDiffTree();

    public DiffChangeSet() {
    }

    public DiffChangeSet(String name) {
        super(name);
    }

    public IResourceDiffTree getDiffTree() {
        return this.tree;
    }

    protected ResourceDiffTree internalGetDiffTree() {
        return this.tree;
    }

    public IResource[] getResources() {
        return this.tree.getAffectedResources();
    }

    public boolean isEmpty() {
        return this.tree.isEmpty();
    }

    public boolean contains(IResource local) {
        return this.tree.getDiff(local) != null;
    }

    public void add(IDiff diff) {
        if (this.isValidChange(diff)) {
            this.tree.add(diff);
        }
    }

    protected boolean isValidChange(IDiff diff) {
        return diff != null;
    }

    public void add(IDiff[] diffs) {
        try {
            this.tree.beginInput();
            int i = 0;
            while (i < diffs.length) {
                IDiff diff = diffs[i];
                this.add(diff);
                ++i;
            }
        }
        finally {
            this.tree.endInput(null);
        }
    }

    public void remove(IResource resource) {
        if (this.contains(resource)) {
            this.tree.remove(resource);
        }
    }

    public void rootRemoved(IResource resource, int depth) {
        IDiff[] diffs = this.tree.getDiffs(resource, depth);
        if (diffs.length > 0) {
            try {
                this.tree.beginInput();
                int i = 0;
                while (i < diffs.length) {
                    IDiff diff = diffs[i];
                    IResource r = this.tree.getResource(diff);
                    if (r != null) {
                        this.tree.remove(r);
                    }
                    ++i;
                }
            }
            finally {
                this.tree.endInput(null);
            }
        }
    }

    public boolean contains(IPath path) {
        return this.getDiffTree().getDiff(path) != null;
    }

    public boolean containsChildren(IResource resource, int depth) {
        return this.getDiffTree().getDiffs(resource, depth).length > 0;
    }

    public void remove(IPath[] paths) {
        try {
            this.tree.beginInput();
            int i = 0;
            while (i < paths.length) {
                IPath path = paths[i];
                this.tree.remove(path);
                ++i;
            }
        }
        finally {
            this.tree.endInput(null);
        }
    }

    public void remove(IResource[] resources) {
        try {
            this.tree.beginInput();
            int i = 0;
            while (i < resources.length) {
                IResource resource = resources[i];
                this.tree.remove(resource);
                ++i;
            }
        }
        finally {
            this.tree.endInput(null);
        }
    }

    public String getComment() {
        return null;
    }
}

