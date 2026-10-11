/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.custom.StyledTextEvent;
import org.eclipse.swt.events.TypedEvent;

public class MovementEvent
extends TypedEvent {
    public int lineOffset;
    public String lineText;
    public int offset;
    public int newOffset;
    public int movement;
    static final long serialVersionUID = 3978765487853324342L;

    public MovementEvent(StyledTextEvent e) {
        super(e);
        this.lineOffset = e.detail;
        this.lineText = e.text;
        this.movement = e.count;
        this.offset = e.start;
        this.newOffset = e.end;
    }
}

