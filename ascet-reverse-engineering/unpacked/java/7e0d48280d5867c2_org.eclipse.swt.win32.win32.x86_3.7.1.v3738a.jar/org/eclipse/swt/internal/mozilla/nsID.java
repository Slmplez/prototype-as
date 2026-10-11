/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;

public class nsID {
    public int m0;
    public short m1;
    public short m2;
    public byte[] m3 = new byte[8];
    public static final int sizeof = 16;
    static final String zeros = "00000000";

    public nsID() {
    }

    public nsID(String id) {
        this.Parse(id);
    }

    public boolean Equals(nsID other) {
        int ptr = XPCOM.nsID_new();
        XPCOM.memmove(ptr, this, 16);
        int otherPtr = XPCOM.nsID_new();
        XPCOM.memmove(otherPtr, other, 16);
        boolean result = XPCOM.nsID_Equals(ptr, otherPtr) != 0;
        XPCOM.nsID_delete(ptr);
        XPCOM.nsID_delete(otherPtr);
        return result;
    }

    /*
     * Unable to fully structure code
     */
    public void Parse(String aIDStr) {
        if (aIDStr == null) {
            throw new Error();
        }
        i = 0;
        while (i < 8) {
            digit = Character.digit(aIDStr.charAt(i), 16);
            if (digit == -1) {
                throw new Error();
            }
            this.m0 = (this.m0 << 4) + digit;
            ++i;
        }
        if (aIDStr.charAt(i++) == '-') ** GOTO lbl18
        throw new Error();
lbl-1000:
        // 1 sources

        {
            digit = Character.digit(aIDStr.charAt(i), 16);
            if (digit == -1) {
                throw new Error();
            }
            this.m1 = (short)((this.m1 << 4) + digit);
            ++i;
lbl18:
            // 2 sources

            ** while (i < 13)
        }
lbl19:
        // 1 sources

        if (aIDStr.charAt(i++) == '-') ** GOTO lbl26
        throw new Error();
lbl-1000:
        // 1 sources

        {
            digit = Character.digit(aIDStr.charAt(i), 16);
            if (digit == -1) {
                throw new Error();
            }
            this.m2 = (short)((this.m2 << 4) + digit);
            ++i;
lbl26:
            // 2 sources

            ** while (i < 18)
        }
lbl27:
        // 1 sources

        if (aIDStr.charAt(i++) == '-') ** GOTO lbl34
        throw new Error();
lbl-1000:
        // 1 sources

        {
            digit = Character.digit(aIDStr.charAt(i), 16);
            if (digit == -1) {
                throw new Error();
            }
            this.m3[0] = (byte)((this.m3[0] << 4) + digit);
            ++i;
lbl34:
            // 2 sources

            ** while (i < 21)
        }
lbl35:
        // 2 sources

        while (i < 23) {
            digit = Character.digit(aIDStr.charAt(i), 16);
            if (digit == -1) {
                throw new Error();
            }
            this.m3[1] = (byte)((this.m3[1] << 4) + digit);
            ++i;
        }
        if (aIDStr.charAt(i++) == '-') ** GOTO lbl49
        throw new Error();
lbl-1000:
        // 1 sources

        {
            digit = Character.digit(aIDStr.charAt(i), 16);
            if (digit == -1) {
                throw new Error();
            }
            this.m3[2] = (byte)((this.m3[2] << 4) + digit);
            ++i;
lbl49:
            // 2 sources

            ** while (i < 26)
        }
lbl50:
        // 2 sources

        while (i < 28) {
            digit = Character.digit(aIDStr.charAt(i), 16);
            if (digit == -1) {
                throw new Error();
            }
            this.m3[3] = (byte)((this.m3[3] << 4) + digit);
            ++i;
        }
        while (i < 30) {
            digit = Character.digit(aIDStr.charAt(i), 16);
            if (digit == -1) {
                throw new Error();
            }
            this.m3[4] = (byte)((this.m3[4] << 4) + digit);
            ++i;
        }
        while (i < 32) {
            digit = Character.digit(aIDStr.charAt(i), 16);
            if (digit == -1) {
                throw new Error();
            }
            this.m3[5] = (byte)((this.m3[5] << 4) + digit);
            ++i;
        }
        while (i < 34) {
            digit = Character.digit(aIDStr.charAt(i), 16);
            if (digit == -1) {
                throw new Error();
            }
            this.m3[6] = (byte)((this.m3[6] << 4) + digit);
            ++i;
        }
        while (i < 36) {
            digit = Character.digit(aIDStr.charAt(i), 16);
            if (digit == -1) {
                throw new Error();
            }
            this.m3[7] = (byte)((this.m3[7] << 4) + digit);
            ++i;
        }
    }

    static String toHex(int v, int length) {
        String t = Integer.toHexString(v).toUpperCase();
        int tlen = t.length();
        if (tlen > length) {
            t = t.substring(tlen - length);
        }
        return String.valueOf(zeros.substring(0, Math.max(0, length - tlen))) + t;
    }

    public String toString() {
        return String.valueOf('{') + nsID.toHex(this.m0, 8) + '-' + nsID.toHex(this.m1, 4) + '-' + nsID.toHex(this.m2, 4) + '-' + nsID.toHex(this.m3[0], 2) + nsID.toHex(this.m3[1], 2) + '-' + nsID.toHex(this.m3[2], 2) + nsID.toHex(this.m3[3], 2) + nsID.toHex(this.m3[4], 2) + nsID.toHex(this.m3[5], 2) + nsID.toHex(this.m3[6], 2) + nsID.toHex(this.m3[7], 2) + '}';
    }
}

