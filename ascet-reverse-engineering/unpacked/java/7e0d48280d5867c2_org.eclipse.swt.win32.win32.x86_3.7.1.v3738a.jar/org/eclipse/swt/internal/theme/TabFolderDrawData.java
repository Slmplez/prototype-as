/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.theme;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.theme.DrawData;
import org.eclipse.swt.internal.theme.Theme;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;

public class TabFolderDrawData
extends DrawData {
    public int tabsWidth;
    public int tabsHeight;
    public Rectangle tabsArea;
    public int selectedX;
    public int selectedWidth;
    public int spacing;

    public TabFolderDrawData() {
        this.state = new int[1];
        if (SWT.getPlatform().equals("gtk")) {
            this.spacing = -2;
        }
    }

    void draw(Theme theme, GC gc, Rectangle bounds) {
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            int hTheme = OS.OpenThemeData(0, this.getClassId());
            RECT rect = new RECT();
            rect.left = bounds.x;
            rect.right = bounds.x + bounds.width;
            rect.top = bounds.y;
            if ((this.style & 0x400) != 0) {
                rect.bottom = bounds.y + bounds.height - this.tabsHeight;
            } else {
                rect.top += this.tabsHeight;
                rect.bottom = bounds.y + bounds.height;
            }
            int[] part = this.getPartId(0);
            OS.DrawThemeBackground(hTheme, gc.handle, part[0], part[1], rect, null);
            OS.CloseThemeData(hTheme);
            if (this.tabsArea != null) {
                this.tabsArea.x = bounds.x;
                this.tabsArea.y = bounds.y;
                this.tabsArea.width = bounds.width;
                this.tabsArea.height = this.tabsHeight;
                if ((this.style & 0x400) != 0) {
                    this.tabsArea.y += bounds.height - this.tabsHeight;
                }
            }
        }
    }

    char[] getClassId() {
        return TAB;
    }

    int[] getPartId(int part) {
        int state = this.state[part];
        int iPartId = 9;
        int iStateId = 1;
        if ((state & 0x20) != 0) {
            iStateId = 4;
        } else {
            if ((state & 0x40) != 0) {
                iStateId = 2;
            }
            if ((state & 2) != 0) {
                iStateId = 3;
            }
        }
        return new int[]{iPartId, iStateId};
    }

    int hit(Theme theme, Point position, Rectangle bounds) {
        if (!bounds.contains(position)) {
            return -1;
        }
        return 0;
    }
}

