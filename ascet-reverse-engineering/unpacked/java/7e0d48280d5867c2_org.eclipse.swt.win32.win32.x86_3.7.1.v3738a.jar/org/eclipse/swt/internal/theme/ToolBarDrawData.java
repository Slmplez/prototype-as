/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.theme;

import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.theme.DrawData;
import org.eclipse.swt.internal.theme.Theme;

public class ToolBarDrawData
extends DrawData {
    public ToolBarDrawData() {
        this.state = new int[1];
    }

    void draw(Theme theme, GC gc, Rectangle bounds) {
    }

    char[] getClassId() {
        return TOOLBAR;
    }

    int hit(Theme theme, Point position, Rectangle bounds) {
        if (!bounds.contains(position)) {
            return -1;
        }
        return 0;
    }
}

