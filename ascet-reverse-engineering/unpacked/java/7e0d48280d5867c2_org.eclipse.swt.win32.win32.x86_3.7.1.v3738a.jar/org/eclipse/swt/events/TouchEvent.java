/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.events;

import org.eclipse.swt.events.TypedEvent;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Touch;

public class TouchEvent
extends TypedEvent {
    public Touch[] touches;
    public int stateMask;
    public int x;
    public int y;
    static final long serialVersionUID = -8348741538373572182L;

    public TouchEvent(Event e) {
        super(e);
        this.touches = e.touches;
        this.stateMask = e.stateMask;
        this.x = e.x;
        this.y = e.y;
    }

    public String toString() {
        String string = super.toString();
        string = string.substring(0, string.length() - 1);
        string = String.valueOf(string) + " stateMask=" + this.stateMask + " x=" + this.x + " y=" + this.y;
        if (this.touches != null) {
            int i = 0;
            while (i < this.touches.length) {
                string = String.valueOf(string) + "\n     " + this.touches[i].toString();
                ++i;
            }
            string = String.valueOf(string) + "\n";
        }
        string = String.valueOf(string) + "}";
        return string;
    }
}

