/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IWorkspace
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.debug.internal.core.sourcelookup.containers;

import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.debug.core.sourcelookup.ISourceContainer;
import org.eclipse.debug.core.sourcelookup.containers.AbstractSourceContainerTypeDelegate;
import org.eclipse.debug.core.sourcelookup.containers.FolderSourceContainer;
import org.eclipse.debug.internal.core.sourcelookup.SourceLookupMessages;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class FolderSourceContainerType
extends AbstractSourceContainerTypeDelegate {
    public String getMemento(ISourceContainer container) throws CoreException {
        FolderSourceContainer folderSourceContainer = (FolderSourceContainer)container;
        Document document = this.newDocument();
        Element element = document.createElement("folder");
        element.setAttribute("path", folderSourceContainer.getContainer().getFullPath().toString());
        String nest = "false";
        if (folderSourceContainer.isComposite()) {
            nest = "true";
        }
        element.setAttribute("nest", nest);
        document.appendChild(element);
        return this.serializeDocument(document);
    }

    public ISourceContainer createSourceContainer(String memento) throws CoreException {
        Element node = this.parseDocument(memento);
        if (node.getNodeType() == 1) {
            Element element = node;
            if ("folder".equals(element.getNodeName())) {
                String string = element.getAttribute("path");
                if (string == null || string.length() == 0) {
                    this.abort(SourceLookupMessages.FolderSourceContainerType_10, null);
                }
                String nest = element.getAttribute("nest");
                boolean nested = "true".equals(nest);
                IWorkspace workspace = ResourcesPlugin.getWorkspace();
                IFolder folder = workspace.getRoot().getFolder((IPath)new Path(string));
                return new FolderSourceContainer((IContainer)folder, nested);
            }
            this.abort(SourceLookupMessages.FolderSourceContainerType_11, null);
        }
        this.abort(SourceLookupMessages.FolderSourceContainerType_12, null);
        return null;
    }
}

