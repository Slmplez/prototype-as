/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 */
package org.eclipse.jface.text.rules;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.rules.RuleBasedScanner;

public class BufferedRuleBasedScanner
extends RuleBasedScanner {
    private static final int DEFAULT_BUFFER_SIZE = 500;
    private int fBufferSize = 500;
    private char[] fBuffer = new char[500];
    private int fStart;
    private int fEnd;
    private int fDocumentLength;

    protected BufferedRuleBasedScanner() {
    }

    public BufferedRuleBasedScanner(int size) {
        this.setBufferSize(size);
    }

    protected void setBufferSize(int size) {
        Assert.isTrue((size > 0 ? 1 : 0) != 0);
        this.fBufferSize = size;
        this.fBuffer = new char[size];
    }

    private void shiftBuffer(int offset) {
        this.fStart = offset;
        this.fEnd = this.fStart + this.fBufferSize;
        if (this.fEnd > this.fDocumentLength) {
            this.fEnd = this.fDocumentLength;
        }
        try {
            String content = this.fDocument.get(this.fStart, this.fEnd - this.fStart);
            content.getChars(0, this.fEnd - this.fStart, this.fBuffer, 0);
        }
        catch (BadLocationException badLocationException) {}
    }

    public void setRange(IDocument document, int offset, int length) {
        super.setRange(document, offset, length);
        this.fDocumentLength = document.getLength();
        this.shiftBuffer(offset);
    }

    public int read() {
        this.fColumn = -1;
        if (this.fOffset >= this.fRangeEnd) {
            ++this.fOffset;
            return -1;
        }
        if (this.fOffset == this.fEnd) {
            this.shiftBuffer(this.fEnd);
        } else if (this.fOffset < this.fStart || this.fEnd < this.fOffset) {
            this.shiftBuffer(this.fOffset);
        }
        return this.fBuffer[this.fOffset++ - this.fStart];
    }

    public void unread() {
        if (this.fOffset == this.fStart) {
            this.shiftBuffer(Math.max(0, this.fStart - this.fBufferSize / 2));
        }
        --this.fOffset;
        this.fColumn = -1;
    }
}

