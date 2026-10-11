/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.theme;

import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.theme.DrawData;
import org.eclipse.swt.internal.theme.Theme;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.SIZE;

public class ExpanderDrawData
extends DrawData {
    public ExpanderDrawData() {
        this.state = new int[1];
    }

    void draw(Theme theme, GC gc, Rectangle bounds) {
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            int hTheme = OS.OpenThemeData(0, this.getClassId());
            int iStateId = 1;
            if ((this.style & 0x400) != 0) {
                iStateId = 2;
            }
            SIZE size = new SIZE();
            OS.GetThemePartSize(hTheme, gc.handle, 2, iStateId, null, 1, size);
            RECT rect = new RECT();
            rect.left = bounds.x;
            rect.right = rect.left + size.cx;
            rect.top = bounds.y;
            rect.bottom = rect.top + size.cy;
            OS.DrawThemeBackground(hTheme, gc.handle, 2, iStateId, rect, null);
            OS.CloseThemeData(hTheme);
        }
    }

    char[] getClassId() {
        return TREEVIEW;
    }

    int[] getPartId(int part) {
        int iPartId = 2;
        int iStateId = 1;
        if ((this.style & 0x400) != 0) {
            iStateId = 2;
        }
        return new int[]{iPartId, iStateId};
    }

    int hit(Theme theme, Point position, Rectangle bounds) {
        if (OS.COMCTL32_MAJOR < 6 || !OS.IsAppThemed()) {
            return -1;
        }
        if (!bounds.contains(position)) {
            return -1;
        }
        int hTheme = OS.OpenThemeData(0, this.getClassId());
        SIZE size = new SIZE();
        int[] part = this.getPartId(0);
        OS.GetThemePartSize(hTheme, 0, part[0], part[1], null, 1, size);
        OS.CloseThemeData(hTheme);
        if (new Rectangle(bounds.x, bounds.y, size.cx, size.cy).contains(position)) {
            return 0;
        }
        return -1;
    }
}

