/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.core;

import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IParent;
import org.eclipse.jdt.core.JavaModelException;

public interface IPackageFragmentRoot
extends IParent,
IJavaElement,
IOpenable {
    public static final int K_SOURCE = 1;
    public static final int K_BINARY = 2;
    public static final String DEFAULT_PACKAGEROOT_PATH = "";
    public static final int NO_RESOURCE_MODIFICATION = 1;
    public static final int ORIGINATING_PROJECT_CLASSPATH = 2;
    public static final int OTHER_REFERRING_PROJECTS_CLASSPATH = 4;
    public static final int DESTINATION_PROJECT_CLASSPATH = 8;
    public static final int REPLACE = 16;

    public void attachSource(IPath var1, IPath var2, IProgressMonitor var3) throws JavaModelException;

    public void copy(IPath var1, int var2, int var3, IClasspathEntry var4, IProgressMonitor var5) throws JavaModelException;

    public IPackageFragment createPackageFragment(String var1, boolean var2, IProgressMonitor var3) throws JavaModelException;

    public void delete(int var1, int var2, IProgressMonitor var3) throws JavaModelException;

    public int getKind() throws JavaModelException;

    public Object[] getNonJavaResources() throws JavaModelException;

    public IPackageFragment getPackageFragment(String var1);

    public IClasspathEntry getRawClasspathEntry() throws JavaModelException;

    public IClasspathEntry getResolvedClasspathEntry() throws JavaModelException;

    public IPath getSourceAttachmentPath() throws JavaModelException;

    public IPath getSourceAttachmentRootPath() throws JavaModelException;

    public boolean isArchive();

    public boolean isExternal();

    public void move(IPath var1, int var2, int var3, IClasspathEntry var4, IProgressMonitor var5) throws JavaModelException;
}

