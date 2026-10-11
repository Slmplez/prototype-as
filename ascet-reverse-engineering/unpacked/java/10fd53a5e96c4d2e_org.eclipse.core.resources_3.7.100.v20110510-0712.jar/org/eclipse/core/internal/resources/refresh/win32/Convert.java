/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.resources.refresh.win32;

import java.io.ByteArrayInputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;

public class Convert {
    private static String defaultEncoding = new InputStreamReader(new ByteArrayInputStream(new byte[0])).getEncoding();

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
}

