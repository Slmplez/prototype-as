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

import org.eclipse.core.resources.FileInfoMatcherDescription;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceFilterDescription;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;

public interface IContainer
extends IResource,
IAdaptable {
    public static final int INCLUDE_PHANTOMS = 1;
    public static final int INCLUDE_TEAM_PRIVATE_MEMBERS = 2;
    public static final int EXCLUDE_DERIVED = 4;
    public static final int INCLUDE_HIDDEN = 8;

    public boolean exists(IPath var1);

    public IResource findMember(String var1);

    public IResource findMember(String var1, boolean var2);

    public IResource findMember(IPath var1);

    public IResource findMember(IPath var1, boolean var2);

    public String getDefaultCharset() throws CoreException;

    public String getDefaultCharset(boolean var1) throws CoreException;

    public IFile getFile(IPath var1);

    public IFolder getFolder(IPath var1);

    public IResource[] members() throws CoreException;

    public IResource[] members(boolean var1) throws CoreException;

    public IResource[] members(int var1) throws CoreException;

    public IFile[] findDeletedMembersWithHistory(int var1, IProgressMonitor var2) throws CoreException;

    public void setDefaultCharset(String var1) throws CoreException;

    public void setDefaultCharset(String var1, IProgressMonitor var2) throws CoreException;

    public IResourceFilterDescription createFilter(int var1, FileInfoMatcherDescription var2, int var3, IProgressMonitor var4) throws CoreException;

    public IResourceFilterDescription[] getFilters() throws CoreException;
}

