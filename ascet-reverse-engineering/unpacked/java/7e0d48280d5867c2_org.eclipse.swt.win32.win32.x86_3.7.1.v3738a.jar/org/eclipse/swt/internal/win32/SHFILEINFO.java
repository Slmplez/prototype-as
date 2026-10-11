/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.OS;

public class SHFILEINFO {
    public int hIcon;
    public int iIcon;
    public int dwAttributes;
    public static int sizeof = OS.IsUnicode ? OS.SHFILEINFOW_sizeof() : OS.SHFILEINFOA_sizeof();
}

