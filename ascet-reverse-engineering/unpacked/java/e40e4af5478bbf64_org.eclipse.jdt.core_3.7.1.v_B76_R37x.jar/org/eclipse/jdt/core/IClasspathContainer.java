/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.jdt.core;

import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IClasspathEntry;

public interface IClasspathContainer {
    public static final int K_APPLICATION = 1;
    public static final int K_SYSTEM = 2;
    public static final int K_DEFAULT_SYSTEM = 3;

    public IClasspathEntry[] getClasspathEntries();

    public String getDescription();

    public int getKind();

    public IPath getPath();
}

