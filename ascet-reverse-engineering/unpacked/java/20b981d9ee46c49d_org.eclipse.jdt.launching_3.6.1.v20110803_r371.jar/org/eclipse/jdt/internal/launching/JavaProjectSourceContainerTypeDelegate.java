/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IWorkspace
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.debug.core.sourcelookup.ISourceContainer
 *  org.eclipse.debug.core.sourcelookup.containers.AbstractSourceContainerTypeDelegate
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.JavaCore
 */
package org.eclipse.jdt.internal.launching;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.sourcelookup.ISourceContainer;
import org.eclipse.debug.core.sourcelookup.containers.AbstractSourceContainerTypeDelegate;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.launching.sourcelookup.containers.JavaProjectSourceContainer;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class JavaProjectSourceContainerTypeDelegate
extends AbstractSourceContainerTypeDelegate {
    public ISourceContainer createSourceContainer(String memento) throws CoreException {
        Element node = this.parseDocument(memento);
        if (node.getNodeType() == 1) {
            Element element = node;
            if ("javaProject".equals(element.getNodeName())) {
                String string = element.getAttribute("name");
                if (string == null || string.length() == 0) {
                    this.abort(LaunchingMessages.JavaProjectSourceContainerTypeDelegate_5, null);
                }
                IWorkspace workspace = ResourcesPlugin.getWorkspace();
                IProject project = workspace.getRoot().getProject(string);
                IJavaProject javaProject = JavaCore.create((IProject)project);
                return new JavaProjectSourceContainer(javaProject);
            }
            this.abort(LaunchingMessages.JavaProjectSourceContainerTypeDelegate_6, null);
        }
        this.abort(LaunchingMessages.JavaProjectSourceContainerTypeDelegate_7, null);
        return null;
    }

    public String getMemento(ISourceContainer container) throws CoreException {
        JavaProjectSourceContainer project = (JavaProjectSourceContainer)container;
        Document document = this.newDocument();
        Element element = document.createElement("javaProject");
        element.setAttribute("name", project.getName());
        document.appendChild(element);
        return this.serializeDocument(document);
    }
}

