/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.OS;

public class WNDCLASS {
    public int style;
    public int lpfnWndProc;
    public int cbClsExtra;
    public int cbWndExtra;
    public int hInstance;
    public int hIcon;
    public int hCursor;
    public int hbrBackground;
    public int lpszMenuName;
    public int lpszClassName;
    public static final int sizeof = OS.WNDCLASS_sizeof();
}

