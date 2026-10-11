/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.ResourcesPlugin
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.OpenableElementInfo;

public class JavaModelInfo
extends OpenableElementInfo {
    Object[] nonJavaResources;

    private Object[] computeNonJavaResources() {
        IProject[] projects = ResourcesPlugin.getWorkspace().getRoot().getProjects();
        int length = projects.length;
        Object[] resources = null;
        int index = 0;
        int i = 0;
        while (i < length) {
            IProject project = projects[i];
            if (!JavaProject.hasJavaNature(project)) {
                if (resources == null) {
                    resources = new Object[length];
                }
                resources[index++] = project;
            }
            ++i;
        }
        if (index == 0) {
            return NO_NON_JAVA_RESOURCES;
        }
        if (index < length) {
            Object[] objectArray = resources;
            resources = new Object[index];
            System.arraycopy(objectArray, 0, resources, 0, index);
        }
        return resources;
    }

    Object[] getNonJavaResources() {
        if (this.nonJavaResources == null) {
            this.nonJavaResources = this.computeNonJavaResources();
        }
        return this.nonJavaResources;
    }
}

