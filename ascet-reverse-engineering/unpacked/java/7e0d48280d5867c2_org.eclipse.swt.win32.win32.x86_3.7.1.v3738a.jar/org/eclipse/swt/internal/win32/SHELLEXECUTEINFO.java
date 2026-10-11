/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.OS;

public class SHELLEXECUTEINFO {
    public int cbSize;
    public int fMask;
    public int hwnd;
    public int lpVerb;
    public int lpFile;
    public int lpParameters;
    public int lpDirectory;
    public int nShow;
    public int hInstApp;
    public int lpIDList;
    public int lpClass;
    public int hkeyClass;
    public int dwHotKey;
    public int hIcon;
    public int hProcess;
    public static final int sizeof = OS.SHELLEXECUTEINFO_sizeof();
}

