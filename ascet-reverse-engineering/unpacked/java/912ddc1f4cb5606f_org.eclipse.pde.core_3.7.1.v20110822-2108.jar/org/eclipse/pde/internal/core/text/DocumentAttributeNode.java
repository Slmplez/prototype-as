/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.text;

import org.eclipse.pde.internal.core.text.DocumentXMLNode;
import org.eclipse.pde.internal.core.text.IDocumentAttributeNode;
import org.eclipse.pde.internal.core.text.IDocumentElementNode;
import org.eclipse.pde.internal.core.util.PDEXMLHelper;

public class DocumentAttributeNode
extends DocumentXMLNode
implements IDocumentAttributeNode {
    private static final long serialVersionUID = 1L;
    private transient IDocumentElementNode fEnclosingElement = null;
    private transient int fNameOffset = -1;
    private transient int fNameLength = -1;
    private transient int fValueOffset = -1;
    private transient int fValueLength = -1;
    private String fValue = null;
    private String fName = null;

    public String getAttributeName() {
        return this.fName;
    }

    public String getAttributeValue() {
        return this.fValue;
    }

    public IDocumentElementNode getEnclosingElement() {
        return this.fEnclosingElement;
    }

    public int getNameLength() {
        return this.fNameLength;
    }

    public int getNameOffset() {
        return this.fNameOffset;
    }

    public int getValueLength() {
        return this.fValueLength;
    }

    public int getValueOffset() {
        return this.fValueOffset;
    }

    public void setAttributeName(String name) {
        this.fName = name;
    }

    public void setAttributeValue(String value) {
        this.fValue = value;
    }

    public void setEnclosingElement(IDocumentElementNode node) {
        this.fEnclosingElement = node;
    }

    public void setNameLength(int length) {
        this.fNameLength = length;
    }

    public void setNameOffset(int offset) {
        this.fNameOffset = offset;
    }

    public void setValueLength(int length) {
        this.fValueLength = length;
    }

    public void setValueOffset(int offset) {
        this.fValueOffset = offset;
    }

    public String write() {
        return String.valueOf(this.fName) + "=\"" + PDEXMLHelper.getWritableAttributeString(this.fValue) + "\"";
    }

    public void reconnect(IDocumentElementNode parent) {
        this.fEnclosingElement = parent;
        this.fNameLength = -1;
        this.fNameOffset = -1;
        this.fValueLength = -1;
        this.fValueOffset = -1;
    }

    public int getLength() {
        int len1 = this.getValueOffset() - this.getNameOffset();
        int len2 = this.getValueLength();
        int len3 = 1;
        int length = len1 + len2 + len3;
        return length;
    }

    public int getOffset() {
        return this.getNameOffset();
    }

    public int getXMLType() {
        return 1;
    }
}

