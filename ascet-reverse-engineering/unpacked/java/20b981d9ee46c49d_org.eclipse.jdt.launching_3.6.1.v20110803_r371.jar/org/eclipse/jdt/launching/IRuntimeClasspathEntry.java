/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.IJavaProject
 */
package org.eclipse.jdt.launching;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;

public interface IRuntimeClasspathEntry {
    public static final int PROJECT = 1;
    public static final int ARCHIVE = 2;
    public static final int VARIABLE = 3;
    public static final int CONTAINER = 4;
    public static final int OTHER = 5;
    public static final int STANDARD_CLASSES = 1;
    public static final int BOOTSTRAP_CLASSES = 2;
    public static final int USER_CLASSES = 3;

    public int getType();

    public String getMemento() throws CoreException;

    public IPath getPath();

    public IResource getResource();

    public IPath getSourceAttachmentPath();

    public void setSourceAttachmentPath(IPath var1);

    public IPath getSourceAttachmentRootPath();

    public void setSourceAttachmentRootPath(IPath var1);

    public int getClasspathProperty();

    public void setClasspathProperty(int var1);

    public String getLocation();

    public String getSourceAttachmentLocation();

    public String getSourceAttachmentRootLocation();

    public String getVariableName();

    public IClasspathEntry getClasspathEntry();

    public IJavaProject getJavaProject();
}

