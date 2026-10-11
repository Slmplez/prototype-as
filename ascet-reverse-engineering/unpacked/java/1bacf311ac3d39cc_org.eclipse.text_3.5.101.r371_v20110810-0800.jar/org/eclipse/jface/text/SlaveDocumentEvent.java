/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;

public class SlaveDocumentEvent
extends DocumentEvent {
    private DocumentEvent fMasterEvent;

    public SlaveDocumentEvent(IDocument doc, int offset, int length, String text, DocumentEvent masterEvent) {
        super(doc, offset, length, text);
        this.fMasterEvent = masterEvent;
    }

    public DocumentEvent getMasterEvent() {
        return this.fMasterEvent;
    }
}

