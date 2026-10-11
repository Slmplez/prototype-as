/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.core;

import java.util.HashSet;
import java.util.Iterator;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.ExternalFoldersManager;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;

public class ExternalFolderChange {
    private JavaProject project;
    private IClasspathEntry[] oldResolvedClasspath;

    public ExternalFolderChange(JavaProject project, IClasspathEntry[] oldResolvedClasspath) {
        this.project = project;
        this.oldResolvedClasspath = oldResolvedClasspath;
    }

    public void updateExternalFoldersIfNecessary(boolean refreshIfExistAlready, IProgressMonitor monitor) throws JavaModelException {
        HashSet oldFolders = ExternalFoldersManager.getExternalFolders(this.oldResolvedClasspath);
        IClasspathEntry[] newResolvedClasspath = this.project.getResolvedClasspath();
        HashSet newFolders = ExternalFoldersManager.getExternalFolders(newResolvedClasspath);
        if (newFolders == null) {
            return;
        }
        ExternalFoldersManager foldersManager = JavaModelManager.getExternalManager();
        Iterator iterator = newFolders.iterator();
        while (iterator.hasNext()) {
            Object folderPath = iterator.next();
            if (oldFolders != null && oldFolders.remove(folderPath) && !foldersManager.removePendingFolder(folderPath)) continue;
            try {
                foldersManager.createLinkFolder((IPath)folderPath, refreshIfExistAlready, monitor);
            }
            catch (CoreException e) {
                throw new JavaModelException(e);
            }
        }
    }

    public String toString() {
        return "ExternalFolderChange: " + this.project.getElementName();
    }
}

