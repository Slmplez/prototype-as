/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.OS;

public class MENUITEMINFO {
    public int cbSize;
    public int fMask;
    public int fType;
    public int fState;
    public int wID;
    public int hSubMenu;
    public int hbmpChecked;
    public int hbmpUnchecked;
    public int dwItemData;
    public int dwTypeData;
    public int cch;
    public int hbmpItem;
    public static final int sizeof = !OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(5, 0) ? OS.MENUITEMINFO_sizeof() : 44;
}

