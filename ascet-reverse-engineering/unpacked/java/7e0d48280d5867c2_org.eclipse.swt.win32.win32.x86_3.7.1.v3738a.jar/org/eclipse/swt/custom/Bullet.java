/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.StyleRange;

public class Bullet {
    public int type;
    public StyleRange style;
    public String text;
    int[] linesIndices;
    int count;

    public Bullet(StyleRange style) {
        this(1, style);
    }

    public Bullet(int type, StyleRange style) {
        if (style == null) {
            SWT.error(4);
        }
        if (style.metrics == null) {
            SWT.error(4);
        }
        this.type = type;
        this.style = style;
    }

    void addIndices(int startLine, int lineCount) {
        if (this.linesIndices == null) {
            this.linesIndices = new int[lineCount];
            this.count = lineCount;
            int i = 0;
            while (i < lineCount) {
                this.linesIndices[i] = startLine + i;
                ++i;
            }
        } else {
            int modifyStart = 0;
            while (modifyStart < this.count) {
                if (startLine <= this.linesIndices[modifyStart]) break;
                ++modifyStart;
            }
            int modifyEnd = modifyStart;
            while (modifyEnd < this.count) {
                if (startLine + lineCount <= this.linesIndices[modifyEnd]) break;
                ++modifyEnd;
            }
            int newSize = modifyStart + lineCount + this.count - modifyEnd;
            if (newSize > this.linesIndices.length) {
                int[] newLinesIndices = new int[newSize];
                System.arraycopy(this.linesIndices, 0, newLinesIndices, 0, this.count);
                this.linesIndices = newLinesIndices;
            }
            System.arraycopy(this.linesIndices, modifyEnd, this.linesIndices, modifyStart + lineCount, this.count - modifyEnd);
            int i = 0;
            while (i < lineCount) {
                this.linesIndices[modifyStart + i] = startLine + i;
                ++i;
            }
            this.count = newSize;
        }
    }

    int indexOf(int lineIndex) {
        int i = 0;
        while (i < this.count) {
            if (this.linesIndices[i] == lineIndex) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    public int hashCode() {
        return this.style.hashCode() ^ this.type;
    }

    int[] removeIndices(int startLine, int replaceLineCount, int newLineCount, boolean update) {
        if (this.count == 0) {
            return null;
        }
        if (startLine > this.linesIndices[this.count - 1]) {
            return null;
        }
        int endLine = startLine + replaceLineCount;
        int delta = newLineCount - replaceLineCount;
        int i = 0;
        while (i < this.count) {
            int index = this.linesIndices[i];
            if (startLine <= index) {
                int j = i;
                while (j < this.count) {
                    if (this.linesIndices[j] >= endLine) break;
                    ++j;
                }
                if (update) {
                    int k = j;
                    while (k < this.count) {
                        int n = k++;
                        this.linesIndices[n] = this.linesIndices[n] + delta;
                    }
                }
                int[] redrawLines = new int[this.count - j];
                System.arraycopy(this.linesIndices, j, redrawLines, 0, this.count - j);
                System.arraycopy(this.linesIndices, j, this.linesIndices, i, this.count - j);
                this.count -= j - i;
                return redrawLines;
            }
            ++i;
        }
        i = 0;
        while (i < this.count) {
            int n = i++;
            this.linesIndices[n] = this.linesIndices[n] + delta;
        }
        return null;
    }

    int size() {
        return this.count;
    }
}

