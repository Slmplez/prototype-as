/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IWorkspace
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.debug.internal.core.sourcelookup.containers;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.sourcelookup.ISourceContainer;
import org.eclipse.debug.core.sourcelookup.containers.AbstractSourceContainerTypeDelegate;
import org.eclipse.debug.core.sourcelookup.containers.ProjectSourceContainer;
import org.eclipse.debug.internal.core.sourcelookup.SourceLookupMessages;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class ProjectSourceContainerType
extends AbstractSourceContainerTypeDelegate {
    public String getMemento(ISourceContainer container) throws CoreException {
        ProjectSourceContainer project = (ProjectSourceContainer)container;
        Document document = this.newDocument();
        Element element = document.createElement("project");
        element.setAttribute("name", project.getContainer().getName());
        String referenced = "false";
        if (project.isSearchReferencedProjects()) {
            referenced = "true";
        }
        element.setAttribute("referencedProjects", referenced);
        document.appendChild(element);
        return this.serializeDocument(document);
    }

    public ISourceContainer createSourceContainer(String memento) throws CoreException {
        Element node = this.parseDocument(memento);
        if (node.getNodeType() == 1) {
            Element element = node;
            if ("project".equals(element.getNodeName())) {
                String string = element.getAttribute("name");
                if (string == null || string.length() == 0) {
                    this.abort(SourceLookupMessages.ProjectSourceContainerType_10, null);
                }
                String nest = element.getAttribute("referencedProjects");
                boolean ref = "true".equals(nest);
                IWorkspace workspace = ResourcesPlugin.getWorkspace();
                IProject project = workspace.getRoot().getProject(string);
                return new ProjectSourceContainer(project, ref);
            }
            this.abort(SourceLookupMessages.ProjectSourceContainerType_11, null);
        }
        this.abort(SourceLookupMessages.ProjectSourceContainerType_12, null);
        return null;
    }
}

