/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.team.core.diff;

import org.eclipse.core.runtime.IPath;

public interface IDiff {
    public static final int NO_CHANGE = 0;
    public static final int ADD = 1;
    public static final int REMOVE = 2;
    public static final int CHANGE = 4;

    public IPath getPath();

    public int getKind();

    public String toDiffString();
}

