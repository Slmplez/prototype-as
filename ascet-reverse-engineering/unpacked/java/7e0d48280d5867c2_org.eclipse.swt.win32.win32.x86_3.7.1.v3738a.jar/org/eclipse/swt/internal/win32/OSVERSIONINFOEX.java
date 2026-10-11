/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.OSVERSIONINFO;

public abstract class OSVERSIONINFOEX
extends OSVERSIONINFO {
    public short wServicePackMajor;
    public short wServicePackMinor;
    public short wSuiteMask;
    public byte wProductType;
    public byte wReserved;
    public static int sizeof = OS.IsUnicode ? OS.OSVERSIONINFOEXW_sizeof() : OS.OSVERSIONINFOEXA_sizeof();
}

