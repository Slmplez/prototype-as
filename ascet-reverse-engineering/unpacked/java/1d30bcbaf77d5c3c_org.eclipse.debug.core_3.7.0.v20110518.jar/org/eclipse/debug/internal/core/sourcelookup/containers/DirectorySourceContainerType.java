/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.debug.internal.core.sourcelookup.containers;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.debug.core.sourcelookup.ISourceContainer;
import org.eclipse.debug.core.sourcelookup.containers.AbstractSourceContainerTypeDelegate;
import org.eclipse.debug.core.sourcelookup.containers.DirectorySourceContainer;
import org.eclipse.debug.internal.core.sourcelookup.SourceLookupMessages;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class DirectorySourceContainerType
extends AbstractSourceContainerTypeDelegate {
    public ISourceContainer createSourceContainer(String memento) throws CoreException {
        Element node = this.parseDocument(memento);
        if (node.getNodeType() == 1) {
            Element element = node;
            if ("directory".equals(element.getNodeName())) {
                String string = element.getAttribute("path");
                if (string == null || string.length() == 0) {
                    this.abort(SourceLookupMessages.DirectorySourceContainerType_10, null);
                }
                String nest = element.getAttribute("nest");
                boolean nested = "true".equals(nest);
                return new DirectorySourceContainer((IPath)new Path(string), nested);
            }
            this.abort(SourceLookupMessages.DirectorySourceContainerType_11, null);
        }
        this.abort(SourceLookupMessages.DirectorySourceContainerType_12, null);
        return null;
    }

    public String getMemento(ISourceContainer container) throws CoreException {
        DirectorySourceContainer folder = (DirectorySourceContainer)container;
        Document document = this.newDocument();
        Element element = document.createElement("directory");
        element.setAttribute("path", folder.getDirectory().getAbsolutePath());
        String nest = "false";
        if (folder.isComposite()) {
            nest = "true";
        }
        element.setAttribute("nest", nest);
        document.appendChild(element);
        return this.serializeDocument(document);
    }
}

