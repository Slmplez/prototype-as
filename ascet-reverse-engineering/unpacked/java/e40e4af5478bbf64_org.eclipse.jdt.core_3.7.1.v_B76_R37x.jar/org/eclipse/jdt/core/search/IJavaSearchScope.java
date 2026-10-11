/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.jdt.core.search;

import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IJavaElement;

public interface IJavaSearchScope {
    public static final String JAR_FILE_ENTRY_SEPARATOR = "|";
    public static final int SOURCES = 1;
    public static final int APPLICATION_LIBRARIES = 2;
    public static final int SYSTEM_LIBRARIES = 4;
    public static final int REFERENCED_PROJECTS = 8;

    public boolean encloses(String var1);

    public boolean encloses(IJavaElement var1);

    public IPath[] enclosingProjectsAndJars();

    public boolean includesBinaries();

    public boolean includesClasspaths();

    public void setIncludesBinaries(boolean var1);

    public void setIncludesClasspaths(boolean var1);
}

