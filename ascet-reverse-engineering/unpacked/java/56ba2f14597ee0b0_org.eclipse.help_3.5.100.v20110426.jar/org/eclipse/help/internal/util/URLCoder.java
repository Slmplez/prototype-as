/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.util;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;

public class URLCoder {
    public static String encode(String s) {
        try {
            return URLCoder.urlEncode(s.getBytes("UTF8"), true);
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            return null;
        }
    }

    public static String compactEncode(String s) {
        try {
            return URLCoder.urlEncode(s.getBytes("UTF8"), false);
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            return null;
        }
    }

    public static String decode(String s) {
        try {
            return new String(URLCoder.urlDecode(s), "UTF8");
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            return null;
        }
    }

    private static String urlEncode(byte[] data, boolean encodeAllCharacters) {
        StringBuffer buf = new StringBuffer(data.length);
        int i = 0;
        while (i < data.length) {
            byte nextByte = data[i];
            if (!encodeAllCharacters && URLCoder.isAlphaNumericOrDot(nextByte)) {
                buf.append((char)nextByte);
            } else {
                buf.append('%');
                buf.append(Character.forDigit((nextByte & 0xF0) >>> 4, 16));
                buf.append(Character.forDigit(nextByte & 0xF, 16));
            }
            ++i;
        }
        return buf.toString();
    }

    private static boolean isAlphaNumericOrDot(byte b) {
        return b >= 48 && b <= 57 || b >= 97 && b <= 122 || b >= 65 && b <= 90 || b == 46;
    }

    private static byte[] urlDecode(String encodedURL) {
        int len = encodedURL.length();
        ByteArrayOutputStream os = new ByteArrayOutputStream(len);
        int i = 0;
        while (i < len) {
            switch (encodedURL.charAt(i)) {
                case '%': {
                    if (len >= i + 3) {
                        os.write(Integer.parseInt(encodedURL.substring(i + 1, i + 3), 16));
                    }
                    i += 3;
                    break;
                }
                case '+': {
                    os.write(32);
                    ++i;
                    break;
                }
                default: {
                    os.write(encodedURL.charAt(i++));
                }
            }
        }
        return os.toByteArray();
    }
}

