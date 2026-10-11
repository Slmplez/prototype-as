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
import org.eclipse.swt.internal.win32.POINT;
import org.eclipse.swt.internal.win32.RECT;

public class ScrollBarDrawData
extends RangeDrawData {
    public int thumb;
    public int increment;
    public int pageIncrement;

    public ScrollBarDrawData() {
        this.state = new int[6];
    }

    void draw(Theme theme, GC gc, Rectangle bounds) {
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            int hTheme = OS.OpenThemeData(0, this.getClassId());
            RECT rect = new RECT();
            if ((this.style & 0x200) != 0) {
                int width = OS.GetThemeSysSize(hTheme, 2);
                rect.left = bounds.x;
                rect.right = rect.left + bounds.width;
                rect.top = bounds.y;
                rect.bottom = rect.top + width;
                int[] part = this.getPartId(1);
                OS.DrawThemeBackground(hTheme, gc.handle, part[0], part[1], rect, null);
                rect.bottom = bounds.y + bounds.height;
                rect.top = rect.bottom - width;
                part = this.getPartId(2);
                OS.DrawThemeBackground(hTheme, gc.handle, part[0], part[1], rect, null);
                int totalWidth = bounds.height - 2 * width;
                int thumbWidth = Math.max(width / 2, totalWidth * this.thumb / Math.max(1, this.maximum - this.minimum));
                int thumbPos = bounds.y + width + Math.max(0, totalWidth * this.selection / Math.max(1, this.maximum - this.minimum));
                rect.top = bounds.y + width;
                rect.bottom = thumbPos;
                part = this.getPartId(3);
                OS.DrawThemeBackground(hTheme, gc.handle, part[0], part[1], rect, null);
                rect.top = rect.bottom;
                rect.bottom = rect.top + thumbWidth;
                part = this.getPartId(5);
                OS.DrawThemeBackground(hTheme, gc.handle, part[0], part[1], rect, null);
                OS.DrawThemeBackground(hTheme, gc.handle, 9, part[1], rect, null);
                rect.top = rect.bottom;
                rect.bottom = bounds.y + bounds.height - width;
                part = this.getPartId(4);
                OS.DrawThemeBackground(hTheme, gc.handle, part[0], part[1], rect, null);
            } else {
                int height = OS.GetThemeSysSize(hTheme, 2);
                rect.top = bounds.y;
                rect.bottom = rect.top + bounds.height;
                rect.left = bounds.x;
                rect.right = rect.left + height;
                int[] part = this.getPartId(1);
                OS.DrawThemeBackground(hTheme, gc.handle, part[0], part[1], rect, null);
                rect.right = bounds.x + bounds.width;
                rect.left = rect.right - height;
                part = this.getPartId(2);
                OS.DrawThemeBackground(hTheme, gc.handle, part[0], part[1], rect, null);
                int totalWidth = bounds.width - 2 * height;
                int thumbWidth = Math.max(height / 2, totalWidth * this.thumb / (this.maximum - this.minimum));
                int thumbPos = bounds.x + height + Math.max(0, totalWidth * this.selection / Math.max(1, this.maximum - this.minimum));
                rect.left = bounds.x + height;
                rect.right = thumbPos;
                part = this.getPartId(3);
                OS.DrawThemeBackground(hTheme, gc.handle, part[0], part[1], rect, null);
                rect.left = rect.right;
                rect.right = rect.left + thumbWidth;
                part = this.getPartId(5);
                OS.DrawThemeBackground(hTheme, gc.handle, part[0], part[1], rect, null);
                OS.DrawThemeBackground(hTheme, gc.handle, 8, part[1], rect, null);
                rect.left = rect.right;
                rect.right = bounds.x + bounds.width - height;
                part = this.getPartId(4);
                OS.DrawThemeBackground(hTheme, gc.handle, part[0], part[1], rect, null);
            }
            OS.CloseThemeData(hTheme);
        }
    }

    char[] getClassId() {
        return SCROLLBAR;
    }

    int[] getPartId(int part) {
        int iPartId = 0;
        int iStateId = 0;
        int state = this.state[part];
        switch (part) {
            case 1: {
                iPartId = 1;
                if ((this.style & 0x200) != 0) {
                    iStateId = 1;
                    if ((state & 0x40) != 0) {
                        iStateId = 2;
                    }
                    if ((state & 8) != 0) {
                        iStateId = 3;
                    }
                    if ((state & 0x20) == 0) break;
                    iStateId = 4;
                    break;
                }
                iStateId = 9;
                if ((state & 0x40) != 0) {
                    iStateId = 10;
                }
                if ((state & 8) != 0) {
                    iStateId = 11;
                }
                if ((state & 0x20) == 0) break;
                iStateId = 12;
                break;
            }
            case 2: {
                iPartId = 1;
                if ((this.style & 0x200) != 0) {
                    iStateId = 5;
                    if ((state & 0x40) != 0) {
                        iStateId = 6;
                    }
                    if ((state & 8) != 0) {
                        iStateId = 7;
                    }
                    if ((state & 0x20) == 0) break;
                    iStateId = 8;
                    break;
                }
                iStateId = 13;
                if ((state & 0x40) != 0) {
                    iStateId = 14;
                }
                if ((state & 8) != 0) {
                    iStateId = 15;
                }
                if ((state & 0x20) == 0) break;
                iStateId = 16;
                break;
            }
            case 0: 
            case 5: {
                if ((this.style & 0x200) != 0) {
                    iPartId = 3;
                    break;
                }
                iPartId = 2;
                break;
            }
            case 3: {
                if ((this.style & 0x200) != 0) {
                    iPartId = 7;
                    break;
                }
                iPartId = 5;
                break;
            }
            case 4: {
                iPartId = (this.style & 0x200) != 0 ? 6 : 4;
            }
        }
        if (part != 2 && part != 1) {
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
        return new int[]{iPartId, iStateId};
    }

    Rectangle getBounds(int part, Rectangle bounds) {
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            int hTheme = OS.OpenThemeData(0, this.getClassId());
            if ((this.style & 0x200) != 0) {
                int width = OS.GetThemeSysSize(hTheme, 2);
                int totalWidth = bounds.height - 2 * width;
                int thumbWidth = Math.max(width / 2, totalWidth * this.thumb / Math.max(1, this.maximum - this.minimum));
                int thumbPos = bounds.y + width + Math.max(0, totalWidth * this.selection / Math.max(1, this.maximum - this.minimum));
                switch (part) {
                    case 2: {
                        return new Rectangle(bounds.x, bounds.y + bounds.height - width, bounds.width, width);
                    }
                    case 1: {
                        return new Rectangle(bounds.x, bounds.y, bounds.width, width);
                    }
                    case 3: {
                        return new Rectangle(bounds.x, bounds.y + width, bounds.width, thumbPos - bounds.y - width);
                    }
                    case 5: {
                        return new Rectangle(bounds.x, thumbPos, bounds.width, thumbWidth);
                    }
                    case 4: {
                        return new Rectangle(bounds.x, thumbPos + thumbWidth, bounds.width, bounds.y + bounds.height - width - thumbPos - thumbWidth);
                    }
                }
            }
            OS.CloseThemeData(hTheme);
        }
        return super.getBounds(part, bounds);
    }

    int getSelection(Point position, Rectangle bounds) {
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            int hTheme = OS.OpenThemeData(0, this.getClassId());
            if ((this.style & 0x200) != 0) {
                int width = OS.GetThemeSysSize(hTheme, 2);
                int totalWidth = bounds.height - 2 * width;
                int thumbPos = bounds.y + width + Math.max(0, totalWidth * this.selection / Math.max(1, this.maximum - this.minimum));
                int selection = ((thumbPos += position.y) - bounds.y - width) * (this.maximum - this.minimum) / totalWidth;
                return Math.max(0, Math.min(selection, this.maximum - this.thumb));
            }
            OS.CloseThemeData(hTheme);
        }
        return 0;
    }

    int hit(Theme theme, Point position, Rectangle bounds) {
        if (OS.COMCTL32_MAJOR < 6 || !OS.IsAppThemed()) {
            return -1;
        }
        int hTheme = OS.OpenThemeData(0, this.getClassId());
        int hDC = 0;
        RECT rect = new RECT();
        POINT pt = new POINT();
        pt.x = position.x;
        pt.y = position.y;
        short[] code = new short[1];
        try {
            if ((this.style & 0x200) != 0) {
                int width = OS.GetThemeSysSize(hTheme, 2);
                rect.left = bounds.x;
                rect.right = rect.left + bounds.width;
                rect.top = bounds.y;
                rect.bottom = rect.top + width;
                int[] part = this.getPartId(1);
                OS.HitTestThemeBackground(hTheme, hDC, part[0], part[1], 0, rect, 0, pt, code);
                if (code[0] != 0) {
                    return 1;
                }
                rect.bottom = bounds.y + bounds.height;
                rect.top = rect.bottom - width;
                part = this.getPartId(2);
                OS.HitTestThemeBackground(hTheme, hDC, part[0], part[1], 0, rect, 0, pt, code);
                if (code[0] != 0) {
                    return 2;
                }
                int totalWidth = bounds.height - 2 * width;
                int thumbWidth = Math.max(width / 2, totalWidth * this.thumb / Math.max(1, this.maximum - this.minimum));
                int thumbPos = bounds.y + width + Math.max(0, totalWidth * this.selection / Math.max(1, this.maximum - this.minimum));
                rect.top = bounds.y + width;
                rect.bottom = thumbPos;
                part = this.getPartId(5);
                OS.HitTestThemeBackground(hTheme, hDC, part[0], part[1], 0, rect, 0, pt, code);
                if (code[0] != 0) {
                    return 3;
                }
                rect.top = rect.bottom;
                rect.bottom = rect.top + thumbWidth;
                part = this.getPartId(3);
                OS.HitTestThemeBackground(hTheme, hDC, part[0], part[1], 0, rect, 0, pt, code);
                if (code[0] != 0) {
                    return 5;
                }
                rect.top = rect.bottom;
                rect.bottom = bounds.y + bounds.height - width;
                part = this.getPartId(4);
                OS.HitTestThemeBackground(hTheme, hDC, part[0], part[1], 0, rect, 0, pt, code);
                if (code[0] != 0) {
                    return 4;
                }
            } else {
                int height = OS.GetThemeSysSize(hTheme, 2);
                rect.top = bounds.y;
                rect.bottom = rect.top + bounds.height;
                rect.left = bounds.x;
                rect.right = rect.left + height;
                int[] part = this.getPartId(1);
                OS.HitTestThemeBackground(hTheme, hDC, part[0], part[1], 0, rect, 0, pt, code);
                if (code[0] != 0) {
                    return 1;
                }
                rect.right = bounds.x + bounds.width;
                rect.left = rect.right - height;
                part = this.getPartId(2);
                OS.HitTestThemeBackground(hTheme, hDC, part[0], part[1], 0, rect, 0, pt, code);
                if (code[0] != 0) {
                    return 2;
                }
                int totalWidth = bounds.width - 2 * height;
                int thumbWidth = Math.max(height / 2, totalWidth * this.thumb / (this.maximum - this.minimum));
                int thumbPos = bounds.x + height + Math.max(0, totalWidth * this.selection / Math.max(1, this.maximum - this.minimum));
                rect.left = bounds.x + height;
                rect.right = thumbPos;
                part = this.getPartId(3);
                OS.HitTestThemeBackground(hTheme, hDC, part[0], part[1], 0, rect, 0, pt, code);
                if (code[0] != 0) {
                    return 3;
                }
                rect.left = rect.right;
                rect.right = rect.left + thumbWidth;
                part = this.getPartId(5);
                OS.HitTestThemeBackground(hTheme, hDC, part[0], part[1], 0, rect, 0, pt, code);
                if (code[0] != 0) {
                    return 5;
                }
                rect.left = rect.right;
                rect.right = bounds.x + bounds.width - height;
                part = this.getPartId(4);
                OS.HitTestThemeBackground(hTheme, hDC, part[0], part[1], 0, rect, 0, pt, code);
                if (code[0] != 0) {
                    return 4;
                }
            }
        }
        finally {
            OS.CloseThemeData(hTheme);
        }
        return -1;
    }
}

