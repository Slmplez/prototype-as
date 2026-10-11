/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.security.storage;

import org.eclipse.equinox.internal.security.storage.Base64;
import org.eclipse.equinox.internal.security.storage.SlashEncode;

public final class EncodingUtils {
    public static String encodeSlashes(String nodeName) {
        return SlashEncode.encode(nodeName);
    }

    public static String decodeSlashes(String nodeName) {
        return SlashEncode.decode(nodeName);
    }

    public static String encodeBase64(byte[] bytes) {
        return Base64.encode(bytes);
    }

    public static byte[] decodeBase64(String string) {
        return Base64.decode(string);
    }
}

