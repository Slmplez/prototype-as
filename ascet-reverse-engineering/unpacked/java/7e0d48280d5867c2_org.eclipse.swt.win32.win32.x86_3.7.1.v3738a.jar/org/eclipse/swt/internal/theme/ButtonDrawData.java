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
import org.eclipse.swt.internal.win32.POINT;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.SIZE;

public class ButtonDrawData
extends DrawData {
    public ButtonDrawData() {
        this.state = new int[1];
    }

    int[] getPartId(int part) {
        int state = this.state[part];
        int style = this.style;
        int iPartId = 0;
        int iStateId = 0;
        if ((style & 8) != 0) {
            iPartId = 1;
            iStateId = 1;
            if ((state & 0x80) != 0 && (state & 0x10) != 0) {
                iStateId = 5;
            }
            if ((state & 0x40) != 0) {
                iStateId = 2;
            }
            if ((state & 8) != 0) {
                iStateId = 3;
            }
            if ((state & 0x20) != 0) {
                iStateId = 4;
            }
        }
        if ((style & 0x10) != 0) {
            iPartId = 2;
        }
        if ((style & 0x20) != 0) {
            iPartId = 3;
        }
        if ((style & 0x30) != 0) {
            if ((state & 2) != 0) {
                iStateId = 5;
                if ((state & 0x40) != 0) {
                    iStateId = 6;
                }
                if ((state & 8) != 0) {
                    iStateId = 7;
                }
                if ((state & 0x20) != 0) {
                    iStateId = 8;
                }
            } else {
                iStateId = 1;
                if ((state & 0x40) != 0) {
                    iStateId = 2;
                }
                if ((state & 8) != 0) {
                    iStateId = 3;
                }
                if ((state & 0x20) != 0) {
                    iStateId = 4;
                }
            }
        }
        return new int[]{iPartId, iStateId};
    }

    void draw(Theme theme, GC gc, Rectangle bounds) {
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            int hTheme = OS.OpenThemeData(0, this.getClassId());
            RECT rect = new RECT();
            rect.left = bounds.x;
            rect.right = bounds.x + bounds.width;
            rect.top = bounds.y;
            rect.bottom = bounds.y + bounds.height;
            int[] part = this.getPartId(0);
            if ((this.style & 0x30) != 0) {
                SIZE size = new SIZE();
                OS.GetThemePartSize(hTheme, gc.handle, part[0], part[1], rect, 2, size);
                rect.right = rect.left + size.cx;
                OS.DrawThemeBackground(hTheme, gc.handle, part[0], part[1], rect, null);
                rect.left = rect.right + 3;
                rect.right = rect.left + bounds.width - size.cx - 3;
            } else {
                OS.DrawThemeBackground(hTheme, gc.handle, part[0], part[1], rect, null);
            }
            Rectangle clientArea = this.clientArea;
            if (clientArea != null) {
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

    int hit(Theme theme, Point position, Rectangle bounds) {
        if (OS.COMCTL32_MAJOR < 6 || !OS.IsAppThemed()) {
            return -1;
        }
        if (!bounds.contains(position)) {
            return -1;
        }
        int hTheme = OS.OpenThemeData(0, this.getClassId());
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
        OS.CloseThemeData(hTheme);
        return code[0] == 0 ? -1 : 0;
    }
}

