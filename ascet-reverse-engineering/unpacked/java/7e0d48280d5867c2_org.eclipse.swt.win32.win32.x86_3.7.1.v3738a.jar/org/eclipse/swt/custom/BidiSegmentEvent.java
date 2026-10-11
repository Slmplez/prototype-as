/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.custom.StyledTextEvent;
import org.eclipse.swt.events.TypedEvent;

public class BidiSegmentEvent
extends TypedEvent {
    public int lineOffset;
    public String lineText;
    public int[] segments;
    public char[] segmentsChars;
    static final long serialVersionUID = 3257846571587547957L;

    BidiSegmentEvent(StyledTextEvent e) {
        super(e);
        this.lineOffset = e.detail;
        this.lineText = e.text;
    }
}

