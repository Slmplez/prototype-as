/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl.locale;

public final class AsciiUtil {
    public static boolean caseIgnoreMatch(String s1, String s2) {
        if (s1 == s2) {
            return true;
        }
        int len = s1.length();
        if (len != s2.length()) {
            return false;
        }
        int i = 0;
        while (i < len) {
            char c2;
            char c1 = s1.charAt(i);
            if (c1 != (c2 = s2.charAt(i)) && AsciiUtil.toLower(c1) != AsciiUtil.toLower(c2)) break;
            ++i;
        }
        return i == len;
    }

    public static int caseIgnoreCompare(String s1, String s2) {
        if (s1 == s2) {
            return 0;
        }
        return AsciiUtil.toLowerString(s1).compareTo(AsciiUtil.toLowerString(s2));
    }

    public static char toUpper(char c) {
        if (c >= 'a' && c <= 'z') {
            c = (char)(c - 32);
        }
        return c;
    }

    public static char toLower(char c) {
        if (c >= 'A' && c <= 'Z') {
            c = (char)(c + 32);
        }
        return c;
    }

    public static String toLowerString(String s) {
        int idx = 0;
        while (idx < s.length()) {
            char c = s.charAt(idx);
            if (c >= 'A' && c <= 'Z') break;
            ++idx;
        }
        if (idx == s.length()) {
            return s;
        }
        StringBuilder buf = new StringBuilder(s.substring(0, idx));
        while (idx < s.length()) {
            buf.append(AsciiUtil.toLower(s.charAt(idx)));
            ++idx;
        }
        return buf.toString();
    }

    public static String toUpperString(String s) {
        int idx = 0;
        while (idx < s.length()) {
            char c = s.charAt(idx);
            if (c >= 'a' && c <= 'z') break;
            ++idx;
        }
        if (idx == s.length()) {
            return s;
        }
        StringBuilder buf = new StringBuilder(s.substring(0, idx));
        while (idx < s.length()) {
            buf.append(AsciiUtil.toUpper(s.charAt(idx)));
            ++idx;
        }
        return buf.toString();
    }

    public static String toTitleString(String s) {
        if (s.length() == 0) {
            return s;
        }
        int idx = 0;
        char c = s.charAt(idx);
        if (c < 'a' || c > 'z') {
            idx = 1;
            while (idx < s.length()) {
                if (c >= 'A' && c <= 'Z') break;
                ++idx;
            }
        }
        if (idx == s.length()) {
            return s;
        }
        StringBuilder buf = new StringBuilder(s.substring(0, idx));
        if (idx == 0) {
            buf.append(AsciiUtil.toUpper(s.charAt(idx)));
            ++idx;
        }
        while (idx < s.length()) {
            buf.append(AsciiUtil.toLower(s.charAt(idx)));
            ++idx;
        }
        return buf.toString();
    }

    public static boolean isAlpha(char c) {
        return c >= 'A' && c <= 'Z' || c >= 'a' && c <= 'z';
    }

    public static boolean isAlphaString(String s) {
        boolean b = true;
        int i = 0;
        while (i < s.length()) {
            if (!AsciiUtil.isAlpha(s.charAt(i))) {
                b = false;
                break;
            }
            ++i;
        }
        return b;
    }

    public static boolean isNumeric(char c) {
        return c >= '0' && c <= '9';
    }

    public static boolean isNumericString(String s) {
        boolean b = true;
        int i = 0;
        while (i < s.length()) {
            if (!AsciiUtil.isNumeric(s.charAt(i))) {
                b = false;
                break;
            }
            ++i;
        }
        return b;
    }

    public static boolean isAlphaNumeric(char c) {
        return AsciiUtil.isAlpha(c) || AsciiUtil.isNumeric(c);
    }

    public static boolean isAlphaNumericString(String s) {
        boolean b = true;
        int i = 0;
        while (i < s.length()) {
            if (!AsciiUtil.isAlphaNumeric(s.charAt(i))) {
                b = false;
                break;
            }
            ++i;
        }
        return b;
    }

    public static class CaseInsensitiveKey {
        private String _key;
        private int _hash;

        public CaseInsensitiveKey(String key) {
            this._key = key;
            this._hash = AsciiUtil.toLowerString(key).hashCode();
        }

        public boolean equals(Object o) {
            if (o instanceof CaseInsensitiveKey) {
                return AsciiUtil.caseIgnoreMatch(this._key, ((CaseInsensitiveKey)o)._key);
            }
            return false;
        }

        public int hashCode() {
            return this._hash;
        }
    }
}

