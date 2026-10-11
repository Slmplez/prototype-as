/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.JavaProject;

public class ExternalJavaProject
extends JavaProject {
    public static final String EXTERNAL_PROJECT_NAME = " ";

    public ExternalJavaProject(IClasspathEntry[] rawClasspath) {
        super(ResourcesPlugin.getWorkspace().getRoot().getProject(EXTERNAL_PROJECT_NAME), JavaModelManager.getJavaModelManager().getJavaModel());
        try {
            this.getPerProjectInfo().setRawClasspath(rawClasspath, this.defaultOutputLocation(), JavaModelStatus.VERIFIED_OK);
        }
        catch (JavaModelException javaModelException) {}
    }

    public boolean equals(Object o) {
        return this == o;
    }

    public boolean exists() {
        return false;
    }

    public String getOption(String optionName, boolean inheritJavaCoreOptions) {
        if ("org.eclipse.jdt.core.compiler.problem.forbiddenReference".equals(optionName) || "org.eclipse.jdt.core.compiler.problem.discouragedReference".equals(optionName)) {
            return "ignore";
        }
        return super.getOption(optionName, inheritJavaCoreOptions);
    }

    public boolean isOnClasspath(IJavaElement element) {
        return false;
    }

    public boolean isOnClasspath(IResource resource) {
        return false;
    }

    protected IStatus validateExistence(IResource underlyingResource) {
        return JavaModelStatus.VERIFIED_OK;
    }
}

