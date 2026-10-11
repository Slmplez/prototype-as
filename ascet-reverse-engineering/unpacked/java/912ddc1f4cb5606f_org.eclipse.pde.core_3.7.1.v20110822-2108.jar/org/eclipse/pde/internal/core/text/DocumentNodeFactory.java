/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.text;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.text.DocumentAttributeNode;
import org.eclipse.pde.internal.core.text.DocumentTextNode;
import org.eclipse.pde.internal.core.text.IDocumentAttributeNode;
import org.eclipse.pde.internal.core.text.IDocumentElementNode;
import org.eclipse.pde.internal.core.text.IDocumentNodeFactory;
import org.eclipse.pde.internal.core.text.IDocumentTextNode;
import org.eclipse.pde.internal.core.text.plugin.DocumentGenericNode;

public abstract class DocumentNodeFactory
implements IDocumentNodeFactory {
    public IDocumentAttributeNode createAttribute(String name, String value, IDocumentElementNode enclosingElement) {
        DocumentAttributeNode attribute = new DocumentAttributeNode();
        try {
            attribute.setAttributeName(name);
            attribute.setAttributeValue(value);
        }
        catch (CoreException coreException) {}
        attribute.setEnclosingElement(enclosingElement);
        return attribute;
    }

    public IDocumentTextNode createDocumentTextNode(String content, IDocumentElementNode parent) {
        DocumentTextNode textNode = new DocumentTextNode();
        textNode.setEnclosingElement(parent);
        parent.addTextNode(textNode);
        textNode.setText(content);
        return textNode;
    }

    public IDocumentElementNode createDocumentNode(String name, IDocumentElementNode parent) {
        return this.createGeneric(name);
    }

    protected IDocumentElementNode createGeneric(String name) {
        return new DocumentGenericNode(name);
    }
}

