/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.LOGFONTW;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.PANOSE;

public class EXTLOGFONTW {
    public LOGFONTW elfLogFont = new LOGFONTW();
    public char[] elfFullName = new char[64];
    public char[] elfStyle = new char[32];
    public int elfVersion;
    public int elfStyleSize;
    public int elfMatch;
    public int elfReserved;
    public byte[] elfVendorId = new byte[4];
    public int elfCulture;
    public PANOSE elfPanose = new PANOSE();
    public static final int sizeof = OS.EXTLOGFONTW_sizeof();
}

