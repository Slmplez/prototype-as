/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.theme;

import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.theme.Theme;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;

public class DrawData {
    public int style;
    public int[] state = new int[1];
    public Rectangle clientArea;
    public static final int SELECTED = 2;
    public static final int FOCUSED = 4;
    public static final int PRESSED = 8;
    public static final int ACTIVE = 16;
    public static final int DISABLED = 32;
    public static final int HOT = 64;
    public static final int DEFAULTED = 128;
    public static final int GRAYED = 256;
    public static final int DRAW_LEFT = 16;
    public static final int DRAW_TOP = 32;
    public static final int DRAW_RIGHT = 64;
    public static final int DRAW_BOTTOM = 128;
    public static final int DRAW_HCENTER = 256;
    public static final int DRAW_VCENTER = 512;
    public static final int WIDGET_NOWHERE = -1;
    public static final int WIDGET_WHOLE = 0;
    public static final int SCROLLBAR_UP_ARROW = 1;
    public static final int SCROLLBAR_DOWN_ARROW = 2;
    public static final int SCROLLBAR_LEFT_ARROW = 1;
    public static final int SCROLLBAR_RIGHT_ARROW = 2;
    public static final int SCROLLBAR_UP_TRACK = 3;
    public static final int SCROLLBAR_DOWN_TRACK = 4;
    public static final int SCROLLBAR_LEFT_TRACK = 3;
    public static final int SCROLLBAR_RIGHT_TRACK = 4;
    public static final int SCROLLBAR_THUMB = 5;
    public static final int SCALE_UP_TRACK = 1;
    public static final int SCALE_LEFT_TRACK = 1;
    public static final int SCALE_DOWN_TRACK = 2;
    public static final int SCALE_RIGHT_TRACK = 2;
    public static final int SCALE_THUMB = 3;
    public static final int TOOLITEM_ARROW = 1;
    public static final int COMBO_ARROW = 1;
    static final char[] EDIT;
    static final char[] COMBOBOX;
    static final char[] BUTTON;
    static final char[] PROGRESS;
    static final char[] SCROLLBAR;
    static final char[] TAB;
    static final char[] TRACKBAR;
    static final char[] TOOLBAR;
    static final char[] TREEVIEW;

    static {
        char[] cArray = new char[5];
        cArray[0] = 69;
        cArray[1] = 68;
        cArray[2] = 73;
        cArray[3] = 84;
        EDIT = cArray;
        char[] cArray2 = new char[9];
        cArray2[0] = 67;
        cArray2[1] = 79;
        cArray2[2] = 77;
        cArray2[3] = 66;
        cArray2[4] = 79;
        cArray2[5] = 66;
        cArray2[6] = 79;
        cArray2[7] = 88;
        COMBOBOX = cArray2;
        char[] cArray3 = new char[7];
        cArray3[0] = 66;
        cArray3[1] = 85;
        cArray3[2] = 84;
        cArray3[3] = 84;
        cArray3[4] = 79;
        cArray3[5] = 78;
        BUTTON = cArray3;
        char[] cArray4 = new char[9];
        cArray4[0] = 80;
        cArray4[1] = 82;
        cArray4[2] = 79;
        cArray4[3] = 71;
        cArray4[4] = 82;
        cArray4[5] = 69;
        cArray4[6] = 83;
        cArray4[7] = 83;
        PROGRESS = cArray4;
        char[] cArray5 = new char[10];
        cArray5[0] = 83;
        cArray5[1] = 67;
        cArray5[2] = 82;
        cArray5[3] = 79;
        cArray5[4] = 76;
        cArray5[5] = 76;
        cArray5[6] = 66;
        cArray5[7] = 65;
        cArray5[8] = 82;
        SCROLLBAR = cArray5;
        char[] cArray6 = new char[4];
        cArray6[0] = 84;
        cArray6[1] = 65;
        cArray6[2] = 66;
        TAB = cArray6;
        char[] cArray7 = new char[9];
        cArray7[0] = 84;
        cArray7[1] = 82;
        cArray7[2] = 65;
        cArray7[3] = 67;
        cArray7[4] = 75;
        cArray7[5] = 66;
        cArray7[6] = 65;
        cArray7[7] = 82;
        TRACKBAR = cArray7;
        char[] cArray8 = new char[8];
        cArray8[0] = 84;
        cArray8[1] = 79;
        cArray8[2] = 79;
        cArray8[3] = 76;
        cArray8[4] = 66;
        cArray8[5] = 65;
        cArray8[6] = 82;
        TOOLBAR = cArray8;
        char[] cArray9 = new char[9];
        cArray9[0] = 84;
        cArray9[1] = 82;
        cArray9[2] = 69;
        cArray9[3] = 69;
        cArray9[4] = 86;
        cArray9[5] = 73;
        cArray9[6] = 69;
        cArray9[7] = 87;
        TREEVIEW = cArray9;
    }

    Rectangle computeTrim(Theme theme, GC gc) {
        return new Rectangle(this.clientArea.x, this.clientArea.y, this.clientArea.width, this.clientArea.height);
    }

    void draw(Theme theme, GC gc, Rectangle bounds) {
    }

    void drawImage(Theme theme, Image image, GC gc, Rectangle bounds) {
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            Rectangle rect = image.getBounds();
            gc.drawImage(image, 0, 0, rect.width, rect.height, bounds.x, bounds.y, bounds.width, bounds.height);
        }
    }

    void drawText(Theme theme, String text, int flags, GC gc, Rectangle bounds) {
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            int hTheme = OS.OpenThemeData(0, this.getClassId());
            char[] chars = new char[text.length()];
            text.getChars(0, chars.length, chars, 0);
            int textFlags = 32;
            if ((flags & 0x10) != 0) {
                textFlags |= 0;
            }
            if ((flags & 0x100) != 0) {
                textFlags |= 1;
            }
            if ((flags & 0x40) != 0) {
                textFlags |= 2;
            }
            if ((flags & 0x20) != 0) {
                textFlags |= 0;
            }
            if ((flags & 0x80) != 0) {
                textFlags |= 8;
            }
            if ((flags & 0x200) != 0) {
                textFlags |= 4;
            }
            RECT rect = new RECT();
            rect.left = bounds.x;
            rect.right = bounds.x + bounds.width;
            rect.top = bounds.y;
            rect.bottom = bounds.y + bounds.height;
            int[] part = this.getPartId(0);
            int iPartId = part[0];
            int iStateId = part[1];
            OS.DrawThemeText(hTheme, gc.handle, iPartId, iStateId, chars, chars.length, textFlags, 0, rect);
            OS.CloseThemeData(hTheme);
        }
    }

    char[] getClassId() {
        return BUTTON;
    }

    int[] getPartId(int part) {
        return new int[2];
    }

    Rectangle getBounds(int part, Rectangle bounds) {
        return new Rectangle(bounds.x, bounds.y, bounds.width, bounds.height);
    }

    int hit(Theme theme, Point position, Rectangle bounds) {
        return -1;
    }

    Rectangle measureText(Theme theme, String text, int flags, GC gc, Rectangle bounds) {
        if (OS.COMCTL32_MAJOR < 6 || !OS.IsAppThemed()) {
            return new Rectangle(0, 0, 0, 0);
        }
        int hTheme = OS.OpenThemeData(0, this.getClassId());
        char[] chars = new char[text.length()];
        text.getChars(0, chars.length, chars, 0);
        int textFlags = 0;
        if ((this.style & 0x4000) != 0) {
            textFlags |= 0;
        }
        if ((this.style & 0x1000000) != 0) {
            textFlags |= 1;
        }
        if ((this.style & 0x20000) != 0) {
            textFlags |= 2;
        }
        RECT extent = new RECT();
        RECT rect = null;
        if (bounds != null) {
            rect = new RECT();
            rect.left = bounds.x;
            rect.right = bounds.x + bounds.width;
            rect.top = bounds.y;
            rect.bottom = bounds.y + bounds.height;
        }
        int[] part = this.getPartId(0);
        int iPartId = part[0];
        int iStateId = part[1];
        OS.GetThemeTextExtent(hTheme, gc.handle, iPartId, iStateId, chars, chars.length, textFlags, rect, extent);
        OS.CloseThemeData(hTheme);
        return new Rectangle(extent.left, extent.top, extent.right - extent.left, extent.bottom - extent.top);
    }
}

