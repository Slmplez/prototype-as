/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.util;

import java.util.Locale;

public class TextProcessor {
    private static final String DOT = ".";
    private static final String COLON = ":";
    private static final String FILE_SEP_FSLASH = "/";
    private static final String FILE_SEP_BSLASH = "\\";
    private static final String delimiterString = ".:/\\";
    private static final char LRM = '\u200e';
    private static final char LRE = '\u202a';
    private static final char PDF = '\u202c';
    private static boolean IS_PROCESSING_NEEDED;
    private static final int INDEX_NOT_SET = 999999999;

    static {
        String osName;
        IS_PROCESSING_NEEDED = false;
        Locale locale = Locale.getDefault();
        String lang = locale.getLanguage();
        if (("iw".equals(lang) || "he".equals(lang) || "ar".equals(lang) || "fa".equals(lang) || "ur".equals(lang)) && ((osName = System.getProperty("os.name").toLowerCase()).startsWith("windows") || osName.startsWith("linux") || osName.startsWith("mac"))) {
            IS_PROCESSING_NEEDED = true;
        }
    }

    public static String process(String text) {
        if (!IS_PROCESSING_NEEDED || text == null || text.length() <= 1) {
            return text;
        }
        return TextProcessor.process(text, TextProcessor.getDefaultDelimiters());
    }

    public static String process(String str, String delimiter) {
        if (!IS_PROCESSING_NEEDED || str == null || str.length() <= 1) {
            return str;
        }
        if (str.charAt(0) == '\u202a' && str.charAt(str.length() - 1) == '\u202c') {
            return str;
        }
        boolean isStringBidi = false;
        boolean isLastRTL = false;
        int delimIndex = 999999999;
        delimiter = delimiter == null ? TextProcessor.getDefaultDelimiters() : delimiter;
        StringBuffer target = new StringBuffer();
        target.append('\u202a');
        int i = 0;
        int n = str.length();
        while (i < n) {
            char ch = str.charAt(i);
            if (delimiter.indexOf(ch) != -1) {
                if (isLastRTL) {
                    delimIndex = target.length();
                }
            } else if (Character.isDigit(ch)) {
                if (delimIndex != 999999999) {
                    target.insert(delimIndex, '\u200e');
                    delimIndex = 999999999;
                    isLastRTL = false;
                }
            } else if (Character.isLetter(ch)) {
                if (TextProcessor.isRTL(ch)) {
                    isStringBidi = true;
                    if (delimIndex != 999999999) {
                        target.insert(delimIndex, '\u200e');
                        delimIndex = 999999999;
                    }
                    isLastRTL = true;
                } else {
                    delimIndex = 999999999;
                    isLastRTL = false;
                }
            }
            target.append(ch);
            ++i;
        }
        if (isStringBidi || !Character.isLetter(str.charAt(0)) || TextProcessor.isNeutral(str.charAt(str.length() - 1))) {
            target.append('\u202c');
            return target.toString();
        }
        return str;
    }

    public static String deprocess(String str) {
        if (!IS_PROCESSING_NEEDED || str == null || str.length() <= 1) {
            return str;
        }
        StringBuffer buf = new StringBuffer();
        int i = 0;
        while (i < str.length()) {
            char c = str.charAt(i);
            switch (c) {
                case '\u202a': {
                    break;
                }
                case '\u202c': {
                    break;
                }
                case '\u200e': {
                    break;
                }
                default: {
                    buf.append(c);
                }
            }
            ++i;
        }
        return buf.toString();
    }

    public static String getDefaultDelimiters() {
        return delimiterString;
    }

    private static boolean isRTL(char c) {
        return c >= '\u05d0' && c <= '\u07b1' || c >= '\ufb1d' && c <= '\ufefc';
    }

    private static boolean isNeutral(char c) {
        return !Character.isDigit(c) && !Character.isLetter(c);
    }

    private TextProcessor() {
    }
}

