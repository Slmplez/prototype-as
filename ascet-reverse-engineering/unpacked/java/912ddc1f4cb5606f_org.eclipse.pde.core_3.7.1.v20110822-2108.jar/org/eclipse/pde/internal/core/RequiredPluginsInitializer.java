/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jdt.core.ClasspathContainerInitializer
 *  org.eclipse.jdt.core.IClasspathContainer
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.JavaCore
 */
package org.eclipse.pde.internal.core;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.core.ClasspathContainerInitializer;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.RequiredPluginsClasspathContainer;

public class RequiredPluginsInitializer
extends ClasspathContainerInitializer {
    public void initialize(IPath containerPath, IJavaProject javaProject) throws CoreException {
        IProject project = javaProject.getProject();
        IPluginModelBase model = PluginRegistry.findModel(project);
        JavaCore.setClasspathContainer((IPath)PDECore.REQUIRED_PLUGINS_CONTAINER_PATH, (IJavaProject[])new IJavaProject[]{javaProject}, (IClasspathContainer[])new IClasspathContainer[]{new RequiredPluginsClasspathContainer(model)}, null);
    }

    public Object getComparisonID(IPath containerPath, IJavaProject project) {
        if (containerPath == null || project == null) {
            return null;
        }
        return String.valueOf(containerPath.segment(0)) + "/" + project.getPath().segment(0);
    }

    public String getDescription(IPath containerPath, IJavaProject project) {
        return PDECoreMessages.RequiredPluginsClasspathContainer_description;
    }

    public IStatus getSourceAttachmentStatus(IPath containerPath, IJavaProject project) {
        return Status.OK_STATUS;
    }

    public boolean canUpdateClasspathContainer(IPath containerPath, IJavaProject project) {
        return true;
    }

    public void requestClasspathContainerUpdate(IPath containerPath, IJavaProject project, IClasspathContainer containerSuggestion) throws CoreException {
        JavaCore.setClasspathContainer((IPath)containerPath, (IJavaProject[])new IJavaProject[]{project}, (IClasspathContainer[])new IClasspathContainer[]{containerSuggestion}, null);
    }
}

