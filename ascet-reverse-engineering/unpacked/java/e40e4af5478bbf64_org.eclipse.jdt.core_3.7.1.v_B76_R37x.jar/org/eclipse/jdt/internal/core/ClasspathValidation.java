/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.builder.JavaBuilder;

public class ClasspathValidation {
    private JavaProject project;

    public ClasspathValidation(JavaProject project) {
        this.project = project;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void validate() {
        IJavaModelStatus status;
        IPath outputLocation;
        IClasspathEntry[] rawClasspath;
        JavaModelManager.PerProjectInfo perProjectInfo;
        try {
            perProjectInfo = this.project.getPerProjectInfo();
        }
        catch (JavaModelException javaModelException) {
            IProject resource = this.project.getProject();
            if (resource.isAccessible()) {
                this.project.flushClasspathProblemMarkers(true, true);
                JavaBuilder.removeProblemsAndTasksFor((IResource)resource);
            }
            return;
        }
        JavaModelManager.PerProjectInfo perProjectInfo2 = perProjectInfo;
        synchronized (perProjectInfo2) {
            rawClasspath = perProjectInfo.rawClasspath;
            outputLocation = perProjectInfo.outputLocation;
            status = perProjectInfo.rawClasspathStatus;
        }
        this.project.flushClasspathProblemMarkers(false, true);
        if (!status.isOK()) {
            this.project.createClasspathProblemMarker(status);
        }
        this.project.flushClasspathProblemMarkers(false, false);
        if (rawClasspath != JavaProject.INVALID_CLASSPATH && outputLocation != null) {
            int i = 0;
            while (i < rawClasspath.length) {
                status = ClasspathEntry.validateClasspathEntry(this.project, rawClasspath[i], false, false);
                if (!status.isOK()) {
                    this.project.createClasspathProblemMarker(status);
                }
                ++i;
            }
            status = ClasspathEntry.validateClasspath(this.project, rawClasspath, outputLocation);
            if (!status.isOK()) {
                this.project.createClasspathProblemMarker(status);
            }
        }
    }
}

