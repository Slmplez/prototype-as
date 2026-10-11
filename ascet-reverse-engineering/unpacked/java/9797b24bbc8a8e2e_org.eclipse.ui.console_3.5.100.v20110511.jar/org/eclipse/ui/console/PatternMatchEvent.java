/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.console;

import java.util.EventObject;
import org.eclipse.ui.console.TextConsole;

public class PatternMatchEvent
extends EventObject {
    private static final long serialVersionUID = 876890383326854537L;
    private int offset;
    private int length;

    public PatternMatchEvent(TextConsole console, int matchOffset, int matchLength) {
        super(console);
        this.offset = matchOffset;
        this.length = matchLength;
    }

    public int getLength() {
        return this.length;
    }

    public int getOffset() {
        return this.offset;
    }
}

