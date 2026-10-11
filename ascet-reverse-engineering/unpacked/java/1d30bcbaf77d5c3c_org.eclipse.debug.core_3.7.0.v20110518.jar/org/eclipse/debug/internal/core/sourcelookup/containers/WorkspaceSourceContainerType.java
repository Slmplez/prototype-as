/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.debug.internal.core.sourcelookup.containers;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.sourcelookup.ISourceContainer;
import org.eclipse.debug.core.sourcelookup.containers.AbstractSourceContainerTypeDelegate;
import org.eclipse.debug.core.sourcelookup.containers.WorkspaceSourceContainer;
import org.eclipse.debug.internal.core.sourcelookup.SourceLookupMessages;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class WorkspaceSourceContainerType
extends AbstractSourceContainerTypeDelegate {
    public ISourceContainer createSourceContainer(String memento) throws CoreException {
        Element node = this.parseDocument(memento);
        if (node.getNodeType() == 1) {
            Element element = node;
            if ("workspace".equals(element.getNodeName())) {
                return new WorkspaceSourceContainer();
            }
            this.abort(SourceLookupMessages.WorkspaceSourceContainerType_3, null);
        }
        this.abort(SourceLookupMessages.WorkspaceSourceContainerType_4, null);
        return null;
    }

    public String getMemento(ISourceContainer container) throws CoreException {
        Document document = this.newDocument();
        Element element = document.createElement("workspace");
        document.appendChild(element);
        return this.serializeDocument(document);
    }
}

