/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;

public class COSERVERINFO {
    public int dwReserved1;
    public int pwszName;
    public int pAuthInfo;
    public int dwReserved2;
    public static final int sizeof = COM.COSERVERINFO_sizeof();
}

