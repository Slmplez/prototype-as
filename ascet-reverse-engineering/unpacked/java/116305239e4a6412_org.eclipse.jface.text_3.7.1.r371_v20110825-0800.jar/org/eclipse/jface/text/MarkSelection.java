/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IMarkSelection;

public class MarkSelection
implements IMarkSelection {
    private final IDocument fDocument;
    private final int fOffset;
    private final int fLength;

    public MarkSelection(IDocument document, int offset, int length) {
        this.fDocument = document;
        this.fOffset = offset;
        this.fLength = length;
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

    public boolean isEmpty() {
        return this.fLength == 0;
    }
}

