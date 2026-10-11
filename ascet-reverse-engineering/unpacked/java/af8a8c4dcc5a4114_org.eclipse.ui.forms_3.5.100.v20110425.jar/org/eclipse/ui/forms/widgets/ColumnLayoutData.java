/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.forms.widgets;

public final class ColumnLayoutData {
    public int widthHint = -1;
    public int heightHint = -1;
    public static final int LEFT = 1;
    public static final int CENTER = 2;
    public static final int RIGHT = 3;
    public static final int FILL = 4;
    public int horizontalAlignment = 4;

    public ColumnLayoutData(int wHint, int hHint) {
        this.widthHint = wHint;
        this.heightHint = hHint;
    }

    public ColumnLayoutData(int wHint) {
        this.widthHint = wHint;
    }

    public ColumnLayoutData() {
    }
}

