/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.debug.core.sourcelookup.containers;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.sourcelookup.ISourceContainer;
import org.eclipse.debug.core.sourcelookup.ISourceContainerType;
import org.eclipse.debug.core.sourcelookup.containers.CompositeSourceContainer;
import org.eclipse.debug.core.sourcelookup.containers.ProjectSourceContainer;
import org.eclipse.debug.internal.core.sourcelookup.SourceLookupMessages;

public class WorkspaceSourceContainer
extends CompositeSourceContainer {
    public static final String TYPE_ID = String.valueOf(DebugPlugin.getUniqueIdentifier()) + ".containerType.workspace";

    public String getName() {
        return SourceLookupMessages.WorkspaceSourceContainer_0;
    }

    public boolean equals(Object obj) {
        return obj instanceof WorkspaceSourceContainer;
    }

    public int hashCode() {
        return ResourcesPlugin.getWorkspace().hashCode();
    }

    public ISourceContainerType getType() {
        return this.getSourceContainerType(TYPE_ID);
    }

    protected ISourceContainer[] createSourceContainers() throws CoreException {
        IProject[] projects = ResourcesPlugin.getWorkspace().getRoot().getProjects();
        ISourceContainer[] containers = new ISourceContainer[projects.length];
        int i = 0;
        while (i < projects.length) {
            ProjectSourceContainer container = new ProjectSourceContainer(projects[i], false);
            container.init(this.getDirector());
            containers[i] = container;
            ++i;
        }
        return containers;
    }
}

