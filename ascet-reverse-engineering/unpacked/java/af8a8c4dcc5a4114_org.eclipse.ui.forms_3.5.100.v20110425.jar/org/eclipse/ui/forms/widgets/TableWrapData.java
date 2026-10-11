/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.SWT
 *  org.eclipse.swt.graphics.Point
 */
package org.eclipse.ui.forms.widgets;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Point;

public final class TableWrapData {
    public static final int LEFT = 2;
    public static final int CENTER = 4;
    public static final int RIGHT = 8;
    public static final int TOP = 16;
    public static final int MIDDLE = 32;
    public static final int BOTTOM = 64;
    public static final int FILL = 128;
    public static final int FILL_GRAB = 256;
    public int colspan = 1;
    public int rowspan = 1;
    public int align = 2;
    public int valign = 16;
    public int indent = 0;
    public int maxWidth = -1;
    public int maxHeight = -1;
    public int heightHint = -1;
    public boolean grabHorizontal;
    public boolean grabVertical;
    int childIndex;
    boolean isItemData = true;
    int compWidth;
    Point compSize;

    public TableWrapData() {
    }

    public TableWrapData(int align) {
        this(align, 16, 1, 1);
    }

    public TableWrapData(int align, int valign) {
        this(align, valign, 1, 1);
    }

    public TableWrapData(int align, int valign, int rowspan, int colspan) {
        if (align != 2 && align != 4 && align != 8 && align != 128 && align != 256) {
            SWT.error((int)5, null, (String)" \"align\"");
        }
        if (valign != 16 && valign != 32 && valign != 64 && valign != 128 && valign != 256) {
            SWT.error((int)5, null, (String)" \"valign\"");
        }
        if (rowspan < 1) {
            SWT.error((int)5, null, (String)" \"rowspan\"");
        }
        if (colspan < 1) {
            SWT.error((int)5, null, (String)" \"colspan\"");
        }
        if (align == 256) {
            this.align = 128;
            this.grabHorizontal = true;
        } else {
            this.align = align;
        }
        if (valign == 256) {
            this.valign = 128;
            this.grabVertical = true;
        } else {
            this.valign = valign;
        }
        this.rowspan = rowspan;
        this.colspan = colspan;
    }
}

