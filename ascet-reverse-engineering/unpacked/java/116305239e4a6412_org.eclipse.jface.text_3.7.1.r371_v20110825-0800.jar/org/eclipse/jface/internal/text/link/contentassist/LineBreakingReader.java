/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.BreakIterator
 *  org.eclipse.swt.graphics.GC
 */
package org.eclipse.jface.internal.text.link.contentassist;

import com.ibm.icu.text.BreakIterator;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import org.eclipse.swt.graphics.GC;

public class LineBreakingReader {
    private BufferedReader fReader;
    private GC fGC;
    private int fMaxWidth;
    private String fLine;
    private int fOffset;
    private BreakIterator fLineBreakIterator;
    private boolean fBreakWords;

    public LineBreakingReader(Reader reader, GC gc, int maxLineWidth) {
        this.fReader = new BufferedReader(reader);
        this.fGC = gc;
        this.fMaxWidth = maxLineWidth;
        this.fOffset = 0;
        this.fLine = null;
        this.fLineBreakIterator = BreakIterator.getLineInstance();
        this.fBreakWords = true;
    }

    public boolean isFormattedLine() {
        return this.fLine != null;
    }

    public String readLine() throws IOException {
        String res;
        int breakOffset;
        if (this.fLine == null) {
            String line = this.fReader.readLine();
            if (line == null) {
                return null;
            }
            int lineLen = this.fGC.textExtent((String)line).x;
            if (lineLen < this.fMaxWidth) {
                return line;
            }
            this.fLine = line;
            this.fLineBreakIterator.setText(line);
            this.fOffset = 0;
        }
        if ((breakOffset = this.findNextBreakOffset(this.fOffset)) != -1) {
            res = this.fLine.substring(this.fOffset, breakOffset);
            this.fOffset = this.findWordBegin(breakOffset);
            if (this.fOffset == this.fLine.length()) {
                this.fLine = null;
            }
        } else {
            res = this.fLine.substring(this.fOffset);
            this.fLine = null;
        }
        return res;
    }

    private int findNextBreakOffset(int currOffset) {
        int currWidth = 0;
        int nextOffset = this.fLineBreakIterator.following(currOffset);
        while (nextOffset != -1) {
            String word = this.fLine.substring(currOffset, nextOffset);
            int wordWidth = this.fGC.textExtent((String)word).x;
            int nextWidth = wordWidth + currWidth;
            if (nextWidth > this.fMaxWidth) {
                if (currWidth > 0) {
                    return currOffset;
                }
                if (!this.fBreakWords) {
                    return nextOffset;
                }
                int length = word.length();
                while (length >= 0) {
                    word = word.substring(0, --length);
                    wordWidth = this.fGC.textExtent((String)word).x;
                    if (wordWidth + currWidth >= this.fMaxWidth) continue;
                    return currOffset + length;
                }
                return nextOffset;
            }
            currWidth = nextWidth;
            currOffset = nextOffset;
            nextOffset = this.fLineBreakIterator.next();
        }
        return nextOffset;
    }

    private int findWordBegin(int idx) {
        while (idx < this.fLine.length() && Character.isWhitespace(this.fLine.charAt(idx))) {
            ++idx;
        }
        return idx;
    }
}

