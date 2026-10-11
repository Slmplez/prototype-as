/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.OS;

public class SHMENUBARINFO {
    public int cbSize;
    public int hwndParent;
    public int dwFlags;
    public int nToolBarId;
    public int hInstRes;
    public int nBmpId;
    public int cBmpImages;
    public int hwndMB;
    public static final int sizeof = OS.IsSP ? 36 : OS.SHMENUBARINFO_sizeof();
}

