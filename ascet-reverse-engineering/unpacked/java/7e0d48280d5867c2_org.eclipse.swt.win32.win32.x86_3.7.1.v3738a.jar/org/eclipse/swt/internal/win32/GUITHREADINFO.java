/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.OS;

public class GUITHREADINFO {
    public int cbSize;
    public int flags;
    public int hwndActive;
    public int hwndFocus;
    public int hwndCapture;
    public int hwndMenuOwner;
    public int hwndMoveSize;
    public int hwndCaret;
    public int left;
    public int top;
    public int right;
    public int bottom;
    public static int sizeof = OS.GUITHREADINFO_sizeof();
}

