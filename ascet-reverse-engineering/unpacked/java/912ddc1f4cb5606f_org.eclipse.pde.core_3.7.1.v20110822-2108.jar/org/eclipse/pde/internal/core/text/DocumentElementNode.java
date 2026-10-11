/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.text;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.TreeMap;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.IModel;
import org.eclipse.pde.internal.core.text.DocumentAttributeNode;
import org.eclipse.pde.internal.core.text.DocumentTextNode;
import org.eclipse.pde.internal.core.text.DocumentXMLNode;
import org.eclipse.pde.internal.core.text.IDocumentAttributeNode;
import org.eclipse.pde.internal.core.text.IDocumentElementNode;
import org.eclipse.pde.internal.core.text.IDocumentTextNode;
import org.eclipse.pde.internal.core.util.PDETextHelper;

public abstract class DocumentElementNode
extends DocumentXMLNode
implements IDocumentElementNode {
    private static final long serialVersionUID = 1L;
    public static final String ATTRIBUTE_VALUE_ENCODING = "UTF-8";
    public static final String ATTRIBUTE_VALUE_TRUE = "true";
    public static final String ATTRIBUTE_VALUE_FALSE = "false";
    public static final String EMPTY_VALUE = "";
    private transient IDocumentElementNode fParent = null;
    private transient boolean fIsErrorNode = false;
    private transient int fLength = -1;
    private transient int fOffset = -1;
    private transient IDocumentElementNode fPreviousSibling = null;
    private transient int fIndent = 0;
    private ArrayList fChildren = new ArrayList();
    private TreeMap fAttributes = new TreeMap();
    private String fTag = null;
    private IDocumentTextNode fTextNode = null;
    private String fNamespace = "";
    private String fNamespacePrefix = "";

    public ArrayList getChildNodesList() {
        return this.fChildren;
    }

    public TreeMap getNodeAttributesMap() {
        return this.fAttributes;
    }

    public String writeShallow(boolean terminate) {
        String namespace;
        StringBuffer buffer = new StringBuffer();
        buffer.append("<");
        String prefix = this.getNamespacePrefix();
        if (prefix != null && prefix.length() > 0) {
            buffer.append(this.getNamespacePrefix());
            buffer.append(":");
        }
        buffer.append(this.getXMLTagName());
        if (this.isRoot() && (namespace = this.getNamespace()) != null && namespace.length() > 0) {
            buffer.append(" ");
            buffer.append("xmlns");
            if (prefix != null && prefix.length() > 0) {
                buffer.append(":");
                buffer.append(this.getNamespacePrefix());
            }
            buffer.append("=");
            buffer.append("\"");
            buffer.append(namespace);
            buffer.append("\"");
        }
        buffer.append(this.writeAttributes());
        if (terminate) {
            buffer.append("/");
        }
        buffer.append(">");
        return buffer.toString();
    }

    public boolean isLeafNode() {
        return false;
    }

    public boolean canTerminateStartTag() {
        return !this.hasXMLChildren() && !this.hasXMLContent() && this.isLeafNode();
    }

    public String write(boolean indent) {
        StringBuffer buffer = new StringBuffer();
        boolean hasChildren = this.hasXMLChildren();
        boolean hasContent = this.hasXMLContent();
        boolean terminate = this.canTerminateStartTag();
        if (this.isRoot()) {
            buffer.append(this.writeXMLDecl());
        }
        if (indent) {
            buffer.append(this.getIndent());
        }
        buffer.append(this.writeShallow(terminate));
        if (hasChildren) {
            IDocumentElementNode[] children = this.getChildNodes();
            int i = 0;
            while (i < children.length) {
                children[i].setLineIndent(this.getLineIndent() + 3);
                buffer.append(String.valueOf(this.getLineDelimiter()) + children[i].write(true));
                ++i;
            }
        }
        if (hasContent) {
            buffer.append(this.writeXMLContent());
        }
        if (!terminate) {
            buffer.append(this.getTerminateIndent());
            buffer.append("</");
            String prefix = this.getNamespacePrefix();
            if (prefix != null && prefix.length() > 0) {
                buffer.append(this.getNamespacePrefix());
                buffer.append(":");
            }
            buffer.append(this.getXMLTagName());
            buffer.append(">");
        }
        return buffer.toString();
    }

    protected String writeXMLContent() {
        StringBuffer buffer = new StringBuffer();
        if (this.isDefined(this.fTextNode)) {
            buffer.append(this.getContentIndent());
            buffer.append(this.fTextNode.write());
        }
        return buffer.toString();
    }

    protected String writeAttributes() {
        StringBuffer buffer = new StringBuffer();
        IDocumentAttributeNode[] attributes = this.getNodeAttributes();
        int i = 0;
        while (i < attributes.length) {
            IDocumentAttributeNode attribute = attributes[i];
            if (this.isDefined(attribute) && !attribute.getAttributeName().startsWith("xmlns:")) {
                buffer.append(String.valueOf(this.getAttributeIndent()) + attribute.write());
            }
            ++i;
        }
        return buffer.toString();
    }

    public IDocumentElementNode[] getChildNodes() {
        return this.fChildren.toArray(new IDocumentElementNode[this.fChildren.size()]);
    }

    public int indexOf(IDocumentElementNode child) {
        return this.fChildren.indexOf(child);
    }

    public IDocumentElementNode getChildAt(int index) {
        if (index < this.fChildren.size()) {
            return (IDocumentElementNode)this.fChildren.get(index);
        }
        return null;
    }

    public IDocumentElementNode getParentNode() {
        return this.fParent;
    }

    public void setParentNode(IDocumentElementNode node) {
        this.fParent = node;
    }

    public void addChildNode(IDocumentElementNode child) {
        this.addChildNode(child, this.fChildren.size());
    }

    public void addChildNode(IDocumentElementNode child, int position) {
        this.fChildren.add(position, child);
        child.setParentNode(this);
        this.linkNodeWithSiblings(child);
    }

    public IDocumentElementNode removeChildNode(IDocumentElementNode child) {
        int index = this.fChildren.indexOf(child);
        if (index != -1) {
            this.fChildren.remove(child);
            if (index < this.fChildren.size()) {
                IDocumentElementNode prevSibling = index == 0 ? null : (IDocumentElementNode)this.fChildren.get(index - 1);
                ((IDocumentElementNode)this.fChildren.get(index)).setPreviousSibling(prevSibling);
            }
            return child;
        }
        return null;
    }

    public IDocumentElementNode removeChildNode(int index) {
        if (index < 0 || index >= this.fChildren.size()) {
            return null;
        }
        IDocumentElementNode child = (IDocumentElementNode)this.fChildren.get(index);
        this.fChildren.remove(child);
        if (index < this.fChildren.size()) {
            IDocumentElementNode previousSibling = null;
            if (index != 0) {
                previousSibling = (IDocumentElementNode)this.fChildren.get(index - 1);
            }
            IDocumentElementNode newNode = (IDocumentElementNode)this.fChildren.get(index);
            newNode.setPreviousSibling(previousSibling);
        }
        return child;
    }

    public boolean isErrorNode() {
        return this.fIsErrorNode;
    }

    public void setIsErrorNode(boolean isErrorNode) {
        this.fIsErrorNode = isErrorNode;
    }

    public void setOffset(int offset) {
        this.fOffset = offset;
    }

    public void setLength(int length) {
        this.fLength = length;
    }

    public int getOffset() {
        return this.fOffset;
    }

    public int getLength() {
        return this.fLength;
    }

    public void setXMLAttribute(IDocumentAttributeNode attribute) {
        this.fAttributes.put(attribute.getAttributeName(), attribute);
    }

    public String getXMLAttributeValue(String name) {
        IDocumentAttributeNode attribute = (IDocumentAttributeNode)this.fAttributes.get(name);
        if (attribute == null) {
            return null;
        }
        return attribute.getAttributeValue();
    }

    public void setXMLTagName(String tag) {
        this.fTag = tag;
    }

    public String getXMLTagName() {
        return this.fTag;
    }

    public IDocumentAttributeNode getDocumentAttribute(String name) {
        return (IDocumentAttributeNode)this.fAttributes.get(name);
    }

    public int getLineIndent() {
        return this.fIndent;
    }

    public void setLineIndent(int indent) {
        this.fIndent = indent;
    }

    public IDocumentAttributeNode[] getNodeAttributes() {
        ArrayList list = new ArrayList();
        Iterator iter = this.fAttributes.values().iterator();
        while (iter.hasNext()) {
            list.add(iter.next());
        }
        return list.toArray(new IDocumentAttributeNode[list.size()]);
    }

    public IDocumentElementNode getPreviousSibling() {
        return this.fPreviousSibling;
    }

    public void setPreviousSibling(IDocumentElementNode sibling) {
        this.fPreviousSibling = sibling;
    }

    public String getIndent() {
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        while (i < this.fIndent) {
            buffer.append(" ");
            ++i;
        }
        return buffer.toString();
    }

    public void swap(IDocumentElementNode child1, IDocumentElementNode child2) {
        int index1 = this.fChildren.indexOf(child1);
        int index2 = this.fChildren.indexOf(child2);
        this.fChildren.set(index1, child2);
        this.fChildren.set(index2, child1);
        child1.setPreviousSibling(index2 == 0 ? null : (IDocumentElementNode)this.fChildren.get(index2 - 1));
        child2.setPreviousSibling(index1 == 0 ? null : (IDocumentElementNode)this.fChildren.get(index1 - 1));
        if (index1 < this.fChildren.size() - 1) {
            ((IDocumentElementNode)this.fChildren.get(index1 + 1)).setPreviousSibling(child2);
        }
        if (index2 < this.fChildren.size() - 1) {
            ((IDocumentElementNode)this.fChildren.get(index2 + 1)).setPreviousSibling(child1);
        }
    }

    public void addTextNode(IDocumentTextNode textNode) {
        this.fTextNode = textNode;
    }

    public IDocumentTextNode getTextNode() {
        return this.fTextNode;
    }

    public void removeTextNode() {
        this.fTextNode = null;
    }

    public void removeDocumentAttribute(IDocumentAttributeNode attr) {
        this.fAttributes.remove(attr.getAttributeName());
    }

    public void reconnect(IDocumentElementNode parent, IModel model) {
        this.reconnectDocument();
        this.reconnectParent(parent);
        this.reconnectPreviousSibling();
        this.reconnectText();
        this.reconnectAttributes();
        this.reconnectChildren(model);
    }

    private void reconnectAttributes() {
        Iterator keys = this.fAttributes.keySet().iterator();
        while (keys.hasNext()) {
            String key = (String)keys.next();
            IDocumentAttributeNode attribute = (IDocumentAttributeNode)this.fAttributes.get(key);
            attribute.reconnect(this);
        }
    }

    private void reconnectChildren(IModel model) {
        int i = 0;
        while (i < this.fChildren.size()) {
            IDocumentElementNode child = (IDocumentElementNode)this.fChildren.get(i);
            child.reconnect(this, model);
            ++i;
        }
    }

    private void reconnectDocument() {
        this.fIndent = 0;
        this.fIsErrorNode = false;
        this.fLength = -1;
        this.fOffset = -1;
    }

    private void reconnectParent(IDocumentElementNode parent) {
        this.fParent = parent;
    }

    private void reconnectPreviousSibling() {
        this.linkNodeWithSiblings(this);
    }

    private void linkNodeWithSiblings(IDocumentElementNode targetNode) {
        IDocumentElementNode parentNode = targetNode.getParentNode();
        if (parentNode == null) {
            return;
        }
        int targetNodePosition = parentNode.indexOf(targetNode);
        int parentNodeChildCount = parentNode.getChildCount();
        if (targetNodePosition <= 0) {
            targetNode.setPreviousSibling(null);
        } else if (targetNodePosition >= 1 && parentNodeChildCount >= 2) {
            IDocumentElementNode previousNode = parentNode.getChildAt(targetNodePosition - 1);
            targetNode.setPreviousSibling(previousNode);
        }
        int secondLastNodeIndex = parentNodeChildCount - 2;
        if (targetNodePosition >= 0 && targetNodePosition <= secondLastNodeIndex && parentNodeChildCount >= 2) {
            IDocumentElementNode nextNode = parentNode.getChildAt(targetNodePosition + 1);
            nextNode.setPreviousSibling(targetNode);
        }
    }

    private void reconnectText() {
        if (this.fTextNode != null) {
            this.fTextNode.reconnect(this);
        }
    }

    public int getChildCount() {
        return this.fChildren.size();
    }

    public boolean isRoot() {
        return false;
    }

    protected String getFileEncoding() {
        return ATTRIBUTE_VALUE_ENCODING;
    }

    protected String writeXMLDecl() {
        StringBuffer buffer = new StringBuffer("<?xml version=\"1.0\" encoding=\"");
        buffer.append(this.getFileEncoding());
        buffer.append("\"");
        buffer.append("?>");
        buffer.append(this.getLineDelimiter());
        return buffer.toString();
    }

    protected String getAttributeIndent() {
        return String.valueOf(this.getLineDelimiter()) + this.getIndent() + "      ";
    }

    protected String getContentIndent() {
        return String.valueOf(this.getLineDelimiter()) + this.getIndent() + "   ";
    }

    protected String getTerminateIndent() {
        return String.valueOf(this.getLineDelimiter()) + this.getIndent();
    }

    protected String getLineDelimiter() {
        return System.getProperty("line.separator");
    }

    protected boolean isDefined(IDocumentAttributeNode attribute) {
        if (attribute == null) {
            return false;
        }
        return attribute.getAttributeValue().trim().length() > 0;
    }

    protected boolean isDefined(IDocumentTextNode node) {
        if (node == null) {
            return false;
        }
        return PDETextHelper.isDefinedAfterTrim(node.getText());
    }

    public boolean hasXMLChildren() {
        return this.getChildCount() != 0;
    }

    public boolean hasXMLContent() {
        return this.isDefined(this.fTextNode);
    }

    public int getNodeAttributesCount() {
        int count = 0;
        IDocumentAttributeNode[] attributes = this.getNodeAttributes();
        int i = 0;
        while (i < attributes.length) {
            IDocumentAttributeNode attribute = attributes[i];
            if (this.isDefined(attribute)) {
                ++count;
            }
            ++i;
        }
        return count;
    }

    public boolean hasXMLAttributes() {
        return this.getNodeAttributesCount() != 0;
    }

    public boolean setXMLAttribute(String name, String value) {
        String oldValue;
        if (name == null || name.length() == 0) {
            return false;
        }
        if (value == null) {
            value = EMPTY_VALUE;
        }
        if ((oldValue = this.getXMLAttributeValue(name)) != null && oldValue.equals(value)) {
            return false;
        }
        IDocumentAttributeNode attribute = (IDocumentAttributeNode)this.getNodeAttributesMap().get(name);
        try {
            if (attribute == null) {
                attribute = this.createDocumentAttributeNode();
                attribute.setAttributeName(name);
                attribute.setEnclosingElement(this);
                this.setXMLAttribute(attribute);
            }
            attribute.setAttributeValue(value);
        }
        catch (CoreException coreException) {
            return false;
        }
        return true;
    }

    public boolean setXMLContent(String text) {
        IDocumentTextNode node;
        if (text == null) {
            text = EMPTY_VALUE;
        }
        if ((node = this.getTextNode()) == null) {
            node = this.createDocumentTextNode();
            node.setEnclosingElement(this);
            this.addTextNode(node);
        }
        node.setText(text);
        return true;
    }

    public String getXMLContent() {
        IDocumentTextNode node = this.getTextNode();
        if (node == null) {
            return null;
        }
        return node.getText();
    }

    public String write() {
        return this.write(false);
    }

    public int getXMLType() {
        return 0;
    }

    public boolean isContentCollapsed() {
        return false;
    }

    protected IDocumentAttributeNode createDocumentAttributeNode() {
        return new DocumentAttributeNode();
    }

    protected IDocumentTextNode createDocumentTextNode() {
        return new DocumentTextNode();
    }

    public String getNamespace() {
        return this.fNamespace;
    }

    public String getNamespacePrefix() {
        return this.fNamespacePrefix;
    }

    public void setNamespace(String namespace) {
        this.fNamespace = namespace;
    }

    public void setNamespacePrefix(String prefix) {
        this.fNamespacePrefix = prefix;
    }
}

