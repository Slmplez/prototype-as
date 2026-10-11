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
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;

public interface IFolder
extends IContainer,
IAdaptable {
    public void create(boolean var1, boolean var2, IProgressMonitor var3) throws CoreException;

    public void create(int var1, boolean var2, IProgressMonitor var3) throws CoreException;

    public void createLink(IPath var1, int var2, IProgressMonitor var3) throws CoreException;

    public void createLink(URI var1, int var2, IProgressMonitor var3) throws CoreException;

    public void delete(boolean var1, boolean var2, IProgressMonitor var3) throws CoreException;

    public IFile getFile(String var1);

    public IFolder getFolder(String var1);

    public void move(IPath var1, boolean var2, boolean var3, IProgressMonitor var4) throws CoreException;
}

