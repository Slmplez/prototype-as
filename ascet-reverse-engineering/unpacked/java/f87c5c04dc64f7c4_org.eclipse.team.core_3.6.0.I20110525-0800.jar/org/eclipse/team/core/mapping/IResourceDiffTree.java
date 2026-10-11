/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.mapping.ResourceTraversal
 */
package org.eclipse.team.core.mapping;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.team.core.diff.FastDiffFilter;
import org.eclipse.team.core.diff.IDiff;
import org.eclipse.team.core.diff.IDiffTree;
import org.eclipse.team.core.diff.IDiffVisitor;

public interface IResourceDiffTree
extends IDiffTree {
    public IDiff getDiff(IResource var1);

    public IResource getResource(IDiff var1);

    public void accept(ResourceTraversal[] var1, IDiffVisitor var2);

    public IDiff[] getDiffs(ResourceTraversal[] var1);

    public IDiff[] getDiffs(IResource var1, int var2);

    public IResource[] members(IResource var1);

    public IResource[] getAffectedResources();

    public boolean hasMatchingDiffs(ResourceTraversal[] var1, FastDiffFilter var2);
}

