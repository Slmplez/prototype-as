/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.actions;

public final class SimpleWildcardTester {
    public static boolean testWildcard(String pattern, String str) {
        if (pattern.equals("*")) {
            return true;
        }
        if (pattern.startsWith("*")) {
            if (pattern.endsWith("*")) {
                if (pattern.length() == 2) {
                    return true;
                }
                return str.indexOf(pattern.substring(1, pattern.length() - 1)) >= 0;
            }
            return str.endsWith(pattern.substring(1));
        }
        if (pattern.endsWith("*")) {
            return str.startsWith(pattern.substring(0, pattern.length() - 1));
        }
        return str.equals(pattern);
    }

    public static boolean testWildcardIgnoreCase(String pattern, String str) {
        if (str == null) {
            return false;
        }
        pattern = pattern.toLowerCase();
        str = str.toLowerCase();
        return SimpleWildcardTester.testWildcard(pattern, str);
    }
}

