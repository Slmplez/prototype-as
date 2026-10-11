/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.events;

import org.eclipse.swt.events.TypedEvent;
import org.eclipse.swt.widgets.Event;

public final class MenuDetectEvent
extends TypedEvent {
    public int x;
    public int y;
    public boolean doit;
    private static final long serialVersionUID = -3061660596590828941L;

    public MenuDetectEvent(Event e) {
        super(e);
        this.x = e.x;
        this.y = e.y;
        this.doit = e.doit;
    }

    public String toString() {
        String string = super.toString();
        return String.valueOf(string.substring(0, string.length() - 1)) + " x=" + this.x + " y=" + this.y + " doit=" + this.doit + "}";
    }
}

