/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.ClasspathContainerInitializer;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.UserLibrary;
import org.eclipse.jdt.internal.core.UserLibraryClasspathContainer;
import org.eclipse.jdt.internal.core.util.Util;

public class UserLibraryClasspathContainerInitializer
extends ClasspathContainerInitializer {
    public boolean canUpdateClasspathContainer(IPath containerPath, IJavaProject project) {
        return this.isUserLibraryContainer(containerPath);
    }

    public Object getComparisonID(IPath containerPath, IJavaProject project) {
        return containerPath;
    }

    public String getDescription(IPath containerPath, IJavaProject project) {
        if (this.isUserLibraryContainer(containerPath)) {
            return containerPath.segment(1);
        }
        return super.getDescription(containerPath, project);
    }

    public void initialize(IPath containerPath, IJavaProject project) throws CoreException {
        if (this.isUserLibraryContainer(containerPath)) {
            String userLibName = containerPath.segment(1);
            UserLibrary userLibrary = JavaModelManager.getUserLibraryManager().getUserLibrary(userLibName);
            if (userLibrary != null) {
                UserLibraryClasspathContainer container = new UserLibraryClasspathContainer(userLibName);
                JavaCore.setClasspathContainer(containerPath, new IJavaProject[]{project}, new IClasspathContainer[]{container}, null);
            } else if (JavaModelManager.CP_RESOLVE_VERBOSE || JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                this.verbose_no_user_library_found(project, userLibName);
            }
        } else if (JavaModelManager.CP_RESOLVE_VERBOSE || JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
            this.verbose_not_a_user_library(project, containerPath);
        }
    }

    private boolean isUserLibraryContainer(IPath path) {
        return path != null && path.segmentCount() == 2 && "org.eclipse.jdt.USER_LIBRARY".equals(path.segment(0));
    }

    public void requestClasspathContainerUpdate(IPath containerPath, IJavaProject project, IClasspathContainer containerSuggestion) throws CoreException {
        if (this.isUserLibraryContainer(containerPath)) {
            String name = containerPath.segment(1);
            if (containerSuggestion != null) {
                JavaModelManager.getUserLibraryManager().setUserLibrary(name, containerSuggestion.getClasspathEntries(), containerSuggestion.getKind() == 2);
            } else {
                JavaModelManager.getUserLibraryManager().removeUserLibrary(name);
            }
        }
    }

    private void verbose_no_user_library_found(IJavaProject project, String userLibraryName) {
        Util.verbose("UserLibrary INIT - FAILED (no user library found)\n\tproject: " + project.getElementName() + '\n' + "\tuserLibraryName: " + userLibraryName);
    }

    private void verbose_not_a_user_library(IJavaProject project, IPath containerPath) {
        Util.verbose("UserLibrary INIT - FAILED (not a user library)\n\tproject: " + project.getElementName() + '\n' + "\tcontainer path: " + containerPath);
    }
}

