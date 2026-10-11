/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.NMHDR;
import org.eclipse.swt.internal.win32.OS;

public abstract class NMTTDISPINFO
extends NMHDR {
    public int lpszText;
    public int hinst;
    public int uFlags;
    public int lParam;
    public static final int sizeof = OS.IsUnicode ? OS.NMTTDISPINFOW_sizeof() : OS.NMTTDISPINFOA_sizeof();
}

