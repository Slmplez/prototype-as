/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.dialogs;

import org.eclipse.ui.internal.misc.StringMatcher;

public class SearchPattern {
    public static final int RULE_EXACT_MATCH = 0;
    public static final int RULE_PREFIX_MATCH = 1;
    public static final int RULE_PATTERN_MATCH = 2;
    public static final int RULE_CASE_SENSITIVE = 8;
    public static final int RULE_BLANK_MATCH = 32;
    public static final int RULE_CAMELCASE_MATCH = 128;
    private int matchRule;
    private String stringPattern;
    private String initialPattern;
    private StringMatcher stringMatcher;
    private static final char END_SYMBOL = '<';
    private static final char ANY_STRING = '*';
    private static final char BLANK = ' ';
    private int allowedRules;

    public SearchPattern() {
        this(163);
    }

    public SearchPattern(int allowedRules) {
        this.allowedRules = allowedRules;
    }

    public String getPattern() {
        return this.stringPattern;
    }

    public void setPattern(String stringPattern) {
        this.initialPattern = stringPattern;
        this.stringPattern = stringPattern;
        this.initializePatternAndMatchRule(stringPattern);
        this.matchRule &= this.allowedRules;
        if (this.matchRule == 2) {
            this.stringMatcher = new StringMatcher(this.stringPattern, true, false);
        }
    }

    public boolean matches(String text) {
        switch (this.matchRule) {
            case 32: {
                return true;
            }
            case 2: {
                return this.stringMatcher.match(text);
            }
            case 0: {
                return this.stringPattern.equalsIgnoreCase(text);
            }
            case 128: {
                if (!this.camelCaseMatch(this.stringPattern, text)) break;
                return true;
            }
        }
        return this.startsWithIgnoreCase(text, this.stringPattern);
    }

    private void initializePatternAndMatchRule(String pattern) {
        int length = pattern.length();
        if (length == 0) {
            this.matchRule = 32;
            this.stringPattern = pattern;
            return;
        }
        char last = pattern.charAt(length - 1);
        if (pattern.indexOf(42) != -1 || pattern.indexOf(63) != -1) {
            this.matchRule = 2;
            switch (last) {
                case ' ': 
                case '<': {
                    this.stringPattern = pattern.substring(0, length - 1);
                    break;
                }
                case '*': {
                    this.stringPattern = pattern;
                    break;
                }
                default: {
                    this.stringPattern = String.valueOf(pattern) + '*';
                }
            }
            return;
        }
        if (this.validateMatchRule(pattern, 128) == 128) {
            this.matchRule = 128;
            this.stringPattern = pattern;
            return;
        }
        if (last == '<' || last == ' ') {
            this.matchRule = 0;
            this.stringPattern = pattern.substring(0, length - 1);
            return;
        }
        this.matchRule = 1;
        this.stringPattern = pattern;
    }

    private boolean startsWithIgnoreCase(String text, String prefix) {
        int prefixLength;
        int textLength = text.length();
        if (textLength < (prefixLength = prefix.length())) {
            return false;
        }
        int i = prefixLength - 1;
        while (i >= 0) {
            if (Character.toLowerCase(prefix.charAt(i)) != Character.toLowerCase(text.charAt(i))) {
                return false;
            }
            --i;
        }
        return true;
    }

    private boolean camelCaseMatch(String pattern, String name) {
        if (pattern == null) {
            return true;
        }
        if (name == null) {
            return false;
        }
        return this.camelCaseMatch(pattern, 0, pattern.length(), name, 0, name.length());
    }

    private boolean camelCaseMatch(String pattern, int patternStart, int patternEnd, String name, int nameStart, int nameEnd) {
        if (name == null) {
            return false;
        }
        if (pattern == null) {
            return true;
        }
        if (patternEnd < 0) {
            patternEnd = pattern.length();
        }
        if (nameEnd < 0) {
            nameEnd = name.length();
        }
        if (patternEnd <= patternStart) {
            return nameEnd <= nameStart;
        }
        if (nameEnd <= nameStart) {
            return false;
        }
        if (name.charAt(nameStart) != pattern.charAt(patternStart)) {
            return false;
        }
        int patternLength = patternEnd;
        if (pattern.charAt(patternEnd - 1) == '<' || pattern.charAt(patternEnd - 1) == ' ') {
            patternLength = patternEnd - 1;
        }
        int iPattern = patternStart;
        int iName = nameStart;
        block0: while (true) {
            char nameChar;
            ++iName;
            if (++iPattern == patternEnd) {
                return true;
            }
            if (iName == nameEnd) {
                return iPattern == patternLength;
            }
            char patternChar = pattern.charAt(iPattern);
            if (patternChar == name.charAt(iName)) continue;
            if (!this.isPatternCharAllowed(patternChar)) {
                return false;
            }
            while (true) {
                if (iName == nameEnd) {
                    return iPattern == patternLength && (patternChar == '<' || patternChar == ' ');
                }
                nameChar = name.charAt(iName);
                if (iPattern == patternLength && (patternChar == '<' || patternChar == ' ')) {
                    if (this.isNameCharAllowed(nameChar)) {
                        return false;
                    }
                    ++iName;
                    continue;
                }
                if (Character.isDigit(nameChar)) {
                    if (patternChar == nameChar) continue block0;
                    ++iName;
                    continue;
                }
                if (this.isNameCharAllowed(nameChar)) break;
                ++iName;
            }
            if (patternChar != nameChar) break;
        }
        return false;
    }

    protected boolean isPatternCharAllowed(char patternChar) {
        return patternChar == '<' || patternChar == ' ' || Character.isUpperCase(patternChar) || Character.isDigit(patternChar);
    }

    protected boolean isNameCharAllowed(char nameChar) {
        return Character.isUpperCase(nameChar);
    }

    public final int getMatchRule() {
        return this.matchRule;
    }

    private int validateMatchRule(String stringPattern, int matchRule) {
        int starIndex = stringPattern.indexOf(42);
        int questionIndex = stringPattern.indexOf(63);
        matchRule = starIndex < 0 && questionIndex < 0 ? (matchRule &= 0xFFFFFFFD) : (matchRule |= 2);
        if ((matchRule & 2) != 0) {
            matchRule &= 0xFFFFFF7F;
            matchRule &= 0xFFFFFFFE;
        }
        if ((matchRule & 0x80) != 0) {
            int length = stringPattern.length();
            boolean validCamelCase = true;
            int i = 0;
            while (i < length && validCamelCase) {
                char ch = stringPattern.charAt(i);
                validCamelCase = this.isValidCamelCaseChar(ch);
                ++i;
            }
            boolean bl = validCamelCase = validCamelCase && Character.isUpperCase(stringPattern.charAt(0));
            if (validCamelCase) {
                if ((matchRule & 1) != 0 && (matchRule & 8) != 0) {
                    matchRule &= 0xFFFFFFFE;
                    matchRule &= 0xFFFFFFF7;
                }
            } else if (((matchRule &= 0xFFFFFF7F) & 1) == 0) {
                matchRule |= 1;
                matchRule |= 8;
            }
        }
        return matchRule;
    }

    protected boolean isValidCamelCaseChar(char ch) {
        return true;
    }

    public boolean equalsPattern(SearchPattern pattern) {
        return SearchPattern.trimWildcardCharacters(pattern.initialPattern).equals(SearchPattern.trimWildcardCharacters(this.initialPattern));
    }

    public boolean isSubPattern(SearchPattern pattern) {
        return SearchPattern.trimWildcardCharacters(pattern.initialPattern).startsWith(SearchPattern.trimWildcardCharacters(this.initialPattern));
    }

    private static String trimWildcardCharacters(String pattern) {
        int i = pattern.indexOf("**");
        if (i == -1) {
            return pattern;
        }
        StringBuffer buf = new StringBuffer(pattern.length());
        int prevAsterisk = 0;
        do {
            if (prevAsterisk != 0 && prevAsterisk == i) continue;
            buf.append(pattern.substring(prevAsterisk, i + 1));
        } while ((i = pattern.indexOf(42, prevAsterisk = i + 1)) != -1);
        buf.append(pattern.substring(prevAsterisk));
        return buf.toString();
    }
}

