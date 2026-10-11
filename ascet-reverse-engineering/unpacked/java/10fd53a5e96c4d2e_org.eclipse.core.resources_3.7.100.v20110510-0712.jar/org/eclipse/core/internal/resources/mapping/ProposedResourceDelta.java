/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.PlatformObject
 */
package org.eclipse.core.internal.resources.mapping;

import java.util.ArrayList;
import java.util.HashMap;
import org.eclipse.core.resources.IMarkerDelta;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IResourceDeltaVisitor;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.PlatformObject;

public final class ProposedResourceDelta
extends PlatformObject
implements IResourceDelta {
    protected static int KIND_MASK = 255;
    private HashMap<String, ProposedResourceDelta> children = new HashMap(8);
    private IPath movedFromPath;
    private IPath movedToPath;
    private IResource resource;
    private int status;

    public ProposedResourceDelta(IResource resource) {
        this.resource = resource;
    }

    public void accept(IResourceDeltaVisitor visitor) throws CoreException {
        this.accept(visitor, 0);
    }

    public void accept(IResourceDeltaVisitor visitor, boolean includePhantoms) throws CoreException {
        this.accept(visitor, includePhantoms ? 1 : 0);
    }

    public void accept(IResourceDeltaVisitor visitor, int memberFlags) throws CoreException {
        if (!visitor.visit(this)) {
            return;
        }
        for (ProposedResourceDelta childDelta : this.children.values()) {
            childDelta.accept(visitor, memberFlags);
        }
    }

    protected void add(ProposedResourceDelta delta) {
        if (this.children.size() == 0 && this.status == 0) {
            this.setKind(4);
        }
        this.children.put(delta.getResource().getName(), delta);
    }

    protected void addFlags(int flags) {
        this.status |= flags & ~KIND_MASK;
    }

    public IResourceDelta findMember(IPath path) {
        int segmentCount = path.segmentCount();
        if (segmentCount == 0) {
            return this;
        }
        ProposedResourceDelta current = this;
        int i = 0;
        while (i < segmentCount) {
            current = current.children.get(path.segment(i));
            if (current == null) {
                return null;
            }
            ++i;
        }
        return current;
    }

    public IResourceDelta[] getAffectedChildren() {
        return this.getAffectedChildren(7, 0);
    }

    public IResourceDelta[] getAffectedChildren(int kindMask) {
        return this.getAffectedChildren(kindMask, 0);
    }

    public IResourceDelta[] getAffectedChildren(int kindMask, int memberFlags) {
        ArrayList<ProposedResourceDelta> result = new ArrayList<ProposedResourceDelta>();
        for (ProposedResourceDelta child : this.children.values()) {
            if ((child.getKind() & kindMask) == 0) continue;
            result.add(child);
        }
        return result.toArray(new IResourceDelta[result.size()]);
    }

    ProposedResourceDelta getChild(String name) {
        return this.children.get(name);
    }

    public int getFlags() {
        return this.status & ~KIND_MASK;
    }

    public IPath getFullPath() {
        return this.getResource().getFullPath();
    }

    public int getKind() {
        return this.status & KIND_MASK;
    }

    public IMarkerDelta[] getMarkerDeltas() {
        return new IMarkerDelta[0];
    }

    public IPath getMovedFromPath() {
        return this.movedFromPath;
    }

    public IPath getMovedToPath() {
        return this.movedToPath;
    }

    public IPath getProjectRelativePath() {
        return this.getResource().getProjectRelativePath();
    }

    public IResource getResource() {
        return this.resource;
    }

    public void setFlags(int flags) {
        this.status = this.getKind() | flags & ~KIND_MASK;
    }

    protected void setKind(int kind) {
        this.status = this.getFlags() | kind & KIND_MASK;
    }

    protected void setMovedFromPath(IPath path) {
        this.movedFromPath = path;
    }

    protected void setMovedToPath(IPath path) {
        this.movedToPath = path;
    }

    public String toString() {
        return "ProposedDelta(" + this.resource + ')';
    }
}

