/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.layout;

import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Control;

public final class GridData {
    public int verticalAlignment = 2;
    public int horizontalAlignment = 1;
    public int widthHint = -1;
    public int heightHint = -1;
    public int horizontalIndent = 0;
    public int verticalIndent = 0;
    public int horizontalSpan = 1;
    public int verticalSpan = 1;
    public boolean grabExcessHorizontalSpace = false;
    public boolean grabExcessVerticalSpace = false;
    public int minimumWidth = 0;
    public int minimumHeight = 0;
    public boolean exclude = false;
    public static final int BEGINNING = 1;
    public static final int CENTER = 2;
    public static final int END = 3;
    public static final int FILL = 4;
    public static final int VERTICAL_ALIGN_BEGINNING = 2;
    public static final int VERTICAL_ALIGN_CENTER = 4;
    public static final int VERTICAL_ALIGN_END = 8;
    public static final int VERTICAL_ALIGN_FILL = 16;
    public static final int HORIZONTAL_ALIGN_BEGINNING = 32;
    public static final int HORIZONTAL_ALIGN_CENTER = 64;
    public static final int HORIZONTAL_ALIGN_END = 128;
    public static final int HORIZONTAL_ALIGN_FILL = 256;
    public static final int GRAB_HORIZONTAL = 512;
    public static final int GRAB_VERTICAL = 1024;
    public static final int FILL_VERTICAL = 1040;
    public static final int FILL_HORIZONTAL = 768;
    public static final int FILL_BOTH = 1808;
    int cacheWidth = -1;
    int cacheHeight = -1;
    int defaultWhint;
    int defaultHhint;
    int defaultWidth = -1;
    int defaultHeight = -1;
    int currentWhint;
    int currentHhint;
    int currentWidth = -1;
    int currentHeight = -1;

    public GridData() {
    }

    public GridData(int style) {
        if ((style & 2) != 0) {
            this.verticalAlignment = 1;
        }
        if ((style & 4) != 0) {
            this.verticalAlignment = 2;
        }
        if ((style & 0x10) != 0) {
            this.verticalAlignment = 4;
        }
        if ((style & 8) != 0) {
            this.verticalAlignment = 3;
        }
        if ((style & 0x20) != 0) {
            this.horizontalAlignment = 1;
        }
        if ((style & 0x40) != 0) {
            this.horizontalAlignment = 2;
        }
        if ((style & 0x100) != 0) {
            this.horizontalAlignment = 4;
        }
        if ((style & 0x80) != 0) {
            this.horizontalAlignment = 3;
        }
        this.grabExcessHorizontalSpace = (style & 0x200) != 0;
        this.grabExcessVerticalSpace = (style & 0x400) != 0;
    }

    public GridData(int horizontalAlignment, int verticalAlignment, boolean grabExcessHorizontalSpace, boolean grabExcessVerticalSpace) {
        this(horizontalAlignment, verticalAlignment, grabExcessHorizontalSpace, grabExcessVerticalSpace, 1, 1);
    }

    public GridData(int horizontalAlignment, int verticalAlignment, boolean grabExcessHorizontalSpace, boolean grabExcessVerticalSpace, int horizontalSpan, int verticalSpan) {
        this.horizontalAlignment = horizontalAlignment;
        this.verticalAlignment = verticalAlignment;
        this.grabExcessHorizontalSpace = grabExcessHorizontalSpace;
        this.grabExcessVerticalSpace = grabExcessVerticalSpace;
        this.horizontalSpan = horizontalSpan;
        this.verticalSpan = verticalSpan;
    }

    public GridData(int width, int height) {
        this.widthHint = width;
        this.heightHint = height;
    }

    void computeSize(Control control, int wHint, int hHint, boolean flushCache) {
        if (this.cacheWidth != -1 && this.cacheHeight != -1) {
            return;
        }
        if (wHint == this.widthHint && hHint == this.heightHint) {
            if (this.defaultWidth == -1 || this.defaultHeight == -1 || wHint != this.defaultWhint || hHint != this.defaultHhint) {
                Point size = control.computeSize(wHint, hHint, flushCache);
                this.defaultWhint = wHint;
                this.defaultHhint = hHint;
                this.defaultWidth = size.x;
                this.defaultHeight = size.y;
            }
            this.cacheWidth = this.defaultWidth;
            this.cacheHeight = this.defaultHeight;
            return;
        }
        if (this.currentWidth == -1 || this.currentHeight == -1 || wHint != this.currentWhint || hHint != this.currentHhint) {
            Point size = control.computeSize(wHint, hHint, flushCache);
            this.currentWhint = wHint;
            this.currentHhint = hHint;
            this.currentWidth = size.x;
            this.currentHeight = size.y;
        }
        this.cacheWidth = this.currentWidth;
        this.cacheHeight = this.currentHeight;
    }

    void flushCache() {
        this.cacheHeight = -1;
        this.cacheWidth = -1;
        this.defaultHeight = -1;
        this.defaultWidth = -1;
        this.currentHeight = -1;
        this.currentWidth = -1;
    }

    String getName() {
        String string = this.getClass().getName();
        int index = string.lastIndexOf(46);
        if (index == -1) {
            return string;
        }
        return string.substring(index + 1, string.length());
    }

    public String toString() {
        String hAlign = "";
        switch (this.horizontalAlignment) {
            case 4: {
                hAlign = "SWT.FILL";
                break;
            }
            case 1: {
                hAlign = "SWT.BEGINNING";
                break;
            }
            case 16384: {
                hAlign = "SWT.LEFT";
                break;
            }
            case 0x1000008: {
                hAlign = "SWT.END";
                break;
            }
            case 3: {
                hAlign = "GridData.END";
                break;
            }
            case 131072: {
                hAlign = "SWT.RIGHT";
                break;
            }
            case 0x1000000: {
                hAlign = "SWT.CENTER";
                break;
            }
            case 2: {
                hAlign = "GridData.CENTER";
                break;
            }
            default: {
                hAlign = "Undefined " + this.horizontalAlignment;
            }
        }
        String vAlign = "";
        switch (this.verticalAlignment) {
            case 4: {
                vAlign = "SWT.FILL";
                break;
            }
            case 1: {
                vAlign = "SWT.BEGINNING";
                break;
            }
            case 128: {
                vAlign = "SWT.TOP";
                break;
            }
            case 0x1000008: {
                vAlign = "SWT.END";
                break;
            }
            case 3: {
                vAlign = "GridData.END";
                break;
            }
            case 1024: {
                vAlign = "SWT.BOTTOM";
                break;
            }
            case 0x1000000: {
                vAlign = "SWT.CENTER";
                break;
            }
            case 2: {
                vAlign = "GridData.CENTER";
                break;
            }
            default: {
                vAlign = "Undefined " + this.verticalAlignment;
            }
        }
        String string = String.valueOf(this.getName()) + " {";
        string = String.valueOf(string) + "horizontalAlignment=" + hAlign + " ";
        if (this.horizontalIndent != 0) {
            string = String.valueOf(string) + "horizontalIndent=" + this.horizontalIndent + " ";
        }
        if (this.horizontalSpan != 1) {
            string = String.valueOf(string) + "horizontalSpan=" + this.horizontalSpan + " ";
        }
        if (this.grabExcessHorizontalSpace) {
            string = String.valueOf(string) + "grabExcessHorizontalSpace=" + this.grabExcessHorizontalSpace + " ";
        }
        if (this.widthHint != -1) {
            string = String.valueOf(string) + "widthHint=" + this.widthHint + " ";
        }
        if (this.minimumWidth != 0) {
            string = String.valueOf(string) + "minimumWidth=" + this.minimumWidth + " ";
        }
        string = String.valueOf(string) + "verticalAlignment=" + vAlign + " ";
        if (this.verticalIndent != 0) {
            string = String.valueOf(string) + "verticalIndent=" + this.verticalIndent + " ";
        }
        if (this.verticalSpan != 1) {
            string = String.valueOf(string) + "verticalSpan=" + this.verticalSpan + " ";
        }
        if (this.grabExcessVerticalSpace) {
            string = String.valueOf(string) + "grabExcessVerticalSpace=" + this.grabExcessVerticalSpace + " ";
        }
        if (this.heightHint != -1) {
            string = String.valueOf(string) + "heightHint=" + this.heightHint + " ";
        }
        if (this.minimumHeight != 0) {
            string = String.valueOf(string) + "minimumHeight=" + this.minimumHeight + " ";
        }
        if (this.exclude) {
            string = String.valueOf(string) + "exclude=" + this.exclude + " ";
        }
        string = string.trim();
        string = String.valueOf(string) + "}";
        return string;
    }
}

