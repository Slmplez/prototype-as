/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import java.util.Vector;
import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.StyledTextContent;
import org.eclipse.swt.custom.StyledTextEvent;
import org.eclipse.swt.custom.StyledTextListener;
import org.eclipse.swt.custom.TextChangeListener;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.widgets.TypedListener;

class DefaultContent
implements StyledTextContent {
    private static final String LineDelimiter = System.getProperty("line.separator");
    Vector textListeners = new Vector();
    char[] textStore = new char[0];
    int gapStart = -1;
    int gapEnd = -1;
    int gapLine = -1;
    int highWatermark = 300;
    int lowWatermark = 50;
    int[][] lines = new int[50][2];
    int lineCount = 0;
    int expandExp = 1;
    int replaceExpandExp = 1;

    DefaultContent() {
        this.setText("");
    }

    void addLineIndex(int start, int length) {
        int size = this.lines.length;
        if (this.lineCount == size) {
            int[][] newLines = new int[size + Compatibility.pow2(this.expandExp)][2];
            System.arraycopy(this.lines, 0, newLines, 0, size);
            this.lines = newLines;
            ++this.expandExp;
        }
        int[] range = new int[]{start, length};
        this.lines[this.lineCount] = range;
        ++this.lineCount;
    }

    int[][] addLineIndex(int start, int length, int[][] linesArray, int count) {
        int size = linesArray.length;
        int[][] newLines = linesArray;
        if (count == size) {
            newLines = new int[size + Compatibility.pow2(this.replaceExpandExp)][2];
            ++this.replaceExpandExp;
            System.arraycopy(linesArray, 0, newLines, 0, size);
        }
        int[] range = new int[]{start, length};
        newLines[count] = range;
        return newLines;
    }

    public void addTextChangeListener(TextChangeListener listener) {
        if (listener == null) {
            this.error(4);
        }
        StyledTextListener typedListener = new StyledTextListener(listener);
        this.textListeners.addElement(typedListener);
    }

    void adjustGap(int position, int sizeHint, int line) {
        int size;
        if (position == this.gapStart ? this.lowWatermark <= (size = this.gapEnd - this.gapStart - sizeHint) && size <= this.highWatermark : position + sizeHint == this.gapStart && sizeHint < 0 && this.lowWatermark <= (size = this.gapEnd - this.gapStart - sizeHint) && size <= this.highWatermark) {
            return;
        }
        this.moveAndResizeGap(position, sizeHint, line);
    }

    void indexLines() {
        int start = 0;
        this.lineCount = 0;
        int textLength = this.textStore.length;
        int i = start;
        while (i < textLength) {
            char ch = this.textStore[i];
            if (ch == '\r') {
                if (i + 1 < textLength && (ch = this.textStore[i + 1]) == '\n') {
                    ++i;
                }
                this.addLineIndex(start, i - start + 1);
                start = i + 1;
            } else if (ch == '\n') {
                this.addLineIndex(start, i - start + 1);
                start = i + 1;
            }
            ++i;
        }
        this.addLineIndex(start, i - start);
    }

    boolean isDelimiter(char ch) {
        if (ch == '\r') {
            return true;
        }
        return ch == '\n';
    }

    protected boolean isValidReplace(int start, int replaceLength, String newText) {
        if (replaceLength == 0) {
            char after;
            if (start == 0) {
                return true;
            }
            if (start == this.getCharCount()) {
                return true;
            }
            char before = this.getTextRange(start - 1, 1).charAt(0);
            if (before == '\r' && (after = this.getTextRange(start, 1).charAt(0)) == '\n') {
                return false;
            }
        } else {
            char after;
            char before;
            char startChar = this.getTextRange(start, 1).charAt(0);
            if (startChar == '\n' && start != 0 && (before = this.getTextRange(start - 1, 1).charAt(0)) == '\r') {
                return false;
            }
            char endChar = this.getTextRange(start + replaceLength - 1, 1).charAt(0);
            if (endChar == '\r' && start + replaceLength != this.getCharCount() && (after = this.getTextRange(start + replaceLength, 1).charAt(0)) == '\n') {
                return false;
            }
        }
        return true;
    }

    int[][] indexLines(int offset, int length, int numLines) {
        int[][] indexedLines = new int[numLines][2];
        int start = 0;
        int lineCount = 0;
        this.replaceExpandExp = 1;
        int i = start;
        while (i < length) {
            int location = i + offset;
            if (location < this.gapStart || location >= this.gapEnd) {
                char ch = this.textStore[location];
                if (ch == '\r') {
                    if (location + 1 < this.textStore.length && (ch = this.textStore[location + 1]) == '\n') {
                        ++i;
                    }
                    indexedLines = this.addLineIndex(start, i - start + 1, indexedLines, lineCount);
                    ++lineCount;
                    start = i + 1;
                } else if (ch == '\n') {
                    indexedLines = this.addLineIndex(start, i - start + 1, indexedLines, lineCount);
                    ++lineCount;
                    start = i + 1;
                }
            }
            ++i;
        }
        int[][] newLines = new int[lineCount + 1][2];
        System.arraycopy(indexedLines, 0, newLines, 0, lineCount);
        int[] range = new int[]{start, i - start};
        newLines[lineCount] = range;
        return newLines;
    }

    void insert(int position, String text) {
        int numNewLines;
        int[][] newLines;
        if (text.length() == 0) {
            return;
        }
        int startLine = this.getLineAtOffset(position);
        int change = text.length();
        boolean endInsert = position == this.getCharCount();
        this.adjustGap(position, change, startLine);
        int startLineOffset = this.getOffsetAtLine(startLine);
        int startLineLength = this.getPhysicalLine(startLine).length();
        if (change > 0) {
            this.gapStart += change;
            int i = 0;
            while (i < text.length()) {
                this.textStore[position + i] = text.charAt(i);
                ++i;
            }
        }
        if ((newLines = this.indexLines(startLineOffset, startLineLength, 10))[numNewLines = newLines.length - 1][1] == 0) {
            numNewLines = endInsert ? ++numNewLines : --numNewLines;
        }
        this.expandLinesBy(numNewLines);
        int i = this.lineCount - 1;
        while (i > startLine) {
            this.lines[i + numNewLines] = this.lines[i];
            --i;
        }
        i = 0;
        while (i < numNewLines) {
            int[] nArray = newLines[i];
            nArray[0] = nArray[0] + startLineOffset;
            this.lines[startLine + i] = newLines[i];
            ++i;
        }
        if (numNewLines < newLines.length) {
            int[] nArray = newLines[numNewLines];
            nArray[0] = nArray[0] + startLineOffset;
            this.lines[startLine + numNewLines] = newLines[numNewLines];
        }
        this.lineCount += numNewLines;
        this.gapLine = this.getLineAtPhysicalOffset(this.gapStart);
    }

    void moveAndResizeGap(int position, int size, int newGapLine) {
        int delta;
        char[] content = null;
        int oldSize = this.gapEnd - this.gapStart;
        int newSize = size > 0 ? this.highWatermark + size : this.lowWatermark - size;
        if (this.gapExists()) {
            this.lines[this.gapLine][1] = this.lines[this.gapLine][1] - oldSize;
            int i = this.gapLine + 1;
            while (i < this.lineCount) {
                this.lines[i][0] = this.lines[i][0] - oldSize;
                ++i;
            }
        }
        if (newSize < 0) {
            if (oldSize > 0) {
                content = new char[this.textStore.length - oldSize];
                System.arraycopy(this.textStore, 0, content, 0, this.gapStart);
                System.arraycopy(this.textStore, this.gapEnd, content, this.gapStart, content.length - this.gapStart);
                this.textStore = content;
            }
            this.gapStart = this.gapEnd = position;
            return;
        }
        content = new char[this.textStore.length + (newSize - oldSize)];
        int newGapStart = position;
        int newGapEnd = newGapStart + newSize;
        if (oldSize == 0) {
            System.arraycopy(this.textStore, 0, content, 0, newGapStart);
            System.arraycopy(this.textStore, newGapStart, content, newGapEnd, content.length - newGapEnd);
        } else if (newGapStart < this.gapStart) {
            delta = this.gapStart - newGapStart;
            System.arraycopy(this.textStore, 0, content, 0, newGapStart);
            System.arraycopy(this.textStore, newGapStart, content, newGapEnd, delta);
            System.arraycopy(this.textStore, this.gapEnd, content, newGapEnd + delta, this.textStore.length - this.gapEnd);
        } else {
            delta = newGapStart - this.gapStart;
            System.arraycopy(this.textStore, 0, content, 0, this.gapStart);
            System.arraycopy(this.textStore, this.gapEnd, content, this.gapStart, delta);
            System.arraycopy(this.textStore, this.gapEnd + delta, content, newGapEnd, content.length - newGapEnd);
        }
        this.textStore = content;
        this.gapStart = newGapStart;
        this.gapEnd = newGapEnd;
        if (this.gapExists()) {
            this.gapLine = newGapLine;
            int gapLength = this.gapEnd - this.gapStart;
            this.lines[this.gapLine][1] = this.lines[this.gapLine][1] + gapLength;
            int i = this.gapLine + 1;
            while (i < this.lineCount) {
                this.lines[i][0] = this.lines[i][0] + gapLength;
                ++i;
            }
        }
    }

    int lineCount(int startOffset, int length) {
        if (length == 0) {
            return 0;
        }
        int lineCount = 0;
        int count = 0;
        int i = startOffset;
        if (i >= this.gapStart) {
            i += this.gapEnd - this.gapStart;
        }
        while (count < length) {
            if (i < this.gapStart || i >= this.gapEnd) {
                char ch = this.textStore[i];
                if (ch == '\r') {
                    if (i + 1 < this.textStore.length && (ch = this.textStore[i + 1]) == '\n') {
                        ++i;
                        ++count;
                    }
                    ++lineCount;
                } else if (ch == '\n') {
                    ++lineCount;
                }
                ++count;
            }
            ++i;
        }
        return lineCount;
    }

    int lineCount(String text) {
        int lineCount = 0;
        int length = text.length();
        int i = 0;
        while (i < length) {
            char ch = text.charAt(i);
            if (ch == '\r') {
                if (i + 1 < length && text.charAt(i + 1) == '\n') {
                    ++i;
                }
                ++lineCount;
            } else if (ch == '\n') {
                ++lineCount;
            }
            ++i;
        }
        return lineCount;
    }

    public int getCharCount() {
        int length = this.gapEnd - this.gapStart;
        return this.textStore.length - length;
    }

    public String getLine(int index) {
        if (index >= this.lineCount || index < 0) {
            this.error(5);
        }
        int start = this.lines[index][0];
        int length = this.lines[index][1];
        int end = start + length - 1;
        if (!this.gapExists() || end < this.gapStart || start >= this.gapEnd) {
            while (length - 1 >= 0 && this.isDelimiter(this.textStore[start + length - 1])) {
                --length;
            }
            return new String(this.textStore, start, length);
        }
        StringBuffer buf = new StringBuffer();
        int gapLength = this.gapEnd - this.gapStart;
        buf.append(this.textStore, start, this.gapStart - start);
        buf.append(this.textStore, this.gapEnd, length - gapLength - (this.gapStart - start));
        length = buf.length();
        while (length - 1 >= 0 && this.isDelimiter(buf.charAt(length - 1))) {
            --length;
        }
        return buf.toString().substring(0, length);
    }

    public String getLineDelimiter() {
        return LineDelimiter;
    }

    String getFullLine(int index) {
        int start = this.lines[index][0];
        int length = this.lines[index][1];
        int end = start + length - 1;
        if (!this.gapExists() || end < this.gapStart || start >= this.gapEnd) {
            return new String(this.textStore, start, length);
        }
        StringBuffer buffer = new StringBuffer();
        int gapLength = this.gapEnd - this.gapStart;
        buffer.append(this.textStore, start, this.gapStart - start);
        buffer.append(this.textStore, this.gapEnd, length - gapLength - (this.gapStart - start));
        return buffer.toString();
    }

    String getPhysicalLine(int index) {
        int start = this.lines[index][0];
        int length = this.lines[index][1];
        return this.getPhysicalText(start, length);
    }

    public int getLineCount() {
        return this.lineCount;
    }

    public int getLineAtOffset(int charPosition) {
        int lastLine;
        if (charPosition > this.getCharCount() || charPosition < 0) {
            this.error(5);
        }
        int position = charPosition < this.gapStart ? charPosition : charPosition + (this.gapEnd - this.gapStart);
        if (this.lineCount > 0 && position == this.lines[lastLine = this.lineCount - 1][0] + this.lines[lastLine][1]) {
            return lastLine;
        }
        int high = this.lineCount;
        int low = -1;
        int index = this.lineCount;
        while (high - low > 1) {
            index = (high + low) / 2;
            int lineStart = this.lines[index][0];
            int lineEnd = lineStart + this.lines[index][1] - 1;
            if (position <= lineStart) {
                high = index;
                continue;
            }
            if (position <= lineEnd) {
                high = index;
                break;
            }
            low = index;
        }
        return high;
    }

    int getLineAtPhysicalOffset(int position) {
        int high = this.lineCount;
        int low = -1;
        int index = this.lineCount;
        while (high - low > 1) {
            index = (high + low) / 2;
            int lineStart = this.lines[index][0];
            int lineEnd = lineStart + this.lines[index][1] - 1;
            if (position <= lineStart) {
                high = index;
                continue;
            }
            if (position <= lineEnd) {
                high = index;
                break;
            }
            low = index;
        }
        return high;
    }

    public int getOffsetAtLine(int lineIndex) {
        int start;
        if (lineIndex == 0) {
            return 0;
        }
        if (lineIndex >= this.lineCount || lineIndex < 0) {
            this.error(5);
        }
        if ((start = this.lines[lineIndex][0]) > this.gapEnd) {
            return start - (this.gapEnd - this.gapStart);
        }
        return start;
    }

    void expandLinesBy(int numLines) {
        int size = this.lines.length;
        if (size - this.lineCount >= numLines) {
            return;
        }
        int[][] newLines = new int[size + Math.max(10, numLines)][2];
        System.arraycopy(this.lines, 0, newLines, 0, size);
        this.lines = newLines;
    }

    void error(int code) {
        SWT.error(code);
    }

    boolean gapExists() {
        return this.gapStart != this.gapEnd;
    }

    String getPhysicalText(int start, int length) {
        return new String(this.textStore, start, length);
    }

    public String getTextRange(int start, int length) {
        if (this.textStore == null) {
            return "";
        }
        if (length == 0) {
            return "";
        }
        int end = start + length;
        if (!this.gapExists() || end < this.gapStart) {
            return new String(this.textStore, start, length);
        }
        if (this.gapStart < start) {
            int gapLength = this.gapEnd - this.gapStart;
            return new String(this.textStore, start + gapLength, length);
        }
        StringBuffer buf = new StringBuffer();
        buf.append(this.textStore, start, this.gapStart - start);
        buf.append(this.textStore, this.gapEnd, end - this.gapStart);
        return buf.toString();
    }

    public void removeTextChangeListener(TextChangeListener listener) {
        if (listener == null) {
            this.error(4);
        }
        int i = 0;
        while (i < this.textListeners.size()) {
            TypedListener typedListener = (TypedListener)this.textListeners.elementAt(i);
            if (typedListener.getEventListener() == listener) {
                this.textListeners.removeElementAt(i);
                break;
            }
            ++i;
        }
    }

    public void replaceTextRange(int start, int replaceLength, String newText) {
        if (!this.isValidReplace(start, replaceLength, newText)) {
            SWT.error(5);
        }
        StyledTextEvent event = new StyledTextEvent(this);
        event.type = 3003;
        event.start = start;
        event.replaceLineCount = this.lineCount(start, replaceLength);
        event.text = newText;
        event.newLineCount = this.lineCount(newText);
        event.replaceCharCount = replaceLength;
        event.newCharCount = newText.length();
        this.sendTextEvent(event);
        this.delete(start, replaceLength, event.replaceLineCount + 1);
        this.insert(start, newText);
        event = new StyledTextEvent(this);
        event.type = 3006;
        this.sendTextEvent(event);
    }

    void sendTextEvent(StyledTextEvent event) {
        int i = 0;
        while (i < this.textListeners.size()) {
            ((StyledTextListener)this.textListeners.elementAt(i)).handleEvent(event);
            ++i;
        }
    }

    public void setText(String text) {
        this.textStore = text.toCharArray();
        this.gapStart = -1;
        this.gapEnd = -1;
        this.expandExp = 1;
        this.indexLines();
        StyledTextEvent event = new StyledTextEvent(this);
        event.type = 3004;
        event.text = "";
        this.sendTextEvent(event);
    }

    void delete(int position, int length, int numLines) {
        if (length == 0) {
            return;
        }
        int startLine = this.getLineAtOffset(position);
        int startLineOffset = this.getOffsetAtLine(startLine);
        int endLine = this.getLineAtOffset(position + length);
        String endText = "";
        boolean splittingDelimiter = false;
        if (position + length < this.getCharCount() && (endText = this.getTextRange(position + length - 1, 2)).charAt(0) == '\r' && endText.charAt(1) == '\n') {
            splittingDelimiter = true;
        }
        this.adjustGap(position + length, -length, startLine);
        int[][] oldLines = this.indexLines(position, length + (this.gapEnd - this.gapStart), numLines);
        if (position + length == this.gapStart) {
            this.gapStart -= length;
        } else {
            this.gapEnd += length;
        }
        int j = position;
        boolean eol = false;
        while (j < this.textStore.length && !eol) {
            char ch;
            if ((j < this.gapStart || j >= this.gapEnd) && this.isDelimiter(ch = this.textStore[j])) {
                if (j + 1 < this.textStore.length && ch == '\r' && this.textStore[j + 1] == '\n') {
                    ++j;
                }
                eol = true;
            }
            ++j;
        }
        this.lines[startLine][1] = position - startLineOffset + (j - position);
        int numOldLines = oldLines.length - 1;
        if (splittingDelimiter) {
            --numOldLines;
        }
        int i = endLine + 1;
        while (i < this.lineCount) {
            this.lines[i - numOldLines] = this.lines[i];
            ++i;
        }
        this.lineCount -= numOldLines;
        this.gapLine = this.getLineAtPhysicalOffset(this.gapStart);
    }
}

