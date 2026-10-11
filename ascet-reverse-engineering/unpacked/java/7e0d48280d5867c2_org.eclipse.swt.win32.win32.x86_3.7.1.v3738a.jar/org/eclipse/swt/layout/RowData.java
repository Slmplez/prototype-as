/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.layout;

import org.eclipse.swt.graphics.Point;

public final class RowData {
    public int width = -1;
    public int height = -1;
    public boolean exclude = false;

    public RowData() {
    }

    public RowData(int width, int height) {
        this.width = width;
        this.height = height;
    }

    public RowData(Point point) {
        this(point.x, point.y);
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
        String string = String.valueOf(this.getName()) + " {";
        if (this.width != -1) {
            string = String.valueOf(string) + "width=" + this.width + " ";
        }
        if (this.height != -1) {
            string = String.valueOf(string) + "height=" + this.height + " ";
        }
        if (this.exclude) {
            string = String.valueOf(string) + "exclude=" + this.exclude + " ";
        }
        string = string.trim();
        string = String.valueOf(string) + "}";
        return string;
    }
}

