/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.theme;

import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.theme.DrawData;
import org.eclipse.swt.internal.theme.TabFolderDrawData;
import org.eclipse.swt.internal.theme.Theme;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;

public class TabItemDrawData
extends DrawData {
    public TabFolderDrawData parent;
    public int position;
    static final int TABITEM_INSET = 2;
    static final int TABITEM_INSET2 = 6;

    public TabItemDrawData() {
        this.state = new int[1];
    }

    Rectangle computeTrim(Theme theme, GC gc) {
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            int hTheme = OS.OpenThemeData(0, this.getClassId());
            int x = this.clientArea.x;
            int y = this.clientArea.y;
            int width = this.clientArea.width;
            int height = this.clientArea.height;
            if ((this.style & 0x4000) != 0) {
                x -= 2;
                width += 2;
            }
            RECT rect = new RECT();
            rect.left = x;
            rect.right = x + width;
            rect.top = y -= 2;
            rect.bottom = y + (height += 2);
            RECT extent = new RECT();
            int[] part = this.getPartId(0);
            OS.GetThemeBackgroundExtent(hTheme, gc.handle, part[0], part[1], rect, extent);
            extent.left -= 6;
            extent.top -= 6;
            extent.right += 6;
            OS.CloseThemeData(hTheme);
            return new Rectangle(extent.left, extent.top, extent.right - extent.left, extent.bottom - extent.top);
        }
        return new Rectangle(0, 0, 0, 0);
    }

    void draw(Theme theme, GC gc, Rectangle bounds) {
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            int state = this.state[0];
            int hTheme = OS.OpenThemeData(0, this.getClassId());
            int x = bounds.x;
            int y = bounds.y;
            int width = bounds.width;
            int height = bounds.height;
            if ((this.position & 0x4000) != 0) {
                x += 2;
                width -= 2;
            }
            y += 2;
            height -= 2;
            if ((state & 2) != 0) {
                x -= 2;
                y -= 2;
                width += 4;
                height += 4;
            }
            RECT rect = new RECT();
            rect.left = x;
            rect.right = x + width;
            rect.top = y;
            rect.bottom = y + height;
            int[] part = this.getPartId(0);
            OS.DrawThemeBackground(hTheme, gc.handle, part[0], part[1], rect, null);
            OS.CloseThemeData(hTheme);
            Rectangle clientArea = this.clientArea;
            if (clientArea != null) {
                RECT contentRect = new RECT();
                OS.GetThemeBackgroundContentRect(hTheme, gc.handle, part[0], part[1], rect, contentRect);
                clientArea.x = contentRect.left;
                clientArea.y = contentRect.top;
                clientArea.width = contentRect.right - contentRect.left;
                clientArea.height = contentRect.bottom - contentRect.top;
            }
        }
    }

    char[] getClassId() {
        return TAB;
    }

    int[] getPartId(int part) {
        int state = this.state[part];
        int iPartId = 1;
        int iStateId = 1;
        if ((this.style & 0x4000) != 0 && (this.style & 0x20000) != 0) {
            iPartId = 2;
        } else if ((this.style & 0x4000) != 0) {
            iPartId = 2;
        }
        if ((state & 0x40) != 0) {
            iStateId = 2;
        }
        if ((state & 4) != 0) {
            iStateId = 5;
        }
        if ((state & 2) != 0) {
            iStateId = 3;
        }
        if ((state & 0x20) != 0) {
            iStateId = 4;
        }
        return new int[]{iPartId, iStateId};
    }

    int hit(Theme theme, Point position, Rectangle bounds) {
        Rectangle content;
        if (!bounds.contains(position)) {
            return -1;
        }
        int style = this.style;
        int x = bounds.x;
        int y = bounds.y;
        int width = bounds.width;
        int height = bounds.height;
        if ((style & 0x4000) != 0) {
            x += 2;
            width -= 2;
        }
        if (!(content = new Rectangle(x, y += 2, width, height -= 2)).contains(position)) {
            return -1;
        }
        return 0;
    }
}

