/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.custom.Bullet;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.custom.StyledTextEvent;
import org.eclipse.swt.events.TypedEvent;
import org.eclipse.swt.graphics.GC;

public class PaintObjectEvent
extends TypedEvent {
    public GC gc;
    public int x;
    public int y;
    public int ascent;
    public int descent;
    public StyleRange style;
    public Bullet bullet;
    public int bulletIndex;
    static final long serialVersionUID = 3906081274027192855L;

    public PaintObjectEvent(StyledTextEvent e) {
        super(e);
        this.gc = e.gc;
        this.x = e.x;
        this.y = e.y;
        this.ascent = e.ascent;
        this.descent = e.descent;
        this.style = e.style;
        this.bullet = e.bullet;
        this.bulletIndex = e.bulletIndex;
    }
}

