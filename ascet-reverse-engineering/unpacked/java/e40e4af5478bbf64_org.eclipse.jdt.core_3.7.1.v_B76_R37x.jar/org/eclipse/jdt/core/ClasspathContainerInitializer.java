/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.jdt.core;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.internal.core.JavaModelStatus;

public abstract class ClasspathContainerInitializer {
    public static final int ATTRIBUTE_NOT_SUPPORTED = 1;
    public static final int ATTRIBUTE_READ_ONLY = 2;

    public abstract void initialize(IPath var1, IJavaProject var2) throws CoreException;

    public boolean canUpdateClasspathContainer(IPath containerPath, IJavaProject project) {
        return false;
    }

    public void requestClasspathContainerUpdate(IPath containerPath, IJavaProject project, IClasspathContainer containerSuggestion) throws CoreException {
    }

    public String getDescription(IPath containerPath, IJavaProject project) {
        return containerPath.makeRelative().toString();
    }

    public IClasspathContainer getFailureContainer(final IPath containerPath, IJavaProject project) {
        final String description = this.getDescription(containerPath, project);
        return new IClasspathContainer(){

            public IClasspathEntry[] getClasspathEntries() {
                return new IClasspathEntry[0];
            }

            public String getDescription() {
                return description;
            }

            public int getKind() {
                return 0;
            }

            public IPath getPath() {
                return containerPath;
            }

            public String toString() {
                return this.getDescription();
            }
        };
    }

    public Object getComparisonID(IPath containerPath, IJavaProject project) {
        if (containerPath == null) {
            return null;
        }
        return containerPath.segment(0);
    }

    public IStatus getAccessRulesStatus(IPath containerPath, IJavaProject project) {
        if (this.canUpdateClasspathContainer(containerPath, project)) {
            return Status.OK_STATUS;
        }
        return new JavaModelStatus(2);
    }

    public IStatus getAttributeStatus(IPath containerPath, IJavaProject project, String attributeKey) {
        if (this.canUpdateClasspathContainer(containerPath, project)) {
            return Status.OK_STATUS;
        }
        return new JavaModelStatus(2);
    }

    public IStatus getSourceAttachmentStatus(IPath containerPath, IJavaProject project) {
        if (this.canUpdateClasspathContainer(containerPath, project)) {
            return Status.OK_STATUS;
        }
        return new JavaModelStatus(2);
    }
}

