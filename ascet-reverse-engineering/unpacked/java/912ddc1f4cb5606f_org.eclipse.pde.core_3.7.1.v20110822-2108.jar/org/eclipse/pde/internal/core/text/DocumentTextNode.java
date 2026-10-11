/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.text;

import java.util.HashMap;
import org.eclipse.pde.internal.core.text.DocumentXMLNode;
import org.eclipse.pde.internal.core.text.IDocumentElementNode;
import org.eclipse.pde.internal.core.text.IDocumentTextNode;
import org.eclipse.pde.internal.core.util.PDETextHelper;

public class DocumentTextNode
extends DocumentXMLNode
implements IDocumentTextNode {
    private static final long serialVersionUID = 1L;
    protected static final HashMap SUBSTITUTE_CHARS = new HashMap(5);
    private transient int fOffset = -1;
    private transient int fLength = 0;
    private transient IDocumentElementNode fEnclosingElement = null;
    private String fText;

    static {
        SUBSTITUTE_CHARS.put(new Character('&'), "&amp;");
        SUBSTITUTE_CHARS.put(new Character('<'), "&lt;");
        SUBSTITUTE_CHARS.put(new Character('>'), "&gt;");
        SUBSTITUTE_CHARS.put(new Character('\''), "&apos;");
        SUBSTITUTE_CHARS.put(new Character('\"'), "&quot;");
    }

    public void setEnclosingElement(IDocumentElementNode node) {
        this.fEnclosingElement = node;
    }

    public IDocumentElementNode getEnclosingElement() {
        return this.fEnclosingElement;
    }

    public void setText(String text) {
        this.fText = text;
    }

    public String getText() {
        return this.fText == null ? "" : this.fText;
    }

    public void setOffset(int offset) {
        this.fOffset = offset;
    }

    public int getOffset() {
        return this.fOffset;
    }

    public int getLength() {
        return this.fLength;
    }

    public void setLength(int length) {
        this.fLength = length;
    }

    public void reconnect(IDocumentElementNode parent) {
        this.fEnclosingElement = parent;
        this.fLength = -1;
        this.fOffset = -1;
    }

    public String write() {
        String content = this.getText().trim();
        return PDETextHelper.translateWriteText(content, SUBSTITUTE_CHARS);
    }

    public int getXMLType() {
        return 2;
    }
}

