/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.debug.core.sourcelookup.ISourceContainer
 *  org.eclipse.debug.core.sourcelookup.ISourceContainerType
 *  org.eclipse.debug.core.sourcelookup.containers.CompositeSourceContainer
 *  org.eclipse.jdt.core.JavaCore
 */
package org.eclipse.jdt.launching.sourcelookup.containers;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.debug.core.sourcelookup.ISourceContainer;
import org.eclipse.debug.core.sourcelookup.ISourceContainerType;
import org.eclipse.debug.core.sourcelookup.containers.CompositeSourceContainer;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.launching.IRuntimeClasspathEntry;
import org.eclipse.jdt.launching.JavaRuntime;

public class ClasspathVariableSourceContainer
extends CompositeSourceContainer {
    private IPath fVariable;
    public static final String TYPE_ID = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".sourceContainer.classpathVariable";

    public ClasspathVariableSourceContainer(IPath variablePath) {
        this.fVariable = variablePath;
    }

    protected ISourceContainer[] createSourceContainers() throws CoreException {
        IPath path = JavaCore.getClasspathVariable((String)this.fVariable.segment(0));
        if (path == null) {
            return new ISourceContainer[0];
        }
        if (this.fVariable.segmentCount() > 1) {
            path = path.append(this.fVariable.removeFirstSegments(1));
        }
        IRuntimeClasspathEntry entry = JavaRuntime.newArchiveRuntimeClasspathEntry(path);
        return JavaRuntime.getSourceContainers(new IRuntimeClasspathEntry[]{entry});
    }

    public String getName() {
        return this.fVariable.toOSString();
    }

    public IPath getPath() {
        return this.fVariable;
    }

    public ISourceContainerType getType() {
        return this.getSourceContainerType(TYPE_ID);
    }
}

