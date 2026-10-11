/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.resources.mapping;

import java.util.ArrayList;
import org.eclipse.core.internal.resources.MarkerManager;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceVisitor;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ResourceTraversal {
    private final int depth;
    private final int flags;
    private final IResource[] resources;

    public ResourceTraversal(IResource[] resources, int depth, int flags) {
        if (resources == null) {
            throw new NullPointerException();
        }
        this.resources = resources;
        this.depth = depth;
        this.flags = flags;
    }

    public void accept(IResourceVisitor visitor) throws CoreException {
        int i = 0;
        int imax = this.resources.length;
        while (i < imax) {
            block4: {
                try {
                    if (this.resources[i].exists()) {
                        this.resources[i].accept(visitor, this.depth, this.flags);
                    }
                }
                catch (CoreException e) {
                    if (e.getStatus().getCode() == 368) break block4;
                    throw e;
                }
            }
            ++i;
        }
    }

    public boolean contains(IResource resource) {
        int i = 0;
        while (i < this.resources.length) {
            IResource member = this.resources[i];
            if (this.contains(member, resource)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private boolean contains(IResource resource, IResource child) {
        if (resource.equals(child)) {
            return true;
        }
        if (this.depth == 0) {
            return false;
        }
        if (child.getParent().equals(resource)) {
            return true;
        }
        if (this.depth == 2) {
            return resource.getFullPath().isPrefixOf(child.getFullPath());
        }
        return false;
    }

    void doFindMarkers(ArrayList<IMarker> result, String type, boolean includeSubtypes) {
        MarkerManager markerMan = ((Workspace)ResourcesPlugin.getWorkspace()).getMarkerManager();
        int i = 0;
        while (i < this.resources.length) {
            markerMan.doFindMarkers(this.resources[i], result, type, includeSubtypes, this.depth);
            ++i;
        }
    }

    public IMarker[] findMarkers(String type, boolean includeSubtypes) throws CoreException {
        if (this.resources.length == 0) {
            return new IMarker[0];
        }
        ArrayList<IMarker> result = new ArrayList<IMarker>();
        this.doFindMarkers(result, type, includeSubtypes);
        return result.toArray(new IMarker[result.size()]);
    }

    public int getDepth() {
        return this.depth;
    }

    public int getFlags() {
        return this.flags;
    }

    public IResource[] getResources() {
        return this.resources;
    }
}

