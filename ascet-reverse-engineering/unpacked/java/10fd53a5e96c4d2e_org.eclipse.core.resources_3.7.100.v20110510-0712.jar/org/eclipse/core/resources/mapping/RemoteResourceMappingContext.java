/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.core.resources.mapping;

import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IStorage;
import org.eclipse.core.resources.mapping.ResourceMappingContext;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;

public abstract class RemoteResourceMappingContext
extends ResourceMappingContext {
    public static final int FILE_CONTENTS_REQUIRED = 1;
    public static final int NONE = 0;

    public abstract IStorage fetchBaseContents(IFile var1, IProgressMonitor var2) throws CoreException;

    public IResource[] fetchBaseMembers(IContainer container, IProgressMonitor monitor) throws CoreException {
        return null;
    }

    public abstract IResource[] fetchMembers(IContainer var1, IProgressMonitor var2) throws CoreException;

    public abstract IStorage fetchRemoteContents(IFile var1, IProgressMonitor var2) throws CoreException;

    public IResource[] fetchRemoteMembers(IContainer container, IProgressMonitor monitor) throws CoreException {
        return null;
    }

    public abstract IProject[] getProjects();

    public abstract boolean hasLocalChange(IResource var1, IProgressMonitor var2) throws CoreException;

    public abstract boolean hasRemoteChange(IResource var1, IProgressMonitor var2) throws CoreException;

    public abstract boolean isThreeWay();

    public abstract void refresh(ResourceTraversal[] var1, int var2, IProgressMonitor var3) throws CoreException;
}

