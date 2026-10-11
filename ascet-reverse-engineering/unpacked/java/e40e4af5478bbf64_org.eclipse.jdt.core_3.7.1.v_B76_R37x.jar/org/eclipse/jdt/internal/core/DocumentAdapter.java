/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.Document
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.Document;

public class DocumentAdapter
extends Document {
    private IBuffer buffer;

    public DocumentAdapter(IBuffer buffer) {
        super(buffer.getContents());
        this.buffer = buffer;
    }

    public void set(String text) {
        super.set(text);
        this.buffer.setContents(text);
    }

    public void replace(int offset, int length, String text) throws BadLocationException {
        super.replace(offset, length, text);
        this.buffer.replace(offset, length, text);
    }
}

