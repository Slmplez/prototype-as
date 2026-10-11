/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.events;

import org.eclipse.swt.events.TypedEvent;
import org.eclipse.swt.widgets.Event;

public class MouseEvent
extends TypedEvent {
    public int button;
    public int stateMask;
    public int x;
    public int y;
    public int count;
    static final long serialVersionUID = 3257288037011566898L;

    public MouseEvent(Event e) {
        super(e);
        this.x = e.x;
        this.y = e.y;
        this.button = e.button;
        this.stateMask = e.stateMask;
        this.count = e.count;
    }

    public String toString() {
        String string = super.toString();
        return String.valueOf(string.substring(0, string.length() - 1)) + " button=" + this.button + " stateMask=" + this.stateMask + " x=" + this.x + " y=" + this.y + " count=" + this.count + "}";
    }
}

