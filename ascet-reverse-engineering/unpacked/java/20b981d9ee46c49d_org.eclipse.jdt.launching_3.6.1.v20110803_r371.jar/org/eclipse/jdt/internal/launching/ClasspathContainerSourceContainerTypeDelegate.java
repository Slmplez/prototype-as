/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.debug.core.sourcelookup.ISourceContainer
 *  org.eclipse.debug.core.sourcelookup.containers.AbstractSourceContainerTypeDelegate
 */
package org.eclipse.jdt.internal.launching;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.debug.core.sourcelookup.ISourceContainer;
import org.eclipse.debug.core.sourcelookup.containers.AbstractSourceContainerTypeDelegate;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.launching.sourcelookup.containers.ClasspathContainerSourceContainer;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class ClasspathContainerSourceContainerTypeDelegate
extends AbstractSourceContainerTypeDelegate {
    public ISourceContainer createSourceContainer(String memento) throws CoreException {
        Element node = this.parseDocument(memento);
        if (node.getNodeType() == 1) {
            Element element = node;
            if ("classpathContainer".equals(element.getNodeName())) {
                String string = element.getAttribute("path");
                if (string == null || string.length() == 0) {
                    this.abort(LaunchingMessages.ClasspathContainerSourceContainerTypeDelegate_5, null);
                }
                return new ClasspathContainerSourceContainer((IPath)new Path(string));
            }
            this.abort(LaunchingMessages.ClasspathContainerSourceContainerTypeDelegate_6, null);
        }
        this.abort(LaunchingMessages.ClasspathContainerSourceContainerTypeDelegate_7, null);
        return null;
    }

    public String getMemento(ISourceContainer container) throws CoreException {
        ClasspathContainerSourceContainer var = (ClasspathContainerSourceContainer)container;
        Document document = this.newDocument();
        Element element = document.createElement("classpathContainer");
        element.setAttribute("path", var.getPath().toString());
        document.appendChild(element);
        return this.serializeDocument(document);
    }
}

