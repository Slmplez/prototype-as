/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.custom.StyledTextContent;
import org.eclipse.swt.custom.StyledTextEvent;
import org.eclipse.swt.events.TypedEvent;

public class TextChangingEvent
extends TypedEvent {
    public int start;
    public String newText;
    public int replaceCharCount;
    public int newCharCount;
    public int replaceLineCount;
    public int newLineCount;
    static final long serialVersionUID = 3257290210114352439L;

    public TextChangingEvent(StyledTextContent source) {
        super(source);
    }

    TextChangingEvent(StyledTextContent source, StyledTextEvent e) {
        super(source);
        this.start = e.start;
        this.replaceCharCount = e.replaceCharCount;
        this.newCharCount = e.newCharCount;
        this.replaceLineCount = e.replaceLineCount;
        this.newLineCount = e.newLineCount;
        this.newText = e.text;
    }
}

