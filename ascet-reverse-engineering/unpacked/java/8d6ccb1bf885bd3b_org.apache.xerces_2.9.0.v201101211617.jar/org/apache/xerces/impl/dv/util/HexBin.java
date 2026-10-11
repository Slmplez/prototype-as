/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.dv.util;

public final class HexBin {
    private static final int BASELENGTH = 128;
    private static final int LOOKUPLENGTH = 16;
    private static final byte[] hexNumberTable = new byte[128];
    private static final char[] lookUpHexAlphabet = new char[16];

    public static String encode(byte[] byArray) {
        if (byArray == null) {
            return null;
        }
        int n = byArray.length;
        int n2 = n * 2;
        char[] cArray = new char[n2];
        int n3 = 0;
        while (n3 < n) {
            int n4 = byArray[n3];
            if (n4 < 0) {
                n4 += 256;
            }
            cArray[n3 * 2] = lookUpHexAlphabet[n4 >> 4];
            cArray[n3 * 2 + 1] = lookUpHexAlphabet[n4 & 0xF];
            ++n3;
        }
        return new String(cArray);
    }

    public static byte[] decode(String string) {
        if (string == null) {
            return null;
        }
        int n = string.length();
        if (n % 2 != 0) {
            return null;
        }
        char[] cArray = string.toCharArray();
        int n2 = n / 2;
        byte[] byArray = new byte[n2];
        int n3 = 0;
        while (n3 < n2) {
            int n4;
            int n5;
            char c = cArray[n3 * 2];
            int n6 = n5 = c < '\u0080' ? hexNumberTable[c] : -1;
            if (n5 == -1) {
                return null;
            }
            c = cArray[n3 * 2 + 1];
            int n7 = n4 = c < '\u0080' ? hexNumberTable[c] : -1;
            if (n4 == -1) {
                return null;
            }
            byArray[n3] = (byte)(n5 << 4 | n4);
            ++n3;
        }
        return byArray;
    }

    static {
        int n = 0;
        while (n < 128) {
            HexBin.hexNumberTable[n] = -1;
            ++n;
        }
        int n2 = 57;
        while (n2 >= 48) {
            HexBin.hexNumberTable[n2] = (byte)(n2 - 48);
            --n2;
        }
        int n3 = 70;
        while (n3 >= 65) {
            HexBin.hexNumberTable[n3] = (byte)(n3 - 65 + 10);
            --n3;
        }
        int n4 = 102;
        while (n4 >= 97) {
            HexBin.hexNumberTable[n4] = (byte)(n4 - 97 + 10);
            --n4;
        }
        int n5 = 0;
        while (n5 < 10) {
            HexBin.lookUpHexAlphabet[n5] = (char)(48 + n5);
            ++n5;
        }
        int n6 = 10;
        while (n6 <= 15) {
            HexBin.lookUpHexAlphabet[n6] = (char)(65 + n6 - 10);
            ++n6;
        }
    }
}

