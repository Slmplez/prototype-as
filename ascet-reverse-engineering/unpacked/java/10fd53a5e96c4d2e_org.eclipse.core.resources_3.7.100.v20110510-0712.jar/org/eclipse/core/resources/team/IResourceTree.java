/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.core.resources.team;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IProjectDescription;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;

public interface IResourceTree {
    public static final long NULL_TIMESTAMP = 0L;

    public void addToLocalHistory(IFile var1);

    public boolean isSynchronized(IResource var1, int var2);

    public long computeTimestamp(IFile var1);

    public long getTimestamp(IFile var1);

    public void updateMovedFileTimestamp(IFile var1, long var2);

    public void failed(IStatus var1);

    public void deletedFile(IFile var1);

    public void deletedFolder(IFolder var1);

    public void deletedProject(IProject var1);

    public void movedFile(IFile var1, IFile var2);

    public void movedFolderSubtree(IFolder var1, IFolder var2);

    public boolean movedProjectSubtree(IProject var1, IProjectDescription var2);

    public void standardDeleteFile(IFile var1, int var2, IProgressMonitor var3);

    public void standardDeleteFolder(IFolder var1, int var2, IProgressMonitor var3);

    public void standardDeleteProject(IProject var1, int var2, IProgressMonitor var3);

    public void standardMoveFile(IFile var1, IFile var2, int var3, IProgressMonitor var4);

    public void standardMoveFolder(IFolder var1, IFolder var2, int var3, IProgressMonitor var4);

    public void standardMoveProject(IProject var1, IProjectDescription var2, int var3, IProgressMonitor var4);
}

