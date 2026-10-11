/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentExtension4;

public class DocumentEvent {
    private static final boolean ASSERT_TEXT_NOT_NULL = Boolean.getBoolean("org.eclipse.text/debug/DocumentEvent/assertTextNotNull");
    public IDocument fDocument;
    public int fOffset;
    public int fLength;
    public String fText = "";
    public long fModificationStamp;

    public DocumentEvent(IDocument doc, int offset, int length, String text) {
        Assert.isNotNull((Object)doc);
        Assert.isTrue((offset >= 0 ? 1 : 0) != 0);
        Assert.isTrue((length >= 0 ? 1 : 0) != 0);
        if (ASSERT_TEXT_NOT_NULL) {
            Assert.isNotNull((Object)text);
        }
        this.fDocument = doc;
        this.fOffset = offset;
        this.fLength = length;
        this.fText = text;
        this.fModificationStamp = this.fDocument instanceof IDocumentExtension4 ? ((IDocumentExtension4)((Object)this.fDocument)).getModificationStamp() : -1L;
    }

    public DocumentEvent() {
    }

    public IDocument getDocument() {
        return this.fDocument;
    }

    public int getOffset() {
        return this.fOffset;
    }

    public int getLength() {
        return this.fLength;
    }

    public String getText() {
        return this.fText;
    }

    public long getModificationStamp() {
        return this.fModificationStamp;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("offset: ");
        buffer.append(this.fOffset);
        buffer.append(", length: ");
        buffer.append(this.fLength);
        buffer.append(", timestamp: ");
        buffer.append(this.fModificationStamp);
        buffer.append("\ntext:>");
        buffer.append(this.fText);
        buffer.append("<\n");
        return buffer.toString();
    }
}

