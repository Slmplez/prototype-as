/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.OS;

public class MSG {
    public int hwnd;
    public int message;
    public int wParam;
    public int lParam;
    public int time;
    public int x;
    public int y;
    public static final int sizeof = OS.MSG_sizeof();
}

