/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.SHFILEINFO;

public class SHFILEINFOA
extends SHFILEINFO {
    public byte[] szDisplayName = new byte[260];
    public byte[] szTypeName = new byte[80];
    public static int sizeof = OS.SHFILEINFOA_sizeof();
}

