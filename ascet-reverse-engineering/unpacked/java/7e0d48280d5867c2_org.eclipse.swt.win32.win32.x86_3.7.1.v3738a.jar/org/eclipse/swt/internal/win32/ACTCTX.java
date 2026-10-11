/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.OS;

public class ACTCTX {
    public int cbSize;
    public int dwFlags;
    public int lpSource;
    public short wProcessorArchitecture;
    public short wLangId;
    public int lpAssemblyDirectory;
    public int lpResourceName;
    public int lpApplicationName;
    public int hModule;
    public static final int sizeof = OS.ACTCTX_sizeof();
}

