/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.theme;

import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.theme.DrawData;
import org.eclipse.swt.internal.theme.Theme;
import org.eclipse.swt.internal.theme.ToolBarDrawData;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.POINT;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.SIZE;

public class ToolItemDrawData
extends DrawData {
    public ToolBarDrawData parent;
    static final int INSET = 1;

    public ToolItemDrawData() {
        this.state = new int[2];
    }

    Rectangle computeTrim(Theme theme, GC gc) {
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            int hTheme = OS.OpenThemeData(0, this.getClassId());
            RECT rect = new RECT();
            rect.left = this.clientArea.x;
            rect.right = this.clientArea.x + this.clientArea.width;
            rect.top = this.clientArea.y;
            rect.bottom = this.clientArea.y + this.clientArea.height;
            RECT extent = new RECT();
            int[] part = this.getPartId(0);
            OS.GetThemeBackgroundExtent(hTheme, gc.handle, part[0], part[1], rect, extent);
            OS.CloseThemeData(hTheme);
            if ((this.style & 4) != 0) {
                SIZE size = new SIZE();
                part = this.getPartId(1);
                OS.GetThemePartSize(hTheme, 0, part[0], part[1], null, 1, size);
                extent.right = Math.max(extent.left, extent.right + size.cx);
            } else {
                --extent.left;
                --extent.top;
                ++extent.right;
                ++extent.bottom;
            }
            return new Rectangle(extent.left, extent.top, extent.right - extent.left, extent.bottom - extent.top);
        }
        return new Rectangle(0, 0, 0, 0);
    }

    void draw(Theme theme, GC gc, Rectangle bounds) {
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            int hTheme = OS.OpenThemeData(0, this.getClassId());
            RECT rect = new RECT();
            rect.left = bounds.x;
            rect.right = bounds.x + bounds.width;
            rect.top = bounds.y;
            rect.bottom = bounds.y + bounds.height;
            SIZE size = null;
            int[] dropPart = null;
            if ((this.style & 4) != 0) {
                size = new SIZE();
                dropPart = this.getPartId(1);
                OS.GetThemePartSize(hTheme, gc.handle, dropPart[0], dropPart[1], rect, 1, size);
                rect.right -= size.cx;
                if (rect.right < rect.left) {
                    rect.right = rect.left;
                }
            }
            int[] part = this.getPartId(0);
            OS.DrawThemeBackground(hTheme, gc.handle, part[0], part[1], rect, null);
            Rectangle clientArea = this.clientArea;
            if (clientArea != null) {
                RECT contentRect = new RECT();
                OS.GetThemeBackgroundContentRect(hTheme, gc.handle, part[0], part[1], rect, contentRect);
                clientArea.x = contentRect.left;
                clientArea.y = contentRect.top;
                clientArea.width = contentRect.right - contentRect.left;
                clientArea.height = contentRect.bottom - contentRect.top;
            }
            if ((this.style & 4) != 0) {
                rect.left = rect.right;
                rect.right = rect.left + size.cx;
                OS.DrawThemeBackground(hTheme, gc.handle, dropPart[0], dropPart[1], rect, null);
            }
            OS.CloseThemeData(hTheme);
        }
    }

    char[] getClassId() {
        return TOOLBAR;
    }

    int[] getPartId(int part) {
        int state = this.state[part];
        int iPartId = 0;
        int iStateId = 0;
        switch (part) {
            case 0: {
                if ((this.style & 0x38) != 0) {
                    iPartId = 1;
                } else if ((this.style & 4) != 0) {
                    iPartId = 3;
                } else if ((this.style & 2) != 0) {
                    iPartId = (this.parent.style & 0x200) != 0 ? 6 : 5;
                }
                if ((this.style & 2) != 0) break;
                if ((state & 0x40) != 0) {
                    iStateId = (this.style & 0x30) != 0 && (state & 2) != 0 ? 6 : 2;
                }
                if ((this.style & 0x30) != 0 && (state & 2) != 0) {
                    iStateId = 5;
                }
                if ((state & 8) != 0) {
                    iStateId = 3;
                }
                if ((state & 0x20) == 0) break;
                iStateId = 4;
                break;
            }
            case 1: {
                iPartId = 4;
                if ((state & 0x40) != 0) {
                    iStateId = 2;
                }
                if ((state & 8) != 0) {
                    iStateId = 3;
                }
                if ((state & 0x20) == 0) break;
                iStateId = 4;
            }
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
        try {
            RECT rect = new RECT();
            rect.left = bounds.x;
            rect.right = bounds.x + bounds.width;
            rect.top = bounds.y;
            rect.bottom = bounds.y + bounds.height;
            POINT pt = new POINT();
            pt.x = position.x;
            pt.y = position.y;
            short[] code = new short[1];
            int[] part = this.getPartId(0);
            OS.HitTestThemeBackground(hTheme, 0, part[0], part[1], 0, rect, 0, pt, code);
            if (code[0] == 0) {
                return -1;
            }
            int style = this.style;
            if ((style & 4) != 0) {
                SIZE size = new SIZE();
                part = this.getPartId(1);
                OS.GetThemePartSize(hTheme, 0, part[0], part[1], rect, 1, size);
                rect.left = Math.max(rect.left, rect.right - size.cx);
                OS.HitTestThemeBackground(hTheme, 0, part[0], part[1], 0, rect, 0, pt, code);
                if (code[0] != 0) {
                    return 1;
                }
            }
        }
        finally {
            OS.CloseThemeData(hTheme);
        }
        return 0;
    }
}

