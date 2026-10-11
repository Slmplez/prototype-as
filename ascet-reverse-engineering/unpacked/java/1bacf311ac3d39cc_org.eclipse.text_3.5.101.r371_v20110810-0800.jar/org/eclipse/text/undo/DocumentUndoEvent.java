/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.text.undo;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.IDocument;

public class DocumentUndoEvent {
    public static final int ABOUT_TO_UNDO = 1;
    public static final int ABOUT_TO_REDO = 2;
    public static final int UNDONE = 4;
    public static final int REDONE = 8;
    public static final int COMPOUND = 16;
    private IDocument fDocument;
    private int fOffset;
    private String fText;
    private String fPreservedText;
    private int fEventType;
    private Object fSource;

    DocumentUndoEvent(IDocument doc, int offset, String text, String preservedText, int eventType, Object source) {
        Assert.isNotNull((Object)doc);
        Assert.isTrue((offset >= 0 ? 1 : 0) != 0);
        this.fDocument = doc;
        this.fOffset = offset;
        this.fText = text;
        this.fPreservedText = preservedText;
        this.fEventType = eventType;
        this.fSource = source;
    }

    public IDocument getDocument() {
        return this.fDocument;
    }

    public int getOffset() {
        return this.fOffset;
    }

    public String getText() {
        return this.fText;
    }

    public String getPreservedText() {
        return this.fPreservedText;
    }

    public int getEventType() {
        return this.fEventType;
    }

    public Object getSource() {
        return this.fSource;
    }

    public boolean isCompound() {
        return (this.fEventType & 0x10) != 0;
    }
}

