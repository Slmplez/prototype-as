/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.custom.Bullet;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.custom.StyledTextEvent;
import org.eclipse.swt.events.TypedEvent;

public class LineStyleEvent
extends TypedEvent {
    public int lineOffset;
    public String lineText;
    public int[] ranges;
    public StyleRange[] styles;
    public int alignment;
    public int indent;
    public int wrapIndent;
    public boolean justify;
    public Bullet bullet;
    public int bulletIndex;
    public int[] tabStops;
    static final long serialVersionUID = 3906081274027192884L;

    public LineStyleEvent(StyledTextEvent e) {
        super(e);
        this.styles = e.styles;
        this.ranges = e.ranges;
        this.lineOffset = e.detail;
        this.lineText = e.text;
        this.alignment = e.alignment;
        this.justify = e.justify;
        this.indent = e.indent;
        this.wrapIndent = e.wrapIndent;
        this.bullet = e.bullet;
        this.bulletIndex = e.bulletIndex;
        this.tabStops = e.tabStops;
    }
}

