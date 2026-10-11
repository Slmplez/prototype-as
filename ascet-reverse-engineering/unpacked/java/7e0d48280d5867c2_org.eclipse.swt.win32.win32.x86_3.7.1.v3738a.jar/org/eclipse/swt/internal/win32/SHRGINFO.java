/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.OS;

public class SHRGINFO {
    public int cbSize;
    public int hwndClient;
    public int ptDown_x;
    public int ptDown_y;
    public int dwFlags;
    public static final int sizeof = OS.SHRGINFO_sizeof();
}

