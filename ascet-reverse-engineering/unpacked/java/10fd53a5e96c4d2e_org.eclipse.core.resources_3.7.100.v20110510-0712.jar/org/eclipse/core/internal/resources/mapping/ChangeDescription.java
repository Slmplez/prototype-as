/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.internal.resources.mapping;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IPath;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ChangeDescription {
    private List<IResource> addedRoots = new ArrayList<IResource>();
    private List<IResource> changedFiles = new ArrayList<IResource>();
    private List<IResource> closedProjects = new ArrayList<IResource>();
    private List<IResource> copiedRoots = new ArrayList<IResource>();
    private List<IResource> movedRoots = new ArrayList<IResource>();
    private List<IResource> removedRoots = new ArrayList<IResource>();

    private IResource createSourceResource(IResourceDelta delta) {
        IPath sourcePath = delta.getMovedFromPath();
        IResource resource = delta.getResource();
        IWorkspaceRoot wsRoot = ResourcesPlugin.getWorkspace().getRoot();
        switch (resource.getType()) {
            case 4: {
                return wsRoot.getProject(sourcePath.segment(0));
            }
            case 2: {
                return wsRoot.getFolder(sourcePath);
            }
            case 1: {
                return wsRoot.getFile(sourcePath);
            }
        }
        return null;
    }

    private void ensureResourceCovered(IResource resource, List<IResource> list) {
        IPath path = resource.getFullPath();
        for (IResource root : list) {
            if (!root.getFullPath().isPrefixOf(path)) continue;
            return;
        }
        list.add(resource);
    }

    public IResource[] getRootResources() {
        HashSet<IResource> result = new HashSet<IResource>();
        result.addAll(this.addedRoots);
        result.addAll(this.changedFiles);
        result.addAll(this.closedProjects);
        result.addAll(this.copiedRoots);
        result.addAll(this.movedRoots);
        result.addAll(this.removedRoots);
        return result.toArray(new IResource[result.size()]);
    }

    private void handleAdded(IResourceDelta delta) {
        if ((delta.getFlags() & 0x1000) != 0) {
            this.handleMove(delta);
        } else if ((delta.getFlags() & 0x800) != 0) {
            this.handleCopy(delta);
        } else {
            this.ensureResourceCovered(delta.getResource(), this.addedRoots);
        }
    }

    private void handleChange(IResourceDelta delta) {
        if ((delta.getFlags() & 0x40000) != 0) {
            this.handleAdded(delta);
        } else if (delta.getResource().getType() == 1) {
            this.ensureResourceCovered(delta.getResource(), this.changedFiles);
        }
    }

    private void handleCopy(IResourceDelta delta) {
        if ((delta.getFlags() & 0x800) != 0) {
            IResource source = this.createSourceResource(delta);
            this.ensureResourceCovered(source, this.copiedRoots);
        }
    }

    private void handleMove(IResourceDelta delta) {
        if ((delta.getFlags() & 0x2000) != 0) {
            this.movedRoots.add(delta.getResource());
        } else if ((delta.getFlags() & 0x1000) != 0) {
            IResource source = this.createSourceResource(delta);
            this.ensureResourceCovered(source, this.movedRoots);
        }
    }

    private void handleRemoved(IResourceDelta delta) {
        if ((delta.getFlags() & 0x4000) != 0) {
            this.closedProjects.add(delta.getResource());
        } else if ((delta.getFlags() & 0x2000) != 0) {
            this.handleMove(delta);
        } else {
            this.ensureResourceCovered(delta.getResource(), this.removedRoots);
        }
    }

    public boolean recordChange(IResourceDelta delta) {
        switch (delta.getKind()) {
            case 1: {
                this.handleAdded(delta);
                return true;
            }
            case 2: {
                this.handleRemoved(delta);
                return false;
            }
            case 4: {
                this.handleChange(delta);
                return true;
            }
        }
        return true;
    }
}

