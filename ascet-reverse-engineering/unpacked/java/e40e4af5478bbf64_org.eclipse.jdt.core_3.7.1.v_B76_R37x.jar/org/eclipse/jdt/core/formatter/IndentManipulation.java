/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.DefaultLineTracker
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.text.edits.ReplaceEdit
 */
package org.eclipse.jdt.core.formatter;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DefaultLineTracker;
import org.eclipse.jface.text.IRegion;
import org.eclipse.text.edits.ReplaceEdit;

public final class IndentManipulation {
    private IndentManipulation() {
    }

    public static boolean isIndentChar(char ch) {
        return ScannerHelper.isWhitespace(ch) && !IndentManipulation.isLineDelimiterChar(ch);
    }

    public static boolean isLineDelimiterChar(char ch) {
        return ch == '\n' || ch == '\r';
    }

    public static int measureIndentUnits(CharSequence line, int tabWidth, int indentWidth) {
        if (indentWidth < 0 || tabWidth < 0 || line == null) {
            throw new IllegalArgumentException();
        }
        if (indentWidth == 0) {
            return 0;
        }
        int visualLength = IndentManipulation.measureIndentInSpaces(line, tabWidth);
        return visualLength / indentWidth;
    }

    public static int measureIndentInSpaces(CharSequence line, int tabWidth) {
        if (tabWidth < 0 || line == null) {
            throw new IllegalArgumentException();
        }
        int length = 0;
        int max = line.length();
        int i = 0;
        while (i < max) {
            char ch = line.charAt(i);
            if (ch == '\t') {
                length = IndentManipulation.calculateSpaceEquivalents(tabWidth, length);
            } else if (IndentManipulation.isIndentChar(ch)) {
                ++length;
            } else {
                return length;
            }
            ++i;
        }
        return length;
    }

    public static String extractIndentString(String line, int tabWidth, int indentWidth) {
        if (tabWidth < 0 || indentWidth < 0 || line == null) {
            throw new IllegalArgumentException();
        }
        int size = line.length();
        int end = 0;
        int spaceEquivs = 0;
        int characters = 0;
        int i = 0;
        while (i < size) {
            char c = line.charAt(i);
            if (c == '\t') {
                spaceEquivs = IndentManipulation.calculateSpaceEquivalents(tabWidth, spaceEquivs);
                ++characters;
            } else {
                if (!IndentManipulation.isIndentChar(c)) break;
                ++spaceEquivs;
                ++characters;
            }
            if (spaceEquivs >= indentWidth) {
                end += characters;
                characters = 0;
                spaceEquivs = indentWidth == 0 ? 0 : (spaceEquivs %= indentWidth);
            }
            ++i;
        }
        if (end == 0) {
            return Util.EMPTY_STRING;
        }
        if (end == size) {
            return line;
        }
        return line.substring(0, end);
    }

    public static String trimIndent(String line, int indentUnitsToRemove, int tabWidth, int indentWidth) {
        if (tabWidth < 0 || indentWidth < 0 || line == null) {
            throw new IllegalArgumentException();
        }
        if (indentUnitsToRemove <= 0 || indentWidth == 0) {
            return line;
        }
        int spaceEquivalentsToRemove = indentUnitsToRemove * indentWidth;
        int start = 0;
        int spaceEquivalents = 0;
        int size = line.length();
        String prefix = null;
        int i = 0;
        while (i < size) {
            char c = line.charAt(i);
            if (c == '\t') {
                spaceEquivalents = IndentManipulation.calculateSpaceEquivalents(tabWidth, spaceEquivalents);
            } else if (IndentManipulation.isIndentChar(c)) {
                ++spaceEquivalents;
            } else {
                start = i;
                break;
            }
            if (spaceEquivalents == spaceEquivalentsToRemove) {
                start = i + 1;
                break;
            }
            if (spaceEquivalents > spaceEquivalentsToRemove) {
                start = i + 1;
                char[] missing = new char[spaceEquivalents - spaceEquivalentsToRemove];
                Arrays.fill(missing, ' ');
                prefix = new String(missing);
                break;
            }
            ++i;
        }
        String trimmed = start == size ? Util.EMPTY_STRING : line.substring(start);
        if (prefix == null) {
            return trimmed;
        }
        return String.valueOf(prefix) + trimmed;
    }

    public static String changeIndent(String code, int indentUnitsToRemove, int tabWidth, int indentWidth, String newIndentString, String lineDelim) {
        if (tabWidth < 0 || indentWidth < 0 || code == null || indentUnitsToRemove < 0 || newIndentString == null || lineDelim == null) {
            throw new IllegalArgumentException();
        }
        try {
            DefaultLineTracker tracker = new DefaultLineTracker();
            tracker.set(code);
            int nLines = tracker.getNumberOfLines();
            if (nLines == 1) {
                return code;
            }
            StringBuffer buf = new StringBuffer();
            int i = 0;
            while (i < nLines) {
                IRegion region = tracker.getLineInformation(i);
                int start = region.getOffset();
                int end = start + region.getLength();
                String line = code.substring(start, end);
                if (i == 0) {
                    buf.append(line);
                } else {
                    buf.append(lineDelim);
                    buf.append(newIndentString);
                    if (indentWidth != 0) {
                        buf.append(IndentManipulation.trimIndent(line, indentUnitsToRemove, tabWidth, indentWidth));
                    } else {
                        buf.append(line);
                    }
                }
                ++i;
            }
            return buf.toString();
        }
        catch (BadLocationException badLocationException) {
            return code;
        }
    }

    public static ReplaceEdit[] getChangeIndentEdits(String source, int indentUnitsToRemove, int tabWidth, int indentWidth, String newIndentString) {
        if (tabWidth < 0 || indentWidth < 0 || source == null || indentUnitsToRemove < 0 || newIndentString == null) {
            throw new IllegalArgumentException();
        }
        ArrayList<ReplaceEdit> result = new ArrayList<ReplaceEdit>();
        try {
            DefaultLineTracker tracker = new DefaultLineTracker();
            tracker.set(source);
            int nLines = tracker.getNumberOfLines();
            if (nLines == 1) {
                return result.toArray(new ReplaceEdit[result.size()]);
            }
            int i = 1;
            while (i < nLines) {
                IRegion region = tracker.getLineInformation(i);
                int offset = region.getOffset();
                String line = source.substring(offset, offset + region.getLength());
                int length = IndentManipulation.indexOfIndent(line, indentUnitsToRemove, tabWidth, indentWidth);
                if (length >= 0) {
                    result.add(new ReplaceEdit(offset, length, newIndentString));
                } else {
                    length = IndentManipulation.measureIndentUnits(line, tabWidth, indentWidth);
                    result.add(new ReplaceEdit(offset, length, ""));
                }
                ++i;
            }
        }
        catch (BadLocationException badLocationException) {}
        return result.toArray(new ReplaceEdit[result.size()]);
    }

    private static int indexOfIndent(CharSequence line, int numberOfIndentUnits, int tabWidth, int indentWidth) {
        int spaceEquivalents = numberOfIndentUnits * indentWidth;
        int size = line.length();
        int result = -1;
        int blanks = 0;
        int i = 0;
        while (i < size && blanks < spaceEquivalents) {
            char c = line.charAt(i);
            if (c == '\t') {
                blanks = IndentManipulation.calculateSpaceEquivalents(tabWidth, blanks);
            } else {
                if (!IndentManipulation.isIndentChar(c)) break;
                ++blanks;
            }
            result = i++;
        }
        if (blanks < spaceEquivalents) {
            return -1;
        }
        return result + 1;
    }

    private static int calculateSpaceEquivalents(int tabWidth, int spaceEquivalents) {
        if (tabWidth == 0) {
            return spaceEquivalents;
        }
        int remainder = spaceEquivalents % tabWidth;
        return spaceEquivalents += tabWidth - remainder;
    }

    public static int getTabWidth(Map options) {
        if (options == null) {
            throw new IllegalArgumentException();
        }
        return IndentManipulation.getIntValue(options, "org.eclipse.jdt.core.formatter.tabulation.size", 4);
    }

    public static int getIndentWidth(Map options) {
        if (options == null) {
            throw new IllegalArgumentException();
        }
        int tabWidth = IndentManipulation.getTabWidth(options);
        boolean isMixedMode = "mixed".equals(options.get("org.eclipse.jdt.core.formatter.tabulation.char"));
        if (isMixedMode) {
            return IndentManipulation.getIntValue(options, "org.eclipse.jdt.core.formatter.indentation.size", tabWidth);
        }
        return tabWidth;
    }

    private static int getIntValue(Map options, String key, int def) {
        try {
            return Integer.parseInt((String)options.get(key));
        }
        catch (NumberFormatException numberFormatException) {
            return def;
        }
    }
}

