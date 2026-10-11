/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.team.core.mapping.provider;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.Assert;
import org.eclipse.team.core.diff.provider.TwoWayDiff;
import org.eclipse.team.core.history.IFileRevision;
import org.eclipse.team.core.mapping.IResourceDiff;

public class ResourceDiff
extends TwoWayDiff
implements IResourceDiff {
    private final IFileRevision before;
    private final IFileRevision after;
    private final IResource resource;

    public ResourceDiff(IResource resource, int kind, int flags, IFileRevision before, IFileRevision after) {
        super(resource.getFullPath(), kind, flags);
        this.resource = resource;
        this.before = before;
        this.after = after;
    }

    public ResourceDiff(IResource resource, int kind) {
        this(resource, kind, 0, null, null);
        Assert.isTrue((resource.getType() != 1 ? 1 : 0) != 0);
    }

    public IFileRevision getBeforeState() {
        return this.before;
    }

    public IFileRevision getAfterState() {
        return this.after;
    }

    public IResource getResource() {
        return this.resource;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (super.equals(obj) && obj instanceof ResourceDiff) {
            ResourceDiff other = (ResourceDiff)obj;
            return this.getResource().equals((Object)this.getResource()) && this.revisionsEqual(this.getBeforeState(), other.getBeforeState()) && this.revisionsEqual(this.getAfterState(), other.getAfterState());
        }
        return false;
    }

    private boolean revisionsEqual(IFileRevision revision, IFileRevision revision2) {
        if (revision == null) {
            return revision2 == null;
        }
        if (revision2 == null) {
            return false;
        }
        return revision.equals(revision2);
    }
}

