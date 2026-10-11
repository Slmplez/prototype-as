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

public class GroupDrawData
extends DrawData {
    public int headerWidth;
    public int headerHeight;
    public Rectangle headerArea;
    static final int GROUP_HEADER_X = 9;
    static final int GROUP_HEADER_PAD = 2;

    public GroupDrawData() {
        this.state = new int[1];
    }

    void draw(Theme theme, GC gc, Rectangle bounds) {
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            Rectangle clientArea;
            int hTheme = OS.OpenThemeData(0, this.getClassId());
            RECT rect = new RECT();
            rect.left = bounds.x;
            rect.right = bounds.x + bounds.width;
            rect.top = bounds.y + this.headerHeight / 2;
            rect.bottom = bounds.y + bounds.height;
            int headerX = bounds.x + 9;
            int headerY = bounds.y;
            int savedDC = OS.SaveDC(gc.handle);
            OS.ExcludeClipRect(gc.handle, headerX - 2, headerY, headerX + this.headerWidth + 2, headerY + this.headerHeight);
            int[] part = this.getPartId(0);
            OS.DrawThemeBackground(hTheme, gc.handle, part[0], part[1], rect, null);
            OS.RestoreDC(gc.handle, savedDC);
            Rectangle headerArea = this.headerArea;
            if (headerArea != null) {
                headerArea.x = headerX;
                headerArea.y = headerY;
                headerArea.width = this.headerWidth;
                headerArea.height = this.headerHeight;
            }
            if ((clientArea = this.clientArea) != null) {
                RECT contentRect = new RECT();
                OS.GetThemeBackgroundContentRect(hTheme, gc.handle, part[0], part[1], rect, contentRect);
                clientArea.x = contentRect.left;
                clientArea.y = contentRect.top;
                clientArea.width = contentRect.right - contentRect.left;
                clientArea.height = contentRect.bottom - contentRect.top;
            }
            OS.CloseThemeData(hTheme);
        }
    }

    int[] getPartId(int part) {
        int state = this.state[part];
        int iPartId = 4;
        int iStateId = 1;
        if ((state & 0x20) != 0) {
            iStateId = 2;
        }
        return new int[]{iPartId, iStateId};
    }

    int hit(Theme theme, Point position, Rectangle bounds) {
        return bounds.contains(position) ? 0 : -1;
    }
}

