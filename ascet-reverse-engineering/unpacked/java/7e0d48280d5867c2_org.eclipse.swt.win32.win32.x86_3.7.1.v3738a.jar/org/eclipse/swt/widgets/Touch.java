/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.widgets.TouchSource;

public final class Touch {
    public long id;
    public TouchSource source;
    public int state;
    public boolean primary;
    public int x;
    public int y;

    Touch(long identity, TouchSource source, int state, boolean primary, int x, int y) {
        this.id = identity;
        this.source = source;
        this.state = state;
        this.primary = primary;
        this.x = x;
        this.y = y;
    }

    public String toString() {
        return "Touch {id=" + this.id + " source=" + this.source + " state=" + this.state + " primary=" + this.primary + " x=" + this.x + " y=" + this.y + "}";
    }
}

