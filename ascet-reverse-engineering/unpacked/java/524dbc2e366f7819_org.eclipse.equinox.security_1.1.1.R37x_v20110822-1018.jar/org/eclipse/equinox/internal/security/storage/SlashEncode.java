/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.security.storage;

public final class SlashEncode {
    private static final char SLASH = '/';
    private static final char BACK_SLASH = '\\';
    private static final String ENCODED_SLASH = "\\2f";
    private static final String ENCODED_BACK_SLASH = "\\5c";

    public static String decode(String str) {
        if (str == null) {
            return null;
        }
        int size = str.length();
        if (size == 0) {
            return str;
        }
        StringBuffer processed = new StringBuffer(size);
        int processedPos = 0;
        int i = 0;
        while (i < size) {
            char c = str.charAt(i);
            if (c == '\\' && i + 2 < size) {
                String encoded = str.substring(i, i + 3);
                char decoded = '\u0000';
                if (ENCODED_SLASH.equals(encoded)) {
                    decoded = '/';
                } else if (ENCODED_BACK_SLASH.equals(encoded)) {
                    decoded = '\\';
                }
                if (decoded != '\u0000') {
                    if (i > processedPos) {
                        processed.append(str.substring(processedPos, i));
                    }
                    processed.append(decoded);
                    processedPos = i + 3;
                    i += 2;
                }
            }
            ++i;
        }
        if (processedPos == 0) {
            return str;
        }
        if (processedPos < size) {
            processed.append(str.substring(processedPos));
        }
        return new String(processed);
    }

    public static String encode(String str) {
        if (str == null) {
            return null;
        }
        int size = str.length();
        if (size == 0) {
            return str;
        }
        StringBuffer processed = new StringBuffer(size);
        int processedPos = 0;
        int i = 0;
        while (i < size) {
            char c = str.charAt(i);
            if (c == '/' || c == '\\') {
                if (i > processedPos) {
                    processed.append(str.substring(processedPos, i));
                }
                if (c == '/') {
                    processed.append(ENCODED_SLASH);
                } else if (c == '\\') {
                    processed.append(ENCODED_BACK_SLASH);
                }
                processedPos = i + 1;
            }
            ++i;
        }
        if (processedPos == 0) {
            return str;
        }
        if (processedPos < size) {
            processed.append(str.substring(processedPos));
        }
        return new String(processed);
    }
}

