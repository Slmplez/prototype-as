/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.compare.internal.core.patch;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.compare.internal.core.patch.FileDiffResult;
import org.eclipse.compare.internal.core.patch.FilePatch2;
import org.eclipse.compare.internal.core.patch.LineReader;
import org.eclipse.compare.patch.IHunk;
import org.eclipse.compare.patch.PatchConfiguration;
import org.eclipse.core.runtime.Assert;

public class Hunk
implements IHunk {
    private FilePatch2 fParent;
    private int fOldStart;
    private int fOldLength;
    private int fNewStart;
    private int fNewLength;
    private String[] fLines;
    private int hunkType;
    private String charset = null;

    public static Hunk createHunk(FilePatch2 parent, int[] oldRange, int[] newRange, List lines, boolean hasLineAdditions, boolean hasLineDeletions, boolean hasContextLines) {
        int oldStart = 0;
        int oldLength = 0;
        int newStart = 0;
        int newLength = 0;
        oldStart = oldRange[0] > 0 ? oldRange[0] - 1 : 0;
        oldLength = oldRange[1];
        newStart = newRange[0] > 0 ? newRange[0] - 1 : 0;
        newLength = newRange[1];
        int hunkType = 3;
        if (!hasContextLines) {
            if (hasLineAdditions && !hasLineDeletions) {
                hunkType = 1;
            } else if (!hasLineAdditions && hasLineDeletions) {
                hunkType = 2;
            }
        }
        return new Hunk(parent, hunkType, oldStart, oldLength, newStart, newLength, lines.toArray(new String[lines.size()]));
    }

    public Hunk(FilePatch2 parent, int hunkType, int oldStart, int oldLength, int newStart, int newLength, String[] lines) {
        this.fParent = parent;
        if (this.fParent != null) {
            this.fParent.add(this);
        }
        this.hunkType = hunkType;
        this.fOldLength = oldLength;
        this.fOldStart = oldStart;
        this.fNewLength = newLength;
        this.fNewStart = newStart;
        this.fLines = lines;
    }

    public Hunk(FilePatch2 parent, Hunk toCopy) {
        this(parent, toCopy.hunkType, toCopy.fOldStart, toCopy.fOldLength, toCopy.fNewStart, toCopy.fNewLength, toCopy.fLines);
    }

    public String getContent() {
        StringBuffer sb = new StringBuffer();
        int i = 0;
        while (i < this.fLines.length) {
            String line = this.fLines[i];
            sb.append(line.substring(0, LineReader.length(line)));
            sb.append('\n');
            ++i;
        }
        return sb.toString();
    }

    String getDescription() {
        StringBuffer sb = new StringBuffer();
        sb.append(Integer.toString(this.fOldStart));
        sb.append(',');
        sb.append(Integer.toString(this.fOldLength));
        sb.append(" -> ");
        sb.append(Integer.toString(this.fNewStart));
        sb.append(',');
        sb.append(Integer.toString(this.fNewLength));
        return sb.toString();
    }

    public String getRejectedDescription() {
        StringBuffer sb = new StringBuffer();
        sb.append("@@ -");
        sb.append(Integer.toString(this.fOldStart));
        sb.append(',');
        sb.append(Integer.toString(this.fOldLength));
        sb.append(" +");
        sb.append(Integer.toString(this.fNewStart));
        sb.append(',');
        sb.append(Integer.toString(this.fNewLength));
        sb.append(" @@");
        return sb.toString();
    }

    public int getHunkType(boolean reverse) {
        if (reverse) {
            if (this.hunkType == 1) {
                return 2;
            }
            if (this.hunkType == 2) {
                return 1;
            }
        }
        return this.hunkType;
    }

    void setHunkType(int hunkType) {
        this.hunkType = hunkType;
    }

    public String[] getLines() {
        return this.fLines;
    }

    public String[] getUnifiedLines() {
        String[] ret = new String[this.fLines.length];
        System.arraycopy(this.fLines, 0, ret, 0, this.fLines.length);
        return ret;
    }

    void setParent(FilePatch2 diff) {
        if (this.fParent == diff) {
            return;
        }
        if (this.fParent != null) {
            this.fParent.remove(this);
        }
        this.fParent = diff;
    }

    public FilePatch2 getParent() {
        return this.fParent;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean tryPatch(PatchConfiguration configuration, List lines, int shift, int fuzz) {
        boolean reverse = configuration.isReversed();
        int pos = this.getStart(reverse) + shift;
        ArrayList<String> contextLines = new ArrayList<String>();
        boolean contextLinesMatched = true;
        boolean precedingLinesChecked = false;
        int i = 0;
        while (i < this.fLines.length) {
            String s = this.fLines[i];
            Assert.isTrue((s.length() > 0 ? 1 : 0) != 0);
            String line = s.substring(1);
            char controlChar = s.charAt(0);
            if (controlChar == ' ') {
                if (pos < 0 || pos >= lines.size()) {
                    return false;
                }
                contextLines.add(line);
                if (this.linesMatch(configuration, line, (String)lines.get(pos))) {
                    ++pos;
                } else {
                    if (fuzz <= 0) return false;
                    contextLinesMatched = false;
                    ++pos;
                }
            } else if (this.isDeletedDelimeter(controlChar, reverse)) {
                if (precedingLinesChecked && !contextLinesMatched && contextLines.size() > 0) {
                    return false;
                }
                if (!(precedingLinesChecked || contextLinesMatched || contextLines.size() < fuzz || this.checkPrecedingContextLines(configuration, lines, fuzz, pos, contextLines))) {
                    return false;
                }
                precedingLinesChecked = true;
                contextLines.clear();
                contextLinesMatched = true;
                if (pos < 0) return false;
                if (pos >= lines.size()) {
                    return false;
                }
                if (!this.linesMatch(configuration, line, (String)lines.get(pos))) return false;
                ++pos;
            } else if (this.isAddedDelimeter(controlChar, reverse)) {
                if (precedingLinesChecked && !contextLinesMatched && contextLines.size() > 0) {
                    return false;
                }
                if (!(precedingLinesChecked || contextLinesMatched || contextLines.size() < fuzz || this.checkPrecedingContextLines(configuration, lines, fuzz, pos, contextLines))) {
                    return false;
                }
                precedingLinesChecked = true;
                contextLines.clear();
                contextLinesMatched = true;
            } else {
                Assert.isTrue((boolean)false, (String)("tryPatch: unknown control character: " + controlChar));
            }
            ++i;
        }
        return contextLinesMatched || fuzz <= 0 || contextLines.size() <= fuzz || this.checkFollowingContextLines(configuration, lines, fuzz, pos, contextLines);
    }

    private boolean checkPrecedingContextLines(PatchConfiguration configuration, List lines, int fuzz, int pos, List contextLines) {
        int j = fuzz;
        while (j < contextLines.size()) {
            if (!this.linesMatch(configuration, (String)contextLines.get(j), (String)lines.get(pos - contextLines.size() + j))) {
                return false;
            }
            ++j;
        }
        return true;
    }

    private boolean checkFollowingContextLines(PatchConfiguration configuration, List lines, int fuzz, int pos, List contextLines) {
        if (!contextLines.isEmpty()) {
            int j = 0;
            while (j < contextLines.size() - fuzz) {
                if (!this.linesMatch(configuration, (String)contextLines.get(j), (String)lines.get(pos - contextLines.size() + j))) {
                    return false;
                }
                ++j;
            }
        }
        return true;
    }

    public int getStart(boolean after) {
        if (after) {
            return this.fNewStart;
        }
        return this.fOldStart;
    }

    public void setStart(int start, boolean after) {
        if (after) {
            this.fNewStart = start;
        } else {
            this.fOldStart = start;
        }
    }

    public int getLength(boolean after) {
        if (after) {
            return this.fNewLength;
        }
        return this.fOldLength;
    }

    private int getShift(boolean reverse) {
        if (reverse) {
            return this.fOldLength - this.fNewLength;
        }
        return this.fNewLength - this.fOldLength;
    }

    int doPatch(PatchConfiguration configuration, List lines, int shift, int fuzz) {
        boolean reverse = configuration.isReversed();
        int pos = this.getStart(reverse) + shift;
        ArrayList<String> contextLines = new ArrayList<String>();
        boolean contextLinesMatched = true;
        boolean precedingLinesChecked = false;
        String lineDelimiter = this.getLineDelimiter(lines);
        int i = 0;
        while (i < this.fLines.length) {
            String s = this.fLines[i];
            Assert.isTrue((s.length() > 0 ? 1 : 0) != 0);
            String line = s.substring(1);
            char controlChar = s.charAt(0);
            if (controlChar == ' ') {
                Assert.isTrue((pos < lines.size() ? 1 : 0) != 0, (String)"doPatch: inconsistency in context");
                contextLines.add(line);
                if (this.linesMatch(configuration, line, (String)lines.get(pos))) {
                    ++pos;
                } else if (fuzz > 0) {
                    contextLinesMatched = false;
                    ++pos;
                } else {
                    Assert.isTrue((boolean)false, (String)"doPatch: context doesn't match");
                }
            } else if (this.isDeletedDelimeter(controlChar, reverse)) {
                if (precedingLinesChecked && !contextLinesMatched && contextLines.size() > 0) {
                    Assert.isTrue((boolean)false, (String)"doPatch: context lines inside hunk don't match");
                }
                if (!(precedingLinesChecked || contextLinesMatched || contextLines.size() < fuzz || this.checkPrecedingContextLines(configuration, lines, fuzz, pos, contextLines))) {
                    Assert.isTrue((boolean)false, (String)"doPatch: preceding context lines don't match, even though fuzz factor has been used");
                }
                precedingLinesChecked = true;
                contextLines.clear();
                contextLinesMatched = true;
                lines.remove(pos);
            } else if (this.isAddedDelimeter(controlChar, reverse)) {
                if (precedingLinesChecked && !contextLinesMatched && contextLines.size() > 0) {
                    Assert.isTrue((boolean)false, (String)"doPatch: context lines inside hunk don't match");
                }
                if (!(precedingLinesChecked || contextLinesMatched || contextLines.size() < fuzz || this.checkPrecedingContextLines(configuration, lines, fuzz, pos, contextLines))) {
                    Assert.isTrue((boolean)false, (String)"doPatch: preceding context lines don't match, even though fuzz factor has been used");
                }
                precedingLinesChecked = true;
                contextLines.clear();
                contextLinesMatched = true;
                if (line.length() > LineReader.length(line)) {
                    line = String.valueOf(line.substring(0, LineReader.length(line))) + lineDelimiter;
                }
                if (this.getLength(reverse) == 0 && pos + 1 < lines.size()) {
                    lines.add(pos + 1, line);
                } else {
                    lines.add(pos, line);
                }
                ++pos;
            } else {
                Assert.isTrue((boolean)false, (String)("doPatch: unknown control character: " + controlChar));
            }
            ++i;
        }
        return this.getShift(reverse);
    }

    private boolean isDeletedDelimeter(char controlChar, boolean reverse) {
        return !reverse && controlChar == '-' || reverse && controlChar == '+';
    }

    private boolean isAddedDelimeter(char controlChar, boolean reverse) {
        return reverse && controlChar == '-' || !reverse && controlChar == '+';
    }

    private boolean linesMatch(PatchConfiguration configuration, String line1, String line2) {
        if (configuration.isIgnoreWhitespace()) {
            return this.stripWhiteSpace(line1).equals(this.stripWhiteSpace(line2));
        }
        if (this.isIgnoreLineDelimiter()) {
            int l2;
            int l1 = LineReader.length(line1);
            if (l1 != (l2 = LineReader.length(line2))) {
                return false;
            }
            return line1.regionMatches(0, line2, 0, l1);
        }
        return line1.equals(line2);
    }

    private boolean isIgnoreLineDelimiter() {
        return true;
    }

    private String getLineDelimiter(List lines) {
        if (lines.size() > 0) {
            String line0 = (String)lines.get(0);
            return line0.substring(LineReader.length(line0));
        }
        if (this.fLines.length > 0) {
            return this.fLines[0].substring(LineReader.length(this.fLines[0]));
        }
        return System.getProperty("line.separator");
    }

    private String stripWhiteSpace(String s) {
        StringBuffer sb = new StringBuffer();
        int l = s.length();
        int i = 0;
        while (i < l) {
            char c = s.charAt(i);
            if (!Character.isWhitespace(c)) {
                sb.append(c);
            }
            ++i;
        }
        return sb.toString();
    }

    public String getContents(boolean isAfterState, boolean reverse) {
        StringBuffer result = new StringBuffer();
        int i = 0;
        while (i < this.fLines.length) {
            String line = this.fLines[i];
            String rest = line.substring(1);
            char c = line.charAt(0);
            if (c == ' ') {
                result.append(rest);
            } else if (this.isDeletedDelimeter(c, reverse) && !isAfterState) {
                result.append(rest);
            } else if (this.isAddedDelimeter(c, reverse) && isAfterState) {
                result.append(rest);
            }
            ++i;
        }
        return result.toString();
    }

    public String getLabel() {
        return this.getDescription();
    }

    public int getStartPosition() {
        return this.getStart(false);
    }

    public InputStream getOriginalContents() {
        String contents = this.getContents(false, false);
        return this.asInputStream(contents);
    }

    public InputStream getPatchedContents() {
        String contents = this.getContents(true, false);
        return this.asInputStream(contents);
    }

    private InputStream asInputStream(String contents) {
        String charSet = this.getCharset();
        return FileDiffResult.asInputStream(contents, charSet);
    }

    void setCharset(String charset) {
        this.charset = charset;
    }

    public String getCharset() {
        return this.charset;
    }
}

