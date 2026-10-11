/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.theme;

import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.theme.RangeDrawData;
import org.eclipse.swt.internal.theme.Theme;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;

public class ProgressBarDrawData
extends RangeDrawData {
    public ProgressBarDrawData() {
        this.state = new int[1];
    }

    void draw(Theme theme, GC gc, Rectangle bounds) {
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            int hTheme = OS.OpenThemeData(0, this.getClassId());
            RECT rect = new RECT();
            rect.left = bounds.x;
            rect.right = rect.left + bounds.width;
            rect.top = bounds.y;
            rect.bottom = rect.top + bounds.height;
            int[] buffer = new int[1];
            OS.GetThemeInt(hTheme, 0, 0, 2411, buffer);
            int chunkSize = buffer[0];
            OS.GetThemeInt(hTheme, 0, 0, 2412, buffer);
            int spaceSize = buffer[0];
            RECT content = new RECT();
            int[] part = this.getPartId(0);
            if ((this.style & 0x200) != 0) {
                OS.GetThemeBackgroundContentRect(hTheme, gc.handle, part[0], part[1], rect, content);
                OS.DrawThemeBackground(hTheme, gc.handle, part[0], part[1], rect, null);
                int top = content.bottom - (content.bottom - content.top) * (this.selection - this.minimum) / (this.maximum - this.minimum);
                content.top = content.bottom - chunkSize;
                while (content.top >= top) {
                    OS.DrawThemeBackground(hTheme, gc.handle, 4, 0, content, null);
                    content.bottom -= chunkSize + spaceSize;
                    content.top = content.bottom - chunkSize;
                }
                if (this.selection != 0) {
                    OS.DrawThemeBackground(hTheme, gc.handle, 4, 0, content, null);
                }
            } else {
                OS.GetThemeBackgroundContentRect(hTheme, gc.handle, part[0], part[1], rect, content);
                OS.DrawThemeBackground(hTheme, gc.handle, part[0], part[1], rect, null);
                int right = content.left + (content.right - content.left) * (this.selection - this.minimum) / (this.maximum - this.minimum);
                content.right = content.left + chunkSize;
                while (content.right <= right) {
                    OS.DrawThemeBackground(hTheme, gc.handle, 3, 0, content, null);
                    content.left += chunkSize + spaceSize;
                    content.right = content.left + chunkSize;
                }
                if (this.selection != 0) {
                    OS.DrawThemeBackground(hTheme, gc.handle, 3, 0, content, null);
                }
            }
            OS.CloseThemeData(hTheme);
        }
    }

    char[] getClassId() {
        return PROGRESS;
    }

    int[] getPartId(int part) {
        int iPartId = 0;
        int iStateId = 0;
        iPartId = (this.style & 0x200) != 0 ? 2 : 1;
        return new int[]{iPartId, iStateId};
    }

    int hit(Theme theme, Point position, Rectangle bounds) {
        return bounds.contains(position) ? 0 : -1;
    }
}

