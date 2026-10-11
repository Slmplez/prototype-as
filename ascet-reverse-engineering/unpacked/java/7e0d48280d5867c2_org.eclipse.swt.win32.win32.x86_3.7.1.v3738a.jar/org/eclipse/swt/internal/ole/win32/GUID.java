/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;

public final class GUID {
    public int Data1;
    public short Data2;
    public short Data3;
    public byte[] Data4 = new byte[8];
    public static final int sizeof = COM.GUID_sizeof();
    static final String zeros = "00000000";

    static String toHex(int v, int length) {
        String t = Integer.toHexString(v).toUpperCase();
        int tlen = t.length();
        if (tlen > length) {
            t = t.substring(tlen - length);
        }
        return String.valueOf(zeros.substring(0, Math.max(0, length - tlen))) + t;
    }

    public String toString() {
        return String.valueOf('{') + GUID.toHex(this.Data1, 8) + '-' + GUID.toHex(this.Data2, 4) + '-' + GUID.toHex(this.Data3, 4) + '-' + GUID.toHex(this.Data4[0], 2) + GUID.toHex(this.Data4[1], 2) + '-' + GUID.toHex(this.Data4[2], 2) + GUID.toHex(this.Data4[3], 2) + GUID.toHex(this.Data4[4], 2) + GUID.toHex(this.Data4[5], 2) + GUID.toHex(this.Data4[6], 2) + GUID.toHex(this.Data4[7], 2) + '}';
    }
}

