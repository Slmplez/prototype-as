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
import org.eclipse.debug.core.sourcelookup.containers.DefaultSourceContainer;
import org.eclipse.debug.internal.core.sourcelookup.SourceLookupMessages;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class DefaultSourceContainerType
extends AbstractSourceContainerTypeDelegate {
    public String getMemento(ISourceContainer container) throws CoreException {
        Document document = this.newDocument();
        Element element = document.createElement("default");
        document.appendChild(element);
        return this.serializeDocument(document);
    }

    public ISourceContainer createSourceContainer(String memento) throws CoreException {
        Element node = this.parseDocument(memento);
        if (node.getNodeType() == 1) {
            Element element = node;
            if ("default".equals(element.getNodeName())) {
                return new DefaultSourceContainer();
            }
            this.abort(SourceLookupMessages.DefaultSourceContainerType_6, null);
        }
        this.abort(SourceLookupMessages.DefaultSourceContainerType_7, null);
        return null;
    }
}

