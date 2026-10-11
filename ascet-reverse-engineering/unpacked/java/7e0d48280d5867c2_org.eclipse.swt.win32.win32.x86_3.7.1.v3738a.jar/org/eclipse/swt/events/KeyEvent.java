/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.events;

import org.eclipse.swt.events.TypedEvent;
import org.eclipse.swt.widgets.Event;

public class KeyEvent
extends TypedEvent {
    public char character;
    public int keyCode;
    public int keyLocation;
    public int stateMask;
    public boolean doit;
    static final long serialVersionUID = 3256442491011412789L;

    public KeyEvent(Event e) {
        super(e);
        this.character = e.character;
        this.keyCode = e.keyCode;
        this.keyLocation = e.keyLocation;
        this.stateMask = e.stateMask;
        this.doit = e.doit;
    }

    public String toString() {
        String string = super.toString();
        return String.valueOf(string.substring(0, string.length() - 1)) + " character='" + (this.character == '\u0000' ? "\\0" : "" + this.character) + "'" + " keyCode=" + this.keyCode + " keyLocation=" + this.keyLocation + " stateMask=" + this.stateMask + " doit=" + this.doit + "}";
    }
}

