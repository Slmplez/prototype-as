/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.activities;

public class PatternUtil {
    public static String quotePattern(String pattern) {
        int stopIndex = pattern.indexOf("\\E");
        if (stopIndex < 0) {
            return "\\Q" + pattern + "\\E";
        }
        String result = "\\Q";
        int position = 0;
        while ((stopIndex = pattern.indexOf("\\E", position)) >= 0) {
            result = String.valueOf(result) + pattern.substring(position, stopIndex + 2) + "\\" + "\\E" + "\\Q";
            position = stopIndex + 2;
        }
        result = String.valueOf(result) + pattern.substring(position) + "\\E";
        return result;
    }
}

