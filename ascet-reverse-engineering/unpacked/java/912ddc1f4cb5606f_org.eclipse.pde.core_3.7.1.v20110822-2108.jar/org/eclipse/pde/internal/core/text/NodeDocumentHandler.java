/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.jface.text.IDocument
 */
package org.eclipse.pde.internal.core.text;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.pde.internal.core.text.DocumentHandler;
import org.eclipse.pde.internal.core.text.IDocumentAttributeNode;
import org.eclipse.pde.internal.core.text.IDocumentElementNode;
import org.eclipse.pde.internal.core.text.IDocumentNodeFactory;
import org.eclipse.pde.internal.core.text.IDocumentTextNode;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;

public abstract class NodeDocumentHandler
extends DocumentHandler {
    private IDocumentNodeFactory fFactory;
    protected String fCollapsibleParentName;

    public NodeDocumentHandler(boolean reconciling, IDocumentNodeFactory factory) {
        super(reconciling);
        this.fFactory = factory;
    }

    protected IDocumentNodeFactory getFactory() {
        return this.fFactory;
    }

    protected abstract IDocument getDocument();

    protected IDocumentAttributeNode getDocumentAttribute(String name, String value, IDocumentElementNode parent) {
        IDocumentAttributeNode attr = parent.getDocumentAttribute(name);
        try {
            if (attr == null) {
                attr = this.fFactory.createAttribute(name, value, parent);
            } else {
                if (!name.equals(attr.getAttributeName())) {
                    attr.setAttributeName(name);
                }
                if (!value.equals(attr.getAttributeValue())) {
                    attr.setAttributeValue(value);
                }
            }
        }
        catch (CoreException coreException) {}
        return attr;
    }

    protected abstract IDocumentElementNode getRootNode();

    protected IDocumentElementNode getDocumentNode(String name, IDocumentElementNode parent) {
        int i;
        IDocumentElementNode node = null;
        if (parent == null) {
            node = this.getRootNode();
            if (node != null) {
                node.setOffset(-1);
                node.setLength(-1);
            }
        } else {
            IDocumentElementNode[] children = parent.getChildNodes();
            i = 0;
            while (i < children.length) {
                if (children[i].getOffset() < 0) {
                    if (!name.equals(children[i].getXMLTagName())) break;
                    node = children[i];
                    break;
                }
                ++i;
            }
        }
        if (node == null) {
            return this.fFactory.createDocumentNode(name, parent);
        }
        IDocumentAttributeNode[] attrs = node.getNodeAttributes();
        i = 0;
        while (i < attrs.length) {
            attrs[i].setNameOffset(-1);
            attrs[i].setNameLength(-1);
            attrs[i].setValueOffset(-1);
            attrs[i].setValueLength(-1);
            ++i;
        }
        i = 0;
        while (i < node.getChildNodes().length) {
            IDocumentElementNode child = node.getChildAt(i);
            child.setOffset(-1);
            child.setLength(-1);
            ++i;
        }
        if (this.isReconciling()) {
            node.removeTextNode();
            node.setIsErrorNode(false);
        }
        return node;
    }

    protected IDocumentTextNode getDocumentTextNode(String content, IDocumentElementNode parent) {
        IDocumentTextNode textNode = parent.getTextNode();
        if (textNode == null) {
            if (content.trim().length() > 0) {
                textNode = this.fFactory.createDocumentTextNode(content, parent);
            }
        } else {
            String newContent = String.valueOf(textNode.getText()) + content;
            textNode.setText(newContent);
        }
        return textNode;
    }

    protected void setCollapsibleParentName(String tagName) {
        this.fCollapsibleParentName = tagName;
    }

    protected String getCollapsibleParentName() {
        return this.fCollapsibleParentName;
    }

    protected void processCollapsedEndElement(String name, IDocumentElementNode parent) {
        IDocumentElementNode node = this.getDocumentNode(name, parent);
        boolean terminate = node.canTerminateStartTag();
        if (terminate) {
            return;
        }
        StringBuffer endElementString = new StringBuffer();
        endElementString.append('<');
        endElementString.append('/');
        endElementString.append(name);
        endElementString.append('>');
        this.getDocumentTextNode(endElementString.toString(), parent);
    }

    protected void processCollapsedStartElement(String name, Attributes attributes, IDocumentElementNode parent) {
        IDocumentElementNode node = this.getDocumentNode(name, parent);
        int i = 0;
        while (i < attributes.getLength()) {
            String attValue;
            String attName = attributes.getQName(i);
            IDocumentAttributeNode attribute = this.getDocumentAttribute(attName, attValue = attributes.getValue(i), node);
            if (attribute != null) {
                node.setXMLAttribute(attribute);
            }
            ++i;
        }
        boolean terminate = node.canTerminateStartTag();
        String startElementString = node.writeShallow(terminate);
        this.getDocumentTextNode(startElementString, parent);
    }

    public void startElement(String uri, String localName, String name, Attributes attributes) throws SAXException {
        IDocumentElementNode parent = this.getLastParsedDocumentNode();
        if (parent != null && parent.isContentCollapsed()) {
            this.setCollapsibleParentName(parent.getXMLTagName());
            this.processCollapsedStartElement(name, attributes, parent);
        } else {
            super.startElement(uri, localName, name, attributes);
        }
    }

    public void endElement(String uri, String localName, String name) throws SAXException {
        if (this.getCollapsibleParentName() != null && this.getCollapsibleParentName().equals(name)) {
            this.setCollapsibleParentName(null);
        }
        if (this.getCollapsibleParentName() != null) {
            IDocumentElementNode parent = this.getLastParsedDocumentNode();
            this.processCollapsedEndElement(name, parent);
        } else {
            super.endElement(uri, localName, name);
        }
    }
}

