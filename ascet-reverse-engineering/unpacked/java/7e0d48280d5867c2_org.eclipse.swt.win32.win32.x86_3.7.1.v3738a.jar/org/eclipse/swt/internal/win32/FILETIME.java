/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.OS;

public class FILETIME {
    public int dwLowDateTime;
    public int dwHighDateTime;
    public static final int sizeof = OS.FILETIME_sizeof();
}

