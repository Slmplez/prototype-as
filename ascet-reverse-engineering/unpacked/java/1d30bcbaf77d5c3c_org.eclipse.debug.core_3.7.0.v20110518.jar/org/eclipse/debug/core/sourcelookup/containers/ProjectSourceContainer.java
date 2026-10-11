/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.debug.core.sourcelookup.containers;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.sourcelookup.ISourceContainer;
import org.eclipse.debug.core.sourcelookup.ISourceContainerType;
import org.eclipse.debug.core.sourcelookup.containers.ContainerSourceContainer;

public class ProjectSourceContainer
extends ContainerSourceContainer {
    boolean fReferencedProjects = false;
    public static final String TYPE_ID = String.valueOf(DebugPlugin.getUniqueIdentifier()) + ".containerType.project";

    public ProjectSourceContainer(IProject project, boolean referenced) {
        super((IContainer)project, true);
        this.fReferencedProjects = referenced;
    }

    public boolean isSearchReferencedProjects() {
        return this.fReferencedProjects;
    }

    public IProject getProject() {
        return (IProject)this.getContainer();
    }

    public ISourceContainerType getType() {
        return this.getSourceContainerType(TYPE_ID);
    }

    public boolean isComposite() {
        return true;
    }

    protected ISourceContainer[] createSourceContainers() throws CoreException {
        if (this.getProject().isOpen()) {
            if (this.isSearchReferencedProjects()) {
                IProject project = this.getProject();
                IProject[] projects = this.getAllReferencedProjects(project);
                ISourceContainer[] folders = super.createSourceContainers();
                ArrayList<ISourceContainer> all = new ArrayList<ISourceContainer>(folders.length + projects.length);
                int i = 0;
                while (i < folders.length) {
                    all.add(folders[i]);
                    ++i;
                }
                i = 0;
                while (i < projects.length) {
                    if (project.exists() && project.isOpen()) {
                        ProjectSourceContainer container = new ProjectSourceContainer(projects[i], false);
                        container.init(this.getDirector());
                        all.add(container);
                    }
                    ++i;
                }
                return all.toArray(new ISourceContainer[all.size()]);
            }
            return super.createSourceContainers();
        }
        return new ISourceContainer[0];
    }

    private IProject[] getAllReferencedProjects(IProject project) throws CoreException {
        HashSet all = new HashSet();
        this.getAllReferencedProjects(all, project);
        return all.toArray(new IProject[all.size()]);
    }

    private void getAllReferencedProjects(Set all, IProject project) throws CoreException {
        IProject[] refs = project.getReferencedProjects();
        int i = 0;
        while (i < refs.length) {
            if (!all.contains(refs[i]) && refs[i].exists() && refs[i].isOpen()) {
                all.add(refs[i]);
                this.getAllReferencedProjects(all, refs[i]);
            }
            ++i;
        }
    }
}

