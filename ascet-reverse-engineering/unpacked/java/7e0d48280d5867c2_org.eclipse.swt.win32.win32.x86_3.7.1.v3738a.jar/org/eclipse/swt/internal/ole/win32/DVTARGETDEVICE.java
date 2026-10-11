/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;

public final class DVTARGETDEVICE {
    public int tdSize;
    public short tdDriverNameOffset;
    public short tdDeviceNameOffset;
    public short tdPortNameOffset;
    public short tdExtDevmodeOffset;
    public byte[] tdData = new byte[1];
    public static final int sizeof = COM.DVTARGETDEVICE_sizeof();
}

