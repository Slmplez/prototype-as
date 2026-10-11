/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.resources;

import org.eclipse.core.resources.IMarkerDelta;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceDelta;

public interface IResourceChangeEvent {
    public static final int POST_CHANGE = 1;
    public static final int PRE_CLOSE = 2;
    public static final int PRE_DELETE = 4;
    public static final int PRE_AUTO_BUILD = 8;
    public static final int PRE_BUILD = 8;
    public static final int POST_AUTO_BUILD = 16;
    public static final int POST_BUILD = 16;
    public static final int PRE_REFRESH = 32;

    public IMarkerDelta[] findMarkerDeltas(String var1, boolean var2);

    public int getBuildKind();

    public IResourceDelta getDelta();

    public IResource getResource();

    public Object getSource();

    public int getType();
}

