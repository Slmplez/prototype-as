/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.filesystem.local;

import java.io.ByteArrayInputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import org.eclipse.core.internal.filesystem.local.LocalFileSystem;

public class Convert {
    private static String defaultEncoding = new InputStreamReader(new ByteArrayInputStream(new byte[0])).getEncoding();
    private static final boolean isWindows = "win32".equals(LocalFileSystem.getOS());
    private static final String WIN32_FILE_PREFIX = "\\\\?\\";
    private static final String WIN32_UNC_FILE_PREFIX = "\\\\?\\UNC";

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

    public static String fromPlatformBytes(byte[] source, int length) {
        if (defaultEncoding == null) {
            return new String(source, 0, length);
        }
        try {
            return new String(source, 0, length, defaultEncoding);
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            defaultEncoding = null;
            return new String(source, 0, length);
        }
    }

    public static String fromPlatformBytes(byte[] source) {
        return Convert.fromPlatformBytes(source, source.length);
    }

    public static byte[] toPlatformBytes(String target) {
        if (defaultEncoding == null) {
            return target.getBytes();
        }
        try {
            return target.getBytes(defaultEncoding);
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            defaultEncoding = null;
            return target.getBytes();
        }
    }

    public static char[] toPlatformChars(String target) {
        if (!isWindows) {
            return target.toCharArray();
        }
        if (target.startsWith("\\\\")) {
            int nameLength = target.length();
            int prefixLength = WIN32_UNC_FILE_PREFIX.length();
            char[] result = new char[prefixLength + nameLength - 1];
            WIN32_UNC_FILE_PREFIX.getChars(0, prefixLength, result, 0);
            target.getChars(1, nameLength, result, prefixLength);
            return result;
        }
        int nameLength = target.length();
        int prefixLength = WIN32_FILE_PREFIX.length();
        char[] result = new char[prefixLength + nameLength];
        WIN32_UNC_FILE_PREFIX.getChars(0, prefixLength, result, 0);
        target.getChars(0, nameLength, result, prefixLength);
        return result;
    }
}

