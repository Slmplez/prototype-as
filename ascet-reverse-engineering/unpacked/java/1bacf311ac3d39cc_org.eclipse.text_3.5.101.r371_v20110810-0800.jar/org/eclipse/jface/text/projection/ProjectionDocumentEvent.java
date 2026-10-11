/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.projection;

import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.SlaveDocumentEvent;

public class ProjectionDocumentEvent
extends SlaveDocumentEvent {
    public static final Object PROJECTION_CHANGE = new Object();
    public static final Object CONTENT_CHANGE = new Object();
    private Object fChangeType;
    private int fMasterOffset = -1;
    private int fMasterLength = -1;

    public ProjectionDocumentEvent(IDocument doc, int offset, int length, String text, DocumentEvent masterEvent) {
        super(doc, offset, length, text, masterEvent);
        this.fChangeType = CONTENT_CHANGE;
    }

    public ProjectionDocumentEvent(IDocument doc, int offset, int length, String text, int masterOffset, int masterLength) {
        super(doc, offset, length, text, null);
        this.fChangeType = PROJECTION_CHANGE;
        this.fMasterOffset = masterOffset;
        this.fMasterLength = masterLength;
    }

    public ProjectionDocumentEvent(IDocument doc, int offset, int length, String text, int masterOffset, int masterLength, DocumentEvent masterEvent) {
        super(doc, offset, length, text, masterEvent);
        this.fChangeType = PROJECTION_CHANGE;
        this.fMasterOffset = masterOffset;
        this.fMasterLength = masterLength;
    }

    public Object getChangeType() {
        return this.fChangeType;
    }

    public int getMasterOffset() {
        return this.fMasterOffset;
    }

    public int getMasterLength() {
        return this.fMasterLength;
    }
}

