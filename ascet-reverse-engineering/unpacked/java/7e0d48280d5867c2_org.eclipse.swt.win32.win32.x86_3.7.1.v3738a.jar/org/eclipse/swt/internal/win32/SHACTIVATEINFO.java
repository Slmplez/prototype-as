/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.OS;

public class SHACTIVATEINFO {
    public int cbSize;
    public int hwndLastFocus;
    public int fSipUp;
    public int fSipOnDeactivation;
    public int fActive;
    public int fReserved;
    public static final int sizeof = OS.SHACTIVATEINFO_sizeof();
}

