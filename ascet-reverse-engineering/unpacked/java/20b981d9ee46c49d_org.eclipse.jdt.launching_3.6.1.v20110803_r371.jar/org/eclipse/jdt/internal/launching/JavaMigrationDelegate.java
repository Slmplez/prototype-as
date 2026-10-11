/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.debug.core.ILaunchConfiguration
 *  org.eclipse.debug.core.ILaunchConfigurationMigrationDelegate
 *  org.eclipse.debug.core.ILaunchConfigurationWorkingCopy
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.IType
 *  org.eclipse.jdt.core.JavaCore
 */
package org.eclipse.jdt.internal.launching;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.core.ILaunchConfigurationMigrationDelegate;
import org.eclipse.debug.core.ILaunchConfigurationWorkingCopy;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.launching.IJavaLaunchConfigurationConstants;

public class JavaMigrationDelegate
implements ILaunchConfigurationMigrationDelegate {
    protected static final String EMPTY_STRING = "";
    static /* synthetic */ Class class$0;

    public boolean isCandidate(ILaunchConfiguration candidate) throws CoreException {
        String pName = candidate.getAttribute(IJavaLaunchConfigurationConstants.ATTR_PROJECT_NAME, EMPTY_STRING);
        if (pName.equals(EMPTY_STRING)) {
            return false;
        }
        if (!this.isAvailable(pName)) {
            return false;
        }
        IResource[] mapped = candidate.getMappedResources();
        IResource target = JavaMigrationDelegate.getResource(candidate);
        if (target == null) {
            return mapped != null;
        }
        if (mapped == null) {
            return true;
        }
        if (mapped.length != 1) {
            return true;
        }
        return !target.equals((Object)mapped[0]);
    }

    private boolean isAvailable(String projectName) {
        IProject project = ResourcesPlugin.getWorkspace().getRoot().getProject(projectName);
        return project.exists() && project.isOpen();
    }

    public static IResource getResource(ILaunchConfiguration candidate) throws CoreException {
        IProject resource = null;
        String pname = candidate.getAttribute(IJavaLaunchConfigurationConstants.ATTR_PROJECT_NAME, EMPTY_STRING);
        if (!EMPTY_STRING.equals(pname)) {
            IProject project = ResourcesPlugin.getWorkspace().getRoot().getProject(pname);
            String tname = candidate.getAttribute(IJavaLaunchConfigurationConstants.ATTR_MAIN_TYPE_NAME, EMPTY_STRING);
            if (!EMPTY_STRING.equals(tname)) {
                IType type;
                IJavaProject jproject;
                if (project != null && project.exists() && project.isOpen() && (jproject = JavaCore.create((IProject)project)) != null && jproject.exists() && (type = jproject.findType(tname = tname.replace('$', '.'))) != null && (resource = type.getUnderlyingResource()) == null) {
                    Class<?> clazz = class$0;
                    if (clazz == null) {
                        try {
                            clazz = class$0 = Class.forName("org.eclipse.core.resources.IResource");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    resource = (IResource)type.getAdapter((Class)clazz);
                }
            } else {
                return project;
            }
            if (resource == null) {
                resource = project;
            }
        }
        return resource;
    }

    public void migrate(ILaunchConfiguration candidate) throws CoreException {
        ILaunchConfigurationWorkingCopy wc = candidate.getWorkingCopy();
        JavaMigrationDelegate.updateResourceMapping(wc);
        wc.doSave();
    }

    public static void updateResourceMapping(ILaunchConfigurationWorkingCopy wc) throws CoreException {
        IResource resource = JavaMigrationDelegate.getResource((ILaunchConfiguration)wc);
        IResource[] resources = null;
        if (resource != null) {
            resources = new IResource[]{resource};
        }
        wc.setMappedResources(resources);
    }
}

