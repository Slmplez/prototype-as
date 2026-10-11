/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.dv.util;

public final class Base64 {
    private static final int BASELENGTH = 128;
    private static final int LOOKUPLENGTH = 64;
    private static final int TWENTYFOURBITGROUP = 24;
    private static final int EIGHTBIT = 8;
    private static final int SIXTEENBIT = 16;
    private static final int SIXBIT = 6;
    private static final int FOURBYTE = 4;
    private static final int SIGN = -128;
    private static final char PAD = '=';
    private static final boolean fDebug = false;
    private static final byte[] base64Alphabet = new byte[128];
    private static final char[] lookUpBase64Alphabet = new char[64];

    protected static boolean isWhiteSpace(char c) {
        return c == ' ' || c == '\r' || c == '\n' || c == '\t';
    }

    protected static boolean isPad(char c) {
        return c == '=';
    }

    protected static boolean isData(char c) {
        return c < '\u0080' && base64Alphabet[c] != -1;
    }

    protected static boolean isBase64(char c) {
        return Base64.isWhiteSpace(c) || Base64.isPad(c) || Base64.isData(c);
    }

    public static String encode(byte[] byArray) {
        byte by;
        byte by2;
        if (byArray == null) {
            return null;
        }
        int n = byArray.length * 8;
        if (n == 0) {
            return "";
        }
        int n2 = n % 24;
        int n3 = n / 24;
        int n4 = n2 != 0 ? n3 + 1 : n3;
        char[] cArray = null;
        cArray = new char[n4 * 4];
        byte by3 = 0;
        byte by4 = 0;
        byte by5 = 0;
        byte by6 = 0;
        byte by7 = 0;
        int n5 = 0;
        int n6 = 0;
        int n7 = 0;
        while (n7 < n3) {
            by5 = byArray[n6++];
            by6 = byArray[n6++];
            by7 = byArray[n6++];
            by4 = (byte)(by6 & 0xF);
            by3 = (byte)(by5 & 3);
            by2 = (by5 & 0xFFFFFF80) == 0 ? (byte)(by5 >> 2) : (byte)(by5 >> 2 ^ 0xC0);
            by = (by6 & 0xFFFFFF80) == 0 ? (byte)(by6 >> 4) : (byte)(by6 >> 4 ^ 0xF0);
            byte by8 = (by7 & 0xFFFFFF80) == 0 ? (byte)(by7 >> 6) : (byte)(by7 >> 6 ^ 0xFC);
            cArray[n5++] = lookUpBase64Alphabet[by2];
            cArray[n5++] = lookUpBase64Alphabet[by | by3 << 4];
            cArray[n5++] = lookUpBase64Alphabet[by4 << 2 | by8];
            cArray[n5++] = lookUpBase64Alphabet[by7 & 0x3F];
            ++n7;
        }
        if (n2 == 8) {
            by5 = byArray[n6];
            by3 = (byte)(by5 & 3);
            by2 = (by5 & 0xFFFFFF80) == 0 ? (byte)(by5 >> 2) : (byte)(by5 >> 2 ^ 0xC0);
            cArray[n5++] = lookUpBase64Alphabet[by2];
            cArray[n5++] = lookUpBase64Alphabet[by3 << 4];
            cArray[n5++] = 61;
            cArray[n5++] = 61;
        } else if (n2 == 16) {
            by5 = byArray[n6];
            by6 = byArray[n6 + 1];
            by4 = (byte)(by6 & 0xF);
            by3 = (byte)(by5 & 3);
            by2 = (by5 & 0xFFFFFF80) == 0 ? (byte)(by5 >> 2) : (byte)(by5 >> 2 ^ 0xC0);
            by = (by6 & 0xFFFFFF80) == 0 ? (byte)(by6 >> 4) : (byte)(by6 >> 4 ^ 0xF0);
            cArray[n5++] = lookUpBase64Alphabet[by2];
            cArray[n5++] = lookUpBase64Alphabet[by | by3 << 4];
            cArray[n5++] = lookUpBase64Alphabet[by4 << 2];
            cArray[n5++] = 61;
        }
        return new String(cArray);
    }

    public static byte[] decode(String string) {
        if (string == null) {
            return null;
        }
        char[] cArray = string.toCharArray();
        int n = Base64.removeWhiteSpace(cArray);
        if (n % 4 != 0) {
            return null;
        }
        int n2 = n / 4;
        if (n2 == 0) {
            return new byte[0];
        }
        byte[] byArray = null;
        byte by = 0;
        byte by2 = 0;
        byte by3 = 0;
        byte by4 = 0;
        char c = '\u0000';
        char c2 = '\u0000';
        char c3 = '\u0000';
        char c4 = '\u0000';
        int n3 = 0;
        int n4 = 0;
        int n5 = 0;
        byArray = new byte[n2 * 3];
        while (n3 < n2 - 1) {
            if (!(Base64.isData(c = cArray[n5++]) && Base64.isData(c2 = cArray[n5++]) && Base64.isData(c3 = cArray[n5++]) && Base64.isData(c4 = cArray[n5++]))) {
                return null;
            }
            by = base64Alphabet[c];
            by2 = base64Alphabet[c2];
            by3 = base64Alphabet[c3];
            by4 = base64Alphabet[c4];
            byArray[n4++] = (byte)(by << 2 | by2 >> 4);
            byArray[n4++] = (byte)((by2 & 0xF) << 4 | by3 >> 2 & 0xF);
            byArray[n4++] = (byte)(by3 << 6 | by4);
            ++n3;
        }
        if (!Base64.isData(c = cArray[n5++]) || !Base64.isData(c2 = cArray[n5++])) {
            return null;
        }
        by = base64Alphabet[c];
        by2 = base64Alphabet[c2];
        c3 = cArray[n5++];
        c4 = cArray[n5++];
        if (!Base64.isData(c3) || !Base64.isData(c4)) {
            if (Base64.isPad(c3) && Base64.isPad(c4)) {
                if ((by2 & 0xF) != 0) {
                    return null;
                }
                byte[] byArray2 = new byte[n3 * 3 + 1];
                System.arraycopy(byArray, 0, byArray2, 0, n3 * 3);
                byArray2[n4] = (byte)(by << 2 | by2 >> 4);
                return byArray2;
            }
            if (!Base64.isPad(c3) && Base64.isPad(c4)) {
                by3 = base64Alphabet[c3];
                if ((by3 & 3) != 0) {
                    return null;
                }
                byte[] byArray3 = new byte[n3 * 3 + 2];
                System.arraycopy(byArray, 0, byArray3, 0, n3 * 3);
                byArray3[n4++] = (byte)(by << 2 | by2 >> 4);
                byArray3[n4] = (byte)((by2 & 0xF) << 4 | by3 >> 2 & 0xF);
                return byArray3;
            }
            return null;
        }
        by3 = base64Alphabet[c3];
        by4 = base64Alphabet[c4];
        byArray[n4++] = (byte)(by << 2 | by2 >> 4);
        byArray[n4++] = (byte)((by2 & 0xF) << 4 | by3 >> 2 & 0xF);
        byArray[n4++] = (byte)(by3 << 6 | by4);
        return byArray;
    }

    protected static int removeWhiteSpace(char[] cArray) {
        if (cArray == null) {
            return 0;
        }
        int n = 0;
        int n2 = cArray.length;
        int n3 = 0;
        while (n3 < n2) {
            if (!Base64.isWhiteSpace(cArray[n3])) {
                cArray[n++] = cArray[n3];
            }
            ++n3;
        }
        return n;
    }

    static {
        int n = 0;
        while (n < 128) {
            Base64.base64Alphabet[n] = -1;
            ++n;
        }
        int n2 = 90;
        while (n2 >= 65) {
            Base64.base64Alphabet[n2] = (byte)(n2 - 65);
            --n2;
        }
        int n3 = 122;
        while (n3 >= 97) {
            Base64.base64Alphabet[n3] = (byte)(n3 - 97 + 26);
            --n3;
        }
        int n4 = 57;
        while (n4 >= 48) {
            Base64.base64Alphabet[n4] = (byte)(n4 - 48 + 52);
            --n4;
        }
        Base64.base64Alphabet[43] = 62;
        Base64.base64Alphabet[47] = 63;
        int n5 = 0;
        while (n5 <= 25) {
            Base64.lookUpBase64Alphabet[n5] = (char)(65 + n5);
            ++n5;
        }
        int n6 = 26;
        int n7 = 0;
        while (n6 <= 51) {
            Base64.lookUpBase64Alphabet[n6] = (char)(97 + n7);
            ++n6;
            ++n7;
        }
        int n8 = 52;
        int n9 = 0;
        while (n8 <= 61) {
            Base64.lookUpBase64Alphabet[n8] = (char)(48 + n9);
            ++n8;
            ++n9;
        }
        Base64.lookUpBase64Alphabet[62] = 43;
        Base64.lookUpBase64Alphabet[63] = 47;
    }
}

