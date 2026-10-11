/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.impl.Utility;
import com.ibm.icu.text.Replaceable;
import com.ibm.icu.text.RuleBasedTransliterator;
import com.ibm.icu.text.UTF16;
import com.ibm.icu.text.UnicodeMatcher;
import com.ibm.icu.text.UnicodeReplacer;
import com.ibm.icu.text.UnicodeSet;

class StringMatcher
implements UnicodeMatcher,
UnicodeReplacer {
    private String pattern;
    private int matchStart;
    private int matchLimit;
    private int segmentNumber;
    private final RuleBasedTransliterator.Data data;

    public StringMatcher(String theString, int segmentNum, RuleBasedTransliterator.Data theData) {
        this.data = theData;
        this.pattern = theString;
        this.matchLimit = -1;
        this.matchStart = -1;
        this.segmentNumber = segmentNum;
    }

    public StringMatcher(String theString, int start, int limit, int segmentNum, RuleBasedTransliterator.Data theData) {
        this(theString.substring(start, limit), segmentNum, theData);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public int matches(Replaceable text, int[] offset, int limit, boolean incremental) {
        int[] cursor = new int[]{offset[0]};
        if (limit < cursor[0]) {
            int i = this.pattern.length() - 1;
            while (i >= 0) {
                char keyChar = this.pattern.charAt(i);
                UnicodeMatcher subm = this.data.lookupMatcher(keyChar);
                if (subm == null) {
                    if (cursor[0] <= limit || keyChar != text.charAt(cursor[0])) return 0;
                    cursor[0] = cursor[0] - 1;
                } else {
                    int m = subm.matches(text, cursor, limit, incremental);
                    if (m != 2) {
                        return m;
                    }
                }
                --i;
            }
            if (this.matchStart < 0) {
                this.matchStart = cursor[0] + 1;
                this.matchLimit = offset[0] + 1;
            }
        } else {
            int i = 0;
            while (i < this.pattern.length()) {
                if (incremental && cursor[0] == limit) {
                    return 1;
                }
                char keyChar = this.pattern.charAt(i);
                UnicodeMatcher subm = this.data.lookupMatcher(keyChar);
                if (subm == null) {
                    if (cursor[0] >= limit || keyChar != text.charAt(cursor[0])) return 0;
                    cursor[0] = cursor[0] + 1;
                } else {
                    int m = subm.matches(text, cursor, limit, incremental);
                    if (m != 2) {
                        return m;
                    }
                }
                ++i;
            }
            this.matchStart = offset[0];
            this.matchLimit = cursor[0];
        }
        offset[0] = cursor[0];
        return 2;
    }

    public String toPattern(boolean escapeUnprintable) {
        StringBuffer result = new StringBuffer();
        StringBuffer quoteBuf = new StringBuffer();
        if (this.segmentNumber > 0) {
            result.append('(');
        }
        int i = 0;
        while (i < this.pattern.length()) {
            char keyChar = this.pattern.charAt(i);
            UnicodeMatcher m = this.data.lookupMatcher(keyChar);
            if (m == null) {
                Utility.appendToRule(result, keyChar, false, escapeUnprintable, quoteBuf);
            } else {
                Utility.appendToRule(result, m.toPattern(escapeUnprintable), true, escapeUnprintable, quoteBuf);
            }
            ++i;
        }
        if (this.segmentNumber > 0) {
            result.append(')');
        }
        Utility.appendToRule(result, -1, true, escapeUnprintable, quoteBuf);
        return result.toString();
    }

    public boolean matchesIndexValue(int v) {
        if (this.pattern.length() == 0) {
            return true;
        }
        int c = UTF16.charAt(this.pattern, 0);
        UnicodeMatcher m = this.data.lookupMatcher(c);
        return m == null ? (c & 0xFF) == v : m.matchesIndexValue(v);
    }

    public void addMatchSetTo(UnicodeSet toUnionTo) {
        int i = 0;
        while (i < this.pattern.length()) {
            int ch = UTF16.charAt(this.pattern, i);
            UnicodeMatcher matcher = this.data.lookupMatcher(ch);
            if (matcher == null) {
                toUnionTo.add(ch);
            } else {
                matcher.addMatchSetTo(toUnionTo);
            }
            i += UTF16.getCharCount(ch);
        }
    }

    public int replace(Replaceable text, int start, int limit, int[] cursor) {
        int outLen = 0;
        int dest = limit;
        if (this.matchStart >= 0 && this.matchStart != this.matchLimit) {
            text.copy(this.matchStart, this.matchLimit, dest);
            outLen = this.matchLimit - this.matchStart;
        }
        text.replace(start, limit, "");
        return outLen;
    }

    public String toReplacerPattern(boolean escapeUnprintable) {
        StringBuffer rule = new StringBuffer("$");
        Utility.appendNumber(rule, this.segmentNumber, 10, 1);
        return rule.toString();
    }

    public void resetMatch() {
        this.matchLimit = -1;
        this.matchStart = -1;
    }

    public void addReplacementSetTo(UnicodeSet toUnionTo) {
    }
}

