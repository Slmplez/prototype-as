/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.debug.core.ILaunchConfiguration
 *  org.eclipse.debug.core.sourcelookup.ISourceContainer
 *  org.eclipse.debug.core.sourcelookup.ISourceContainerType
 *  org.eclipse.debug.core.sourcelookup.ISourceLookupDirector
 *  org.eclipse.debug.core.sourcelookup.containers.CompositeSourceContainer
 *  org.eclipse.jdt.core.IClasspathContainer
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.JavaCore
 */
package org.eclipse.jdt.launching.sourcelookup.containers;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.core.sourcelookup.ISourceContainer;
import org.eclipse.debug.core.sourcelookup.ISourceContainerType;
import org.eclipse.debug.core.sourcelookup.ISourceLookupDirector;
import org.eclipse.debug.core.sourcelookup.containers.CompositeSourceContainer;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.launching.IRuntimeClasspathEntry;
import org.eclipse.jdt.launching.JavaRuntime;

public class ClasspathContainerSourceContainer
extends CompositeSourceContainer {
    private IPath fContainerPath;
    public static final String TYPE_ID = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".sourceContainer.classpathContainer";

    public ClasspathContainerSourceContainer(IPath containerPath) {
        this.fContainerPath = containerPath;
    }

    public String getName() {
        IClasspathContainer container = null;
        try {
            container = this.getClasspathContainer();
        }
        catch (CoreException coreException) {}
        if (container == null) {
            return this.getPath().lastSegment();
        }
        return container.getDescription();
    }

    public ISourceContainerType getType() {
        return this.getSourceContainerType(TYPE_ID);
    }

    protected ISourceContainer[] createSourceContainers() throws CoreException {
        IRuntimeClasspathEntry entry = JavaRuntime.newRuntimeContainerClasspathEntry(this.getPath(), 3);
        IRuntimeClasspathEntry[] entries = JavaRuntime.resolveSourceLookupPath(new IRuntimeClasspathEntry[]{entry}, this.getDirector().getLaunchConfiguration());
        return JavaRuntime.getSourceContainers(entries);
    }

    public IPath getPath() {
        return this.fContainerPath;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ClasspathContainerSourceContainer) {
            return this.getPath().equals((Object)((ClasspathContainerSourceContainer)((Object)obj)).getPath());
        }
        return false;
    }

    public int hashCode() {
        return this.getPath().hashCode();
    }

    public IClasspathContainer getClasspathContainer() throws CoreException {
        IJavaProject project;
        ILaunchConfiguration configuration;
        ISourceLookupDirector director = this.getDirector();
        if (director != null && (configuration = director.getLaunchConfiguration()) != null && (project = JavaRuntime.getJavaProject(configuration)) != null) {
            return JavaCore.getClasspathContainer((IPath)this.getPath(), (IJavaProject)project);
        }
        return null;
    }
}

