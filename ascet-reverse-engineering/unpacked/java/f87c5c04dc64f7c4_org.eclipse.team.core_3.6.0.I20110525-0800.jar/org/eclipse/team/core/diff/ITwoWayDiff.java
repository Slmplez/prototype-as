/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.team.core.diff;

import org.eclipse.core.runtime.IPath;
import org.eclipse.team.core.diff.IDiff;

public interface ITwoWayDiff
extends IDiff {
    public static final int CONTENT = 256;
    public static final int MOVE_FROM = 512;
    public static final int MOVE_TO = 1024;
    public static final int COPY_FROM = 2048;
    public static final int REPLACE = 4096;

    public int getFlags();

    public IPath getFromPath();

    public IPath getToPath();
}

