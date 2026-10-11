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

public class ComboDrawData
extends DrawData {
    public ComboDrawData() {
        this.state = new int[2];
    }

    void draw(Theme theme, GC gc, Rectangle bounds) {
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            int hTheme = OS.OpenThemeData(0, EDIT);
            RECT rect = new RECT();
            rect.left = bounds.x;
            rect.right = bounds.x + bounds.width;
            rect.top = bounds.y;
            rect.bottom = bounds.y + bounds.height;
            int[] part = this.getPartId(0);
            OS.DrawThemeBackground(hTheme, gc.handle, part[0], part[1], rect, null);
            RECT contentRect = new RECT();
            OS.GetThemeBackgroundContentRect(hTheme, gc.handle, part[0], part[1], rect, contentRect);
            Rectangle clientArea = this.clientArea;
            if (clientArea != null) {
                clientArea.x = contentRect.left;
                clientArea.y = contentRect.top;
                clientArea.width = contentRect.right - contentRect.left;
                clientArea.height = contentRect.bottom - contentRect.top;
            }
            OS.CloseThemeData(hTheme);
            hTheme = OS.OpenThemeData(0, this.getClassId());
            int width = OS.GetThemeSysSize(hTheme, 2);
            rect.left = contentRect.right - width;
            rect.top = contentRect.top;
            rect.right = contentRect.right;
            rect.bottom = contentRect.bottom;
            part = this.getPartId(1);
            OS.DrawThemeBackground(hTheme, gc.handle, part[0], part[1], rect, null);
            OS.CloseThemeData(hTheme);
            if (clientArea != null) {
                clientArea.width -= width;
            }
        }
    }

    char[] getClassId() {
        return COMBOBOX;
    }

    int[] getPartId(int part) {
        int state = this.state[part];
        int iPartId = 0;
        int iStateId = 0;
        switch (part) {
            case 0: {
                iPartId = 1;
                iStateId = 1;
                if ((state & 0x20) == 0) break;
                iStateId = 4;
                break;
            }
            case 1: {
                iPartId = 1;
                iStateId = 1;
                if ((state & 0x20) != 0) {
                    iStateId = 4;
                }
                if ((state & 0x40) != 0) {
                    iStateId = 2;
                }
                if ((state & 8) == 0) break;
                iStateId = 3;
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
        int hTheme = OS.OpenThemeData(0, EDIT);
        int[] part = this.getPartId(0);
        int iPartId = part[0];
        int iStateId = part[1];
        RECT rect = new RECT();
        rect.left = bounds.x;
        rect.right = bounds.x + bounds.width;
        rect.top = bounds.y;
        rect.bottom = bounds.y + bounds.height;
        RECT contentRect = new RECT();
        OS.GetThemeBackgroundContentRect(hTheme, 0, iPartId, iStateId, rect, contentRect);
        OS.CloseThemeData(hTheme);
        hTheme = OS.OpenThemeData(0, this.getClassId());
        int width = OS.GetThemeSysSize(hTheme, 2);
        OS.CloseThemeData(hTheme);
        Rectangle arrowRect = new Rectangle(contentRect.right - width, contentRect.top, contentRect.bottom - contentRect.top, width);
        if (arrowRect.contains(position)) {
            return 1;
        }
        return 0;
    }
}

