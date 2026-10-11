/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

public interface ITextOperationTarget {
    public static final int UNDO = 1;
    public static final int REDO = 2;
    public static final int CUT = 3;
    public static final int COPY = 4;
    public static final int PASTE = 5;
    public static final int DELETE = 6;
    public static final int SELECT_ALL = 7;
    public static final int SHIFT_RIGHT = 8;
    public static final int SHIFT_LEFT = 9;
    public static final int PRINT = 10;
    public static final int PREFIX = 11;
    public static final int STRIP_PREFIX = 12;

    public boolean canDoOperation(int var1);

    public void doOperation(int var1);
}

