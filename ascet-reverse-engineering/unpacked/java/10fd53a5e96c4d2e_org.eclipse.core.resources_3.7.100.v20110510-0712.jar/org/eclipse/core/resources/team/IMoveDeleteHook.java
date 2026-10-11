/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.core.resources.team;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IProjectDescription;
import org.eclipse.core.resources.team.IResourceTree;
import org.eclipse.core.runtime.IProgressMonitor;

public interface IMoveDeleteHook {
    public boolean deleteFile(IResourceTree var1, IFile var2, int var3, IProgressMonitor var4);

    public boolean deleteFolder(IResourceTree var1, IFolder var2, int var3, IProgressMonitor var4);

    public boolean deleteProject(IResourceTree var1, IProject var2, int var3, IProgressMonitor var4);

    public boolean moveFile(IResourceTree var1, IFile var2, IFile var3, int var4, IProgressMonitor var5);

    public boolean moveFolder(IResourceTree var1, IFolder var2, IFolder var3, int var4, IProgressMonitor var5);

    public boolean moveProject(IResourceTree var1, IProject var2, IProjectDescription var3, int var4, IProgressMonitor var5);
}

