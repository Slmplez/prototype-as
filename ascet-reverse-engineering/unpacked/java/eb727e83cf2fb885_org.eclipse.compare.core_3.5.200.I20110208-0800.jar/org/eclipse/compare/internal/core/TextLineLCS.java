/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.compare.internal.core;

import java.util.ArrayList;
import org.eclipse.compare.internal.core.LCS;

public class TextLineLCS
extends LCS {
    private final TextLine[] lines1;
    private final TextLine[] lines2;
    private TextLine[][] lcs;

    public TextLineLCS(TextLine[] lines1, TextLine[] lines2) {
        this.lines1 = lines1;
        this.lines2 = lines2;
    }

    public TextLine[][] getResult() {
        int length = this.getLength();
        if (length == 0) {
            return new TextLine[2][0];
        }
        TextLine[][] result = new TextLine[][]{this.compactAndShiftLCS(this.lcs[0], length, this.lines1), this.compactAndShiftLCS(this.lcs[1], length, this.lines2)};
        return result;
    }

    protected int getLength2() {
        return this.lines2.length;
    }

    protected int getLength1() {
        return this.lines1.length;
    }

    protected boolean isRangeEqual(int i1, int i2) {
        return this.lines1[i1].sameText(this.lines2[i2]);
    }

    protected void setLcs(int sl1, int sl2) {
        this.lcs[0][sl1] = this.lines1[sl1];
        this.lcs[1][sl1] = this.lines2[sl2];
    }

    protected void initializeLcs(int length) {
        this.lcs = new TextLine[2][length];
    }

    /*
     * Unable to fully structure code
     */
    private TextLine[] compactAndShiftLCS(TextLine[] lcsSide, int len, TextLine[] original) {
        result = new TextLine[len];
        if (len == 0) {
            return result;
        }
        j = 0;
        while (lcsSide[j] == null) {
            ++j;
        }
        result[0] = lcsSide[j];
        ++j;
        i = 1;
        ** GOTO lbl18
        {
            ++j;
            do {
                if (lcsSide[j] == null) continue block1;
                result[i] = original[result[i - 1].lineNumber() + 1].sameText(lcsSide[j]) != false ? original[result[i - 1].lineNumber() + 1] : lcsSide[j];
                ++j;
                ++i;
lbl18:
                // 2 sources

            } while (i < len);
        }
        return result;
    }

    public static TextLine[] getTextLines(String text) {
        ArrayList<TextLine> lines = new ArrayList<TextLine>();
        int begin = 0;
        int end = TextLineLCS.getEOL(text, 0);
        int lineNum = 0;
        while (end != -1) {
            lines.add(new TextLine(lineNum++, text.substring(begin, end)));
            begin = end + 1;
            end = TextLineLCS.getEOL(text, begin);
            if (end != begin || text.charAt(begin - 1) != '\r' || text.charAt(begin) != '\n') continue;
            begin = end + 1;
            end = TextLineLCS.getEOL(text, begin);
        }
        lines.add(new TextLine(lineNum, text.substring(begin)));
        TextLine[] aLines = new TextLine[lines.size()];
        lines.toArray(aLines);
        return aLines;
    }

    private static int getEOL(String text, int start) {
        int max = text.length();
        int i = start;
        while (i < max) {
            char c = text.charAt(i);
            if (c == '\n' || c == '\r') {
                return i;
            }
            ++i;
        }
        return -1;
    }

    public static class TextLine {
        private int number;
        private String text;

        public TextLine(int number, String text) {
            this.number = number;
            this.text = text;
        }

        public boolean sameText(TextLine l) {
            return this.text.hashCode() == l.text.hashCode() && l.text.equals(this.text);
        }

        public int lineNumber() {
            return this.number;
        }

        public String toString() {
            return this.number + " " + this.text + "\n";
        }
    }
}

