/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.security.storage;

public class Base64 {
    private static final char[] encodeTable = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
    private static final byte BASE64_PADDING = 126;
    private static final byte BASE64_INVALID = 127;
    private static final byte[] decodeTable = new byte[256];

    static {
        int i = 0;
        while (i < 256) {
            Base64.decodeTable[i] = 127;
            ++i;
        }
        i = 0;
        while (i < 64) {
            Base64.decodeTable[Base64.encodeTable[i]] = (byte)i;
            ++i;
        }
        Base64.decodeTable[61] = 126;
    }

    private static byte decode(char c) {
        if (c >= '\u0100') {
            throw new IllegalArgumentException();
        }
        return decodeTable[c];
    }

    public static byte[] decode(String str) {
        if (str == null) {
            return null;
        }
        char[] source = str.toCharArray();
        int originalSize = source.length;
        char[] tmp = new char[originalSize];
        int count = 0;
        int i = 0;
        while (i < originalSize) {
            if (Base64.decode(source[i]) != 127) {
                tmp[count++] = source[i];
            }
            ++i;
        }
        char[] chars = new char[count];
        System.arraycopy(tmp, 0, chars, 0, count);
        int size = chars.length;
        byte[] result = new byte[size];
        int pos = 0;
        int i2 = 0;
        while (i2 < size) {
            byte group1 = Base64.decode(chars[i2]);
            byte group2 = i2 + 1 < size ? Base64.decode(chars[i2 + 1]) : (byte)0;
            byte group3 = i2 + 2 < size ? Base64.decode(chars[i2 + 2]) : (byte)0;
            byte group4 = i2 + 3 < size ? Base64.decode(chars[i2 + 3]) : (byte)0;
            result[pos++] = (byte)(group1 << 2 | group2 >> 4);
            if (group3 != 126) {
                result[pos++] = (byte)((group2 & 0xF) << 4 | group3 >> 2);
            }
            if (group4 != 126) {
                result[pos++] = (byte)((group3 & 3) << 6 | group4);
            }
            i2 += 4;
        }
        byte[] output = new byte[pos];
        System.arraycopy(result, 0, output, 0, pos);
        return output;
    }

    public static String encode(byte[] bytes) {
        if (bytes == null) {
            return null;
        }
        char[] longResult = new char[bytes.length * 2 + 2];
        int pos = 0;
        int i = 0;
        while (i < bytes.length) {
            int byte1 = 0xFF & bytes[i];
            int byte2 = i + 1 < bytes.length ? 0xFF & bytes[i + 1] : 0;
            int byte3 = i + 2 < bytes.length ? 0xFF & bytes[i + 2] : 0;
            int group1 = byte1 >> 2;
            int group2 = (byte1 & 3) << 4 | byte2 >> 4;
            int group3 = (byte2 & 0xF) << 2 | byte3 >> 6;
            int group4 = byte3 & 0x3F;
            longResult[pos++] = encodeTable[group1];
            longResult[pos++] = encodeTable[group2];
            longResult[pos++] = i + 1 < bytes.length ? encodeTable[group3] : 61;
            longResult[pos++] = i + 2 < bytes.length ? encodeTable[group4] : 61;
            i += 3;
        }
        char[] result = new char[pos];
        System.arraycopy(longResult, 0, result, 0, pos);
        return new String(result);
    }
}

