/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.debug.internal.core.sourcelookup.containers;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.debug.core.sourcelookup.ISourceContainer;
import org.eclipse.debug.core.sourcelookup.containers.AbstractSourceContainerTypeDelegate;
import org.eclipse.debug.core.sourcelookup.containers.ArchiveSourceContainer;
import org.eclipse.debug.internal.core.sourcelookup.SourceLookupMessages;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class ArchiveSourceContainerType
extends AbstractSourceContainerTypeDelegate {
    public ISourceContainer createSourceContainer(String memento) throws CoreException {
        Element node = this.parseDocument(memento);
        if (node.getNodeType() == 1) {
            Element element = node;
            if ("archive".equals(element.getNodeName())) {
                String string = element.getAttribute("path");
                if (string == null || string.length() == 0) {
                    this.abort(SourceLookupMessages.ExternalArchiveSourceContainerType_10, null);
                }
                String detect = element.getAttribute("detectRoot");
                boolean auto = "true".equals(detect);
                IFile file = ResourcesPlugin.getWorkspace().getRoot().getFile((IPath)new Path(string));
                return new ArchiveSourceContainer(file, auto);
            }
            this.abort(SourceLookupMessages.ExternalArchiveSourceContainerType_11, null);
        }
        this.abort(SourceLookupMessages.ExternalArchiveSourceContainerType_12, null);
        return null;
    }

    public String getMemento(ISourceContainer container) throws CoreException {
        ArchiveSourceContainer archive = (ArchiveSourceContainer)container;
        Document document = this.newDocument();
        Element element = document.createElement("archive");
        element.setAttribute("path", archive.getFile().getFullPath().toString());
        String detectRoot = "false";
        if (archive.isDetectRoot()) {
            detectRoot = "true";
        }
        element.setAttribute("detectRoot", detectRoot);
        document.appendChild(element);
        return this.serializeDocument(document);
    }
}

