/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Rectangle
 */
package org.eclipse.ui.presentations;

import org.eclipse.swt.graphics.Rectangle;

public final class StackDropResult {
    private Rectangle snapRectangle;
    private Object cookie;

    public StackDropResult(Rectangle snapRectangle, Object cookie) {
        this.snapRectangle = snapRectangle;
        this.cookie = cookie;
    }

    public Rectangle getSnapRectangle() {
        return this.snapRectangle;
    }

    public Object getCookie() {
        return this.cookie;
    }
}

