/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.core.helpers;

import java.util.ArrayList;

public class StringHelper {
    public static String[] EMPTY_ARRAY = new String[0];

    public static String[] getArrayFromString(String spec, char c) {
        String[] resultArr = EMPTY_ARRAY;
        if (spec != null) {
            int splitIdx = spec.indexOf(c);
            if (splitIdx <= 0) {
                if ((spec = spec.trim()).length() > 0) {
                    resultArr = new String[]{spec};
                }
            } else {
                ArrayList<String> result = new ArrayList<String>();
                while (splitIdx >= 0) {
                    String part = spec.substring(0, splitIdx).trim();
                    if (part.length() > 0) {
                        result.add(part);
                    }
                    spec = spec.substring(splitIdx + 1);
                    splitIdx = spec.indexOf(c);
                }
                if ((spec = spec.trim()).length() > 0) {
                    result.add(spec);
                }
                resultArr = result.toArray(new String[result.size()]);
            }
        }
        return resultArr;
    }
}

