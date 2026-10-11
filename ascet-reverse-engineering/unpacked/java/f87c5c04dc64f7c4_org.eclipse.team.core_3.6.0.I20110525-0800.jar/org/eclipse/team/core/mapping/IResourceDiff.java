/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 */
package org.eclipse.team.core.mapping;

import org.eclipse.core.resources.IResource;
import org.eclipse.team.core.diff.ITwoWayDiff;
import org.eclipse.team.core.history.IFileRevision;

public interface IResourceDiff
extends ITwoWayDiff {
    public static final int OPEN = 65536;
    public static final int DESCRIPTION = 131072;

    public IResource getResource();

    public IFileRevision getBeforeState();

    public IFileRevision getAfterState();
}

