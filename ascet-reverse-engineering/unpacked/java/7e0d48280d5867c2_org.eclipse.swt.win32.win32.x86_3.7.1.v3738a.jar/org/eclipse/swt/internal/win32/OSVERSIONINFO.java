/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.OS;

public abstract class OSVERSIONINFO {
    public int dwOSVersionInfoSize;
    public int dwMajorVersion;
    public int dwMinorVersion;
    public int dwBuildNumber;
    public int dwPlatformId;
    public static int sizeof = OS.IsUnicode ? OS.OSVERSIONINFOW_sizeof() : OS.OSVERSIONINFOA_sizeof();
}

