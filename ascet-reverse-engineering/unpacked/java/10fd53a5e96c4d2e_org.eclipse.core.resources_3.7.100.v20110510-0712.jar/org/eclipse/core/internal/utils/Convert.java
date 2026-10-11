/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.utils;

import java.io.UnsupportedEncodingException;

public class Convert {
    public static String fromUTF8(byte[] b) {
        String result;
        try {
            result = new String(b, "UTF8");
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            result = new String(b);
        }
        return result;
    }

    public static byte[] toUTF8(String s) {
        byte[] result;
        try {
            result = s.getBytes("UTF8");
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            result = s.getBytes();
        }
        return result;
    }

    public static byte[] longToBytes(long value) {
        byte[] bytes = new byte[8];
        int i = 0;
        while (i < bytes.length) {
            bytes[bytes.length - 1 - i] = (byte)value;
            value >>>= 8;
            ++i;
        }
        return bytes;
    }

    public static long bytesToLong(byte[] value) {
        long longValue = 0L;
        int i = 0;
        while (i < value.length) {
            longValue <<= 8;
            longValue ^= (long)(value[i] & 0xFF);
            ++i;
        }
        return longValue;
    }
}

