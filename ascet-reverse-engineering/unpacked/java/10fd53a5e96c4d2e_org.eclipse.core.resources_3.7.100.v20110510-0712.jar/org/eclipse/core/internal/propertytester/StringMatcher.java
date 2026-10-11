/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.propertytester;

import java.util.ArrayList;

public class StringMatcher {
    private static final char SINGLE_WILD_CARD = '\u0000';
    private int bound = 0;
    private boolean hasLeadingStar;
    private boolean hasTrailingStar;
    private final String pattern;
    private final int patternLength;
    private String[] segments;

    public StringMatcher(String pattern) {
        if (pattern == null) {
            throw new IllegalArgumentException();
        }
        this.pattern = pattern;
        this.patternLength = pattern.length();
        this.parseWildCards();
    }

    private int findPosition(String text, int start, int end, String p) {
        boolean hasWildCard = p.indexOf(0) >= 0;
        int plen = p.length();
        int i = start;
        int max = end - plen;
        while (i <= max) {
            if (hasWildCard ? this.regExpRegionMatches(text, i, p, 0, plen) : text.regionMatches(true, i, p, 0, plen)) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    /*
     * Unable to fully structure code
     */
    public boolean match(String text) {
        if (text == null) {
            return false;
        }
        end = text.length();
        segmentCount = this.segments.length;
        if (segmentCount == 0 && (this.hasLeadingStar || this.hasTrailingStar)) {
            return true;
        }
        if (end == 0) {
            return this.patternLength == 0;
        }
        if (this.patternLength == 0) {
            return false;
        }
        currentTextPosition = 0;
        if (end - this.bound < 0) {
            return false;
        }
        segmentIndex = 0;
        current = this.segments[segmentIndex];
        if (!this.hasLeadingStar) {
            currentLength = current.length();
            if (!this.regExpRegionMatches(text, 0, current, 0, currentLength)) {
                return false;
            }
            ++segmentIndex;
            currentTextPosition += currentLength;
        }
        if (segmentCount != 1 || this.hasLeadingStar || this.hasTrailingStar) ** GOTO lbl30
        return currentTextPosition == end;
lbl-1000:
        // 1 sources

        {
            current = this.segments[segmentIndex];
            currentMatch = this.findPosition(text, currentTextPosition, end, current);
            if (currentMatch < 0) {
                return false;
            }
            currentTextPosition = currentMatch + current.length();
            ++segmentIndex;
lbl30:
            // 2 sources

            ** while (segmentIndex < segmentCount)
        }
lbl31:
        // 1 sources

        if (!this.hasTrailingStar && currentTextPosition != end) {
            currentLength = current.length();
            return this.regExpRegionMatches(text, end - currentLength, current, 0, currentLength);
        }
        return segmentIndex == segmentCount;
    }

    private void parseWildCards() {
        if (this.pattern.startsWith("*")) {
            this.hasLeadingStar = true;
        }
        if (this.pattern.endsWith("*") && this.patternLength > 1 && this.pattern.charAt(this.patternLength - 2) != '\\') {
            this.hasTrailingStar = true;
        }
        ArrayList<String> temp = new ArrayList<String>();
        int pos = 0;
        StringBuffer buf = new StringBuffer();
        block5: while (pos < this.patternLength) {
            char c = this.pattern.charAt(pos++);
            switch (c) {
                case '\\': {
                    char next;
                    if (pos >= this.patternLength) {
                        buf.append(c);
                        break;
                    }
                    if ((next = this.pattern.charAt(pos++)) == '*' || next == '?' || next == '\\') {
                        buf.append(next);
                        break;
                    }
                    buf.append(c);
                    buf.append(next);
                    break;
                }
                case '*': {
                    if (buf.length() <= 0) continue block5;
                    temp.add(buf.toString());
                    this.bound += buf.length();
                    buf.setLength(0);
                    break;
                }
                case '?': {
                    buf.append('\u0000');
                    break;
                }
                default: {
                    buf.append(c);
                }
            }
        }
        if (buf.length() > 0) {
            temp.add(buf.toString());
            this.bound += buf.length();
        }
        this.segments = temp.toArray(new String[temp.size()]);
    }

    private boolean regExpRegionMatches(String text, int tStart, String p, int pStart, int plen) {
        while (plen-- > 0) {
            char pchar;
            char tchar = text.charAt(tStart++);
            if ((pchar = p.charAt(pStart++)) == '\u0000' || pchar == tchar || Character.toUpperCase(tchar) == Character.toUpperCase(pchar) || Character.toLowerCase(tchar) == Character.toLowerCase(pchar)) continue;
            return false;
        }
        return true;
    }
}

