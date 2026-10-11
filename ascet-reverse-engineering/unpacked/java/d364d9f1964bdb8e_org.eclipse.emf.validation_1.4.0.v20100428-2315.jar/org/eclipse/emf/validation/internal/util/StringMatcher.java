/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.Normalizer
 *  com.ibm.icu.text.UTF16
 */
package org.eclipse.emf.validation.internal.util;

import com.ibm.icu.text.Normalizer;
import com.ibm.icu.text.UTF16;
import java.util.Vector;

public class StringMatcher {
    protected String fPattern;
    protected int fLength;
    protected boolean fIgnoreWildCards;
    protected boolean fIgnoreCase;
    protected boolean fHasLeadingStar;
    protected boolean fHasTrailingStar;
    protected String[] fSegments;
    protected int fBound = 0;
    protected static final char fSingleWildCard = '\u0000';

    public StringMatcher(String pattern, boolean ignoreCase, boolean ignoreWildCards) {
        if (pattern == null) {
            throw new IllegalArgumentException();
        }
        this.fIgnoreCase = ignoreCase;
        this.fIgnoreWildCards = ignoreWildCards;
        this.fPattern = pattern;
        this.fLength = pattern.length();
        if (this.fIgnoreWildCards) {
            this.parseNoWildCards();
        } else {
            this.parseWildCards();
        }
    }

    public Position find(String text, int start, int end) {
        if (text == null) {
            throw new IllegalArgumentException();
        }
        int tlen = text.length();
        if (start < 0) {
            start = 0;
        }
        if (end > tlen) {
            end = tlen;
        }
        if (end < 0 || start >= end) {
            return null;
        }
        if (this.fLength == 0) {
            return new Position(start, start);
        }
        if (this.fIgnoreWildCards) {
            int x = this.posIn(text, start, end);
            if (x < 0) {
                return null;
            }
            return new Position(x, x + this.fLength);
        }
        int segCount = this.fSegments.length;
        if (segCount == 0) {
            return new Position(start, end);
        }
        int curPos = start;
        int matchStart = -1;
        int i = 0;
        while (i < segCount && curPos < end) {
            String current = this.fSegments[i];
            int nextMatch = this.regExpPosIn(text, curPos, end, current);
            if (nextMatch < 0) {
                return null;
            }
            if (i == 0) {
                matchStart = nextMatch;
            }
            curPos = nextMatch + current.length();
            ++i;
        }
        if (i < segCount) {
            return null;
        }
        return new Position(matchStart, curPos);
    }

    public boolean match(String text) {
        return this.match(text, 0, text.length());
    }

    /*
     * Unable to fully structure code
     */
    public boolean match(String text, int start, int end) {
        if (text == null) {
            throw new IllegalArgumentException();
        }
        if (start > end) {
            return false;
        }
        if (this.fIgnoreWildCards) {
            return end - start == this.fLength && this.fPattern.regionMatches(this.fIgnoreCase, 0, text, start, this.fLength) != false;
        }
        segCount = this.fSegments.length;
        if (segCount == 0 && (this.fHasLeadingStar || this.fHasTrailingStar)) {
            return true;
        }
        if (start == end) {
            return this.fLength == 0;
        }
        if (this.fLength == 0) {
            return start == end;
        }
        tlen = text.length();
        if (start < 0) {
            start = 0;
        }
        if (end > tlen) {
            end = tlen;
        }
        tCurPos = start;
        bound = end - this.fBound;
        if (bound < 0) {
            return false;
        }
        i = 0;
        current = this.fSegments[i];
        segLength = current.length();
        if (!this.fHasLeadingStar) {
            if (!this.regExpRegionMatches(text, start, current, 0, segLength)) {
                return false;
            }
            ++i;
            tCurPos += segLength;
        }
        if (this.fSegments.length != 1 || this.fHasLeadingStar || this.fHasTrailingStar) ** GOTO lbl39
        return tCurPos == end;
lbl-1000:
        // 1 sources

        {
            current = this.fSegments[i];
            k = current.indexOf(0);
            if (k < 0 ? (currentMatch = this.textPosIn(text, tCurPos, end, current)) < 0 : (currentMatch = this.regExpPosIn(text, tCurPos, end, current)) < 0) {
                return false;
            }
            tCurPos = currentMatch + current.length();
            ++i;
lbl39:
            // 2 sources

            ** while (i < segCount)
        }
lbl40:
        // 1 sources

        if (!this.fHasTrailingStar && tCurPos != end) {
            clen = current.length();
            return this.regExpRegionMatches(text, end - clen, current, 0, clen);
        }
        return i == segCount;
    }

    private void parseNoWildCards() {
        this.fSegments = new String[1];
        this.fSegments[0] = this.fPattern;
        this.fBound = this.fLength;
    }

    private void parseWildCards() {
        if (this.fPattern.startsWith("*")) {
            this.fHasLeadingStar = true;
        }
        if (UTF16.charAt((String)this.fPattern, (int)(this.fLength - 1)) == 42 && this.fLength > 1 && UTF16.charAt((String)this.fPattern, (int)(this.fLength - 2)) != 92) {
            this.fHasTrailingStar = true;
        }
        Vector<String> temp = new Vector<String>();
        int pos = 0;
        StringBuffer buf = new StringBuffer();
        block5: while (pos < this.fLength) {
            int c = UTF16.charAt((String)this.fPattern, (int)pos);
            pos += UTF16.getCharCount((int)c);
            switch (c) {
                case 92: {
                    if (pos >= this.fLength) {
                        UTF16.append((StringBuffer)buf, (int)c);
                        break;
                    }
                    int next = UTF16.charAt((String)this.fPattern, (int)pos);
                    pos += UTF16.getCharCount((int)next);
                    if (next == 42 || next == 63 || next == 92) {
                        UTF16.append((StringBuffer)buf, (int)next);
                        break;
                    }
                    UTF16.append((StringBuffer)buf, (int)c);
                    UTF16.append((StringBuffer)buf, (int)next);
                    break;
                }
                case 42: {
                    if (buf.length() <= 0) continue block5;
                    temp.addElement(buf.toString());
                    this.fBound += buf.length();
                    buf.setLength(0);
                    break;
                }
                case 63: {
                    buf.append('\u0000');
                    break;
                }
                default: {
                    UTF16.append((StringBuffer)buf, (int)c);
                }
            }
        }
        if (buf.length() > 0) {
            temp.addElement(buf.toString());
            this.fBound += buf.length();
        }
        this.fSegments = new String[temp.size()];
        temp.copyInto(this.fSegments);
    }

    protected int posIn(String text, int start, int end) {
        int max = end - this.fLength;
        if (!this.fIgnoreCase) {
            int i = UTF16.indexOf((String)text, (String)this.fPattern, (int)start);
            if (i == -1 || i > max) {
                return -1;
            }
            return i;
        }
        int i = start;
        while (i <= max) {
            if (text.regionMatches(true, i, this.fPattern, 0, this.fLength)) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    protected int regExpPosIn(String text, int start, int end, String p) {
        int plen = p.length();
        int max = end - plen;
        int i = start;
        while (i <= max) {
            if (this.regExpRegionMatches(text, i, p, 0, plen)) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    protected boolean regExpRegionMatches(String text, int tStart, String p, int pStart, int plen) {
        while (plen-- > 0) {
            int tchar = UTF16.charAt((String)text, (int)tStart);
            tStart += UTF16.getCharCount((int)tchar);
            int pchar = UTF16.charAt((String)p, (int)pStart);
            pStart += UTF16.getCharCount((int)pchar);
            if (!this.fIgnoreWildCards && pchar == 0 || pchar == tchar || this.fIgnoreCase && Normalizer.compare((int)tchar, (int)pchar, (int)65536) == 0) continue;
            return false;
        }
        return true;
    }

    protected int textPosIn(String text, int start, int end, String p) {
        int plen = p.length();
        int max = end - plen;
        if (!this.fIgnoreCase) {
            int i = UTF16.indexOf((String)text, (String)p, (int)start);
            if (i == -1 || i > max) {
                return -1;
            }
            return i;
        }
        int i = start;
        while (i <= max) {
            if (text.regionMatches(true, i, p, 0, plen)) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    public static class Position {
        private final int start;
        private final int end;

        public Position(int start, int end) {
            this.start = start;
            this.end = end;
        }

        public int getStart() {
            return this.start;
        }

        public int getEnd() {
            return this.end;
        }
    }
}

