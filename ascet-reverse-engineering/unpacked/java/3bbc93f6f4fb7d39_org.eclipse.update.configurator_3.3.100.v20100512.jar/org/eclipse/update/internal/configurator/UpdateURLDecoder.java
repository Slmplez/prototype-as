/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.update.internal.configurator;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

public class UpdateURLDecoder {
    static boolean init = false;
    static boolean useEnc = true;

    public static String decode(String s, String enc) throws UnsupportedEncodingException {
        if (!init) {
            init = true;
            try {
                return URLDecoder.decode(s, enc);
            }
            catch (NoSuchMethodError noSuchMethodError) {
                useEnc = false;
            }
        }
        if (useEnc) {
            return URLDecoder.decode(s, enc);
        }
        return URLDecoder.decode(s);
    }
}

