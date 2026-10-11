/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.jdt.core.ClasspathContainerInitializer
 *  org.eclipse.jdt.core.IClasspathContainer
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.JavaCore
 */
package org.eclipse.pde.internal.core;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.ClasspathContainerInitializer;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.pde.internal.core.ExternalJavaSearchClasspathContainer;
import org.eclipse.pde.internal.core.PDECore;

public class ExternalJavaSearchInitializer
extends ClasspathContainerInitializer {
    ExternalJavaSearchClasspathContainer fContainer;

    public void initialize(IPath containerPath, IJavaProject javaProject) throws CoreException {
        JavaCore.setClasspathContainer((IPath)PDECore.JAVA_SEARCH_CONTAINER_PATH, (IJavaProject[])new IJavaProject[]{javaProject}, (IClasspathContainer[])new IClasspathContainer[]{new ExternalJavaSearchClasspathContainer()}, null);
    }
}

