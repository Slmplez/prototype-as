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
import org.eclipse.swt.internal.win32.SIZE;

public class ScaleDrawData
extends RangeDrawData {
    public int increment;
    public int pageIncrement;
    static final int TICS_MARGIN = 10;

    public ScaleDrawData() {
        this.state = new int[4];
    }

    void draw(Theme theme, GC gc, Rectangle bounds) {
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            int style = this.style;
            int minimum = this.minimum;
            int maximum = this.maximum;
            int selection = this.selection;
            int pageIncrement = this.pageIncrement;
            int hTheme = OS.OpenThemeData(0, this.getClassId());
            RECT rect = new RECT();
            rect.left = bounds.x;
            rect.right = rect.left + bounds.width;
            rect.top = bounds.y;
            rect.bottom = rect.top + bounds.height;
            SIZE size = new SIZE();
            if ((style & 0x200) != 0) {
                int marginX;
                OS.GetThemePartSize(hTheme, gc.handle, 2, 0, null, 1, size);
                int trackWidth = size.cx - 1;
                OS.GetThemePartSize(hTheme, gc.handle, 6, 0, null, 1, size);
                int thumbWidth = size.cx;
                int thumbHeight = size.cy;
                OS.GetThemePartSize(hTheme, gc.handle, 9, 0, rect, 1, size);
                int ticWidth = size.cx;
                int marginY = marginX = (thumbWidth - trackWidth) / 2;
                rect.left += (marginX += 10);
                rect.top += marginY;
                rect.right = rect.left + trackWidth;
                rect.bottom -= marginY;
                int trackHeight = rect.bottom - rect.top;
                OS.DrawThemeBackground(hTheme, gc.handle, 2, 0, rect, null);
                rect.top += (trackHeight - thumbHeight) * (selection - minimum) / Math.max(1, maximum - minimum);
                rect.left -= (thumbWidth - trackWidth) / 2;
                rect.right = rect.left + thumbWidth;
                rect.bottom = rect.top + thumbHeight;
                OS.DrawThemeBackground(hTheme, gc.handle, 6, 0, rect, null);
                rect.top = bounds.y + marginY + thumbHeight / 2;
                rect.bottom = rect.top + 1;
                int sel = minimum;
                while (sel <= maximum) {
                    rect.left = bounds.x + 5;
                    rect.right = rect.left + ticWidth;
                    if (sel != minimum && sel != maximum) {
                        ++rect.left;
                    }
                    rect.top = bounds.y + marginY + thumbHeight / 2;
                    rect.top += (trackHeight - thumbHeight) * (sel - minimum) / Math.max(1, maximum - minimum);
                    rect.bottom = rect.top + 1;
                    OS.DrawThemeBackground(hTheme, gc.handle, 10, 1, rect, null);
                    gc.drawLine(rect.left, rect.top, rect.right, rect.top);
                    rect.left = bounds.x + 10 + thumbWidth + 1;
                    rect.right = rect.left + ticWidth;
                    if (sel != minimum && sel != maximum) {
                        --rect.right;
                    }
                    OS.DrawThemeBackground(hTheme, gc.handle, 10, 1, rect, null);
                    gc.drawLine(rect.left, rect.top, rect.right, rect.top);
                    sel += pageIncrement;
                }
            }
            OS.CloseThemeData(hTheme);
        }
    }

    char[] getClassId() {
        return TRACKBAR;
    }

    int hit(Theme theme, Point position, Rectangle bounds) {
        return bounds.contains(position) ? 0 : -1;
    }
}

