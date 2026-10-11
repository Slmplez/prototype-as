/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.DocumentEvent
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.DocumentEvent;

public class TextEvent {
    private int fOffset;
    private int fLength;
    private String fText;
    private String fReplacedText;
    private DocumentEvent fDocumentEvent;
    private boolean fViewerRedrawState;

    protected TextEvent(int offset, int length, String text, String replacedText, DocumentEvent event, boolean viewerRedrawState) {
        this.fOffset = offset;
        this.fLength = length;
        this.fText = text;
        this.fReplacedText = replacedText;
        this.fDocumentEvent = event;
        this.fViewerRedrawState = viewerRedrawState;
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

    public String getReplacedText() {
        return this.fReplacedText;
    }

    public DocumentEvent getDocumentEvent() {
        return this.fDocumentEvent;
    }

    public boolean getViewerRedrawState() {
        return this.fViewerRedrawState;
    }
}

