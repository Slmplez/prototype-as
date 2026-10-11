/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text.link;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.Position;

public class LinkedPosition
extends Position {
    private IDocument fDocument;
    private int fSequenceNumber;

    public LinkedPosition(IDocument document, int offset, int length, int sequence) {
        super(offset, length);
        Assert.isNotNull((Object)document);
        this.fDocument = document;
        this.fSequenceNumber = sequence;
    }

    public LinkedPosition(IDocument document, int offset, int length) {
        this(document, offset, length, -1);
    }

    public IDocument getDocument() {
        return this.fDocument;
    }

    public boolean equals(Object other) {
        if (other instanceof LinkedPosition) {
            LinkedPosition p = (LinkedPosition)other;
            return p.offset == this.offset && p.length == this.length && p.fDocument == this.fDocument;
        }
        return false;
    }

    public boolean overlapsWith(LinkedPosition position) {
        return position.getDocument() == this.fDocument && this.overlapsWith(position.getOffset(), position.getLength());
    }

    public boolean includes(DocumentEvent event) {
        return this.includes(event.getDocument(), event.getOffset(), event.getLength());
    }

    public boolean includes(LinkedPosition position) {
        return this.includes(position.getDocument(), position.getOffset(), position.getLength());
    }

    public boolean includes(int pOffset) {
        return this.offset <= pOffset && pOffset <= this.offset + this.length;
    }

    protected boolean includes(IDocument doc, int off, int len) {
        return doc == this.fDocument && off >= this.offset && len + off <= this.offset + this.length;
    }

    public String getContent() throws BadLocationException {
        return this.fDocument.get(this.offset, this.length);
    }

    public int getSequenceNumber() {
        return this.fSequenceNumber;
    }

    public void setSequenceNumber(int sequence) {
        this.fSequenceNumber = sequence;
    }

    public int hashCode() {
        return this.fDocument.hashCode() | super.hashCode() | this.fSequenceNumber;
    }
}

