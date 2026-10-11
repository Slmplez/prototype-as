/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.resources;

import org.eclipse.core.resources.IMarkerDelta;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceDeltaVisitor;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IPath;

public interface IResourceDelta
extends IAdaptable {
    public static final int NO_CHANGE = 0;
    public static final int ADDED = 1;
    public static final int REMOVED = 2;
    public static final int CHANGED = 4;
    public static final int ADDED_PHANTOM = 8;
    public static final int REMOVED_PHANTOM = 16;
    public static final int ALL_WITH_PHANTOMS = 31;
    public static final int CONTENT = 256;
    public static final int MOVED_FROM = 4096;
    public static final int MOVED_TO = 8192;
    public static final int COPIED_FROM = 2048;
    public static final int OPEN = 16384;
    public static final int TYPE = 32768;
    public static final int SYNC = 65536;
    public static final int MARKERS = 131072;
    public static final int REPLACED = 262144;
    public static final int DESCRIPTION = 524288;
    public static final int ENCODING = 0x100000;
    public static final int LOCAL_CHANGED = 0x200000;
    public static final int DERIVED_CHANGED = 0x400000;

    public void accept(IResourceDeltaVisitor var1) throws CoreException;

    public void accept(IResourceDeltaVisitor var1, boolean var2) throws CoreException;

    public void accept(IResourceDeltaVisitor var1, int var2) throws CoreException;

    public IResourceDelta findMember(IPath var1);

    public IResourceDelta[] getAffectedChildren();

    public IResourceDelta[] getAffectedChildren(int var1);

    public IResourceDelta[] getAffectedChildren(int var1, int var2);

    public int getFlags();

    public IPath getFullPath();

    public int getKind();

    public IMarkerDelta[] getMarkerDeltas();

    public IPath getMovedFromPath();

    public IPath getMovedToPath();

    public IPath getProjectRelativePath();

    public IResource getResource();
}

