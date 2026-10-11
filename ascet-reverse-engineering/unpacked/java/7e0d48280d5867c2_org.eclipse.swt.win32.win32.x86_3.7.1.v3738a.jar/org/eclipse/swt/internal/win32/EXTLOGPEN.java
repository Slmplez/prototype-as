/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.OS;

public class EXTLOGPEN {
    public int elpPenStyle;
    public int elpWidth;
    public int elpBrushStyle;
    public int elpColor;
    public int elpHatch;
    public int elpNumEntries;
    public int[] elpStyleEntry = new int[1];
    public static final int sizeof = OS.EXTLOGPEN_sizeof();
}

