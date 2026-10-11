/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.core.resources;

import java.net.URI;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;

public interface IWorkspaceRoot
extends IContainer,
IAdaptable {
    public void delete(boolean var1, boolean var2, IProgressMonitor var3) throws CoreException;

    public IContainer[] findContainersForLocation(IPath var1);

    public IContainer[] findContainersForLocationURI(URI var1);

    public IContainer[] findContainersForLocationURI(URI var1, int var2);

    public IFile[] findFilesForLocation(IPath var1);

    public IFile[] findFilesForLocationURI(URI var1);

    public IFile[] findFilesForLocationURI(URI var1, int var2);

    public IContainer getContainerForLocation(IPath var1);

    public IFile getFileForLocation(IPath var1);

    public IProject getProject(String var1);

    public IProject[] getProjects();

    public IProject[] getProjects(int var1);
}

