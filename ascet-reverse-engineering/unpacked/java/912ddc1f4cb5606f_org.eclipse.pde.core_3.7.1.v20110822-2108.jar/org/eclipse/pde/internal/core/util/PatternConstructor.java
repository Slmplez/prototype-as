/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.util;

import java.util.regex.Pattern;

public class PatternConstructor {
    private static final Pattern PATTERN_BACK_SLASH = Pattern.compile("\\\\");
    private static final Pattern PATTERN_QUESTION = Pattern.compile("\\?");
    private static final Pattern PATTERN_STAR = Pattern.compile("\\*");
    private static final Pattern PATTERN_LBRACKET = Pattern.compile("\\(");
    private static final Pattern PATTERN_RBRACKET = Pattern.compile("\\)");

    private static String asRegEx(String pattern, boolean group) {
        String result1 = PATTERN_BACK_SLASH.matcher(pattern).replaceAll("\\\\E\\\\\\\\\\\\Q");
        String result2 = PATTERN_STAR.matcher(result1).replaceAll("\\\\E.*\\\\Q");
        String result3 = PATTERN_QUESTION.matcher(result2).replaceAll("\\\\E.\\\\Q");
        if (group) {
            result3 = PATTERN_LBRACKET.matcher(result3).replaceAll("\\\\E(\\\\Q");
            result3 = PATTERN_RBRACKET.matcher(result3).replaceAll("\\\\E)\\\\Q");
        }
        return "\\Q" + result3 + "\\E";
    }

    public static Pattern createPattern(String pattern, boolean isCaseSensitive) {
        if (isCaseSensitive) {
            return Pattern.compile(PatternConstructor.asRegEx(pattern, false));
        }
        return Pattern.compile(PatternConstructor.asRegEx(pattern, false), 66);
    }

    public static Pattern createGroupedPattern(String pattern, boolean isCaseSensitive) {
        if (isCaseSensitive) {
            return Pattern.compile(PatternConstructor.asRegEx(pattern, true));
        }
        return Pattern.compile(PatternConstructor.asRegEx(pattern, true), 66);
    }

    private PatternConstructor() {
    }
}

