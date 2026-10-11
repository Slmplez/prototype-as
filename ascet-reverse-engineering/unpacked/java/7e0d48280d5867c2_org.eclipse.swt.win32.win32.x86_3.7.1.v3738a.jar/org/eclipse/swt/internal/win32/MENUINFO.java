/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.OS;

public class MENUINFO {
    public int cbSize;
    public int fMask;
    public int dwStyle;
    public int cyMax;
    public int hbrBack;
    public int dwContextHelpID;
    public int dwMenuData;
    public static final int sizeof = OS.MENUINFO_sizeof();
}

