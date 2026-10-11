/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.core.resources;

import org.eclipse.core.resources.FileInfoMatcherDescription;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;

public interface IResourceFilterDescription {
    public static final int INCLUDE_ONLY = 1;
    public static final int EXCLUDE_ALL = 2;
    public static final int FILES = 4;
    public static final int FOLDERS = 8;
    public static final int INHERITABLE = 16;

    public FileInfoMatcherDescription getFileInfoMatcherDescription();

    public IResource getResource();

    public int getType();

    public void delete(int var1, IProgressMonitor var2) throws CoreException;
}

