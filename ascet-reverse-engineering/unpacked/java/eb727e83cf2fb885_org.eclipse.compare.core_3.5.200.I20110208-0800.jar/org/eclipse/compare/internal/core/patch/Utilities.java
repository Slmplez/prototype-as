/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.compare.internal.core.patch;

import java.io.InputStreamReader;

public class Utilities {
    public static String getCharset(Object resource) {
        if (resource instanceof InputStreamReader) {
            return ((InputStreamReader)resource).getEncoding();
        }
        return null;
    }
}

