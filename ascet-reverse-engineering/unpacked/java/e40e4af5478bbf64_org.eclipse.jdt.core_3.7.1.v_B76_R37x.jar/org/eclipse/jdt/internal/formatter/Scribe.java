/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.DefaultLineTracker
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Region
 *  org.eclipse.text.edits.MalformedTreeException
 *  org.eclipse.text.edits.MultiTextEdit
 *  org.eclipse.text.edits.ReplaceEdit
 *  org.eclipse.text.edits.TextEdit
 */
package org.eclipse.jdt.internal.formatter;

import java.io.IOException;
import java.io.StringReader;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Map;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.util.CodeSnippetParsingUtil;
import org.eclipse.jdt.internal.core.util.RecordedParsingInformation;
import org.eclipse.jdt.internal.formatter.AbortFormatting;
import org.eclipse.jdt.internal.formatter.CodeFormatterVisitor;
import org.eclipse.jdt.internal.formatter.DefaultCodeFormatterOptions;
import org.eclipse.jdt.internal.formatter.FormatJavadoc;
import org.eclipse.jdt.internal.formatter.FormatJavadocBlock;
import org.eclipse.jdt.internal.formatter.FormatJavadocNode;
import org.eclipse.jdt.internal.formatter.FormatJavadocReference;
import org.eclipse.jdt.internal.formatter.FormatJavadocText;
import org.eclipse.jdt.internal.formatter.FormatterCommentParser;
import org.eclipse.jdt.internal.formatter.Location;
import org.eclipse.jdt.internal.formatter.OptimizedReplaceEdit;
import org.eclipse.jdt.internal.formatter.align.Alignment;
import org.eclipse.jdt.internal.formatter.align.AlignmentException;
import org.eclipse.jdt.internal.formatter.comment.CommentFormatterUtil;
import org.eclipse.jdt.internal.formatter.comment.HTMLEntity2JavaReader;
import org.eclipse.jdt.internal.formatter.comment.IJavaDocTagConstants;
import org.eclipse.jdt.internal.formatter.comment.Java2HTMLEntityReader;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DefaultLineTracker;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Region;
import org.eclipse.text.edits.MalformedTreeException;
import org.eclipse.text.edits.MultiTextEdit;
import org.eclipse.text.edits.ReplaceEdit;
import org.eclipse.text.edits.TextEdit;

public class Scribe
implements IJavaDocTagConstants {
    private static final int INITIAL_SIZE = 100;
    private boolean checkLineWrapping;
    public int column;
    private int[][] commentPositions;
    public Alignment currentAlignment;
    public int currentToken;
    private OptimizedReplaceEdit[] edits;
    public int editsIndex;
    public CodeFormatterVisitor formatter;
    public int indentationLevel;
    public int lastNumberOfNewLines;
    private boolean preserveLineBreakIndentation = false;
    public int line;
    private int[] lineEnds;
    private int maxLines;
    public Alignment memberAlignment;
    public boolean needSpace = false;
    private final String lineSeparator;
    private final String lineSeparatorAndSpace;
    private final char firstLS;
    private final int lsLength;
    public int nlsTagCounter;
    public int pageWidth;
    public boolean pendingSpace = false;
    public Scanner scanner;
    public int scannerEndPosition;
    public int tabLength;
    public int indentationSize;
    private final IRegion[] regions;
    private IRegion[] adaptedRegions;
    public int tabChar;
    public int numberOfIndentations;
    private boolean useTabsOnlyForLeadingIndents;
    private final boolean indentEmptyLines;
    int blank_lines_between_import_groups = -1;
    public static final int DO_NOT_PRESERVE_EMPTY_LINES = -1;
    public static final int PRESERVE_EMPTY_LINES_KEEP_LAST_NEW_LINES_INDENTATION = 1;
    public static final int PRESERVE_EMPTY_LINES_IN_FORMAT_LEFT_CURLY_BRACE = 2;
    public static final int PRESERVE_EMPTY_LINES_IN_STRING_LITERAL_CONCATENATION = 3;
    public static final int PRESERVE_EMPTY_LINES_IN_CLOSING_ARRAY_INITIALIZER = 4;
    public static final int PRESERVE_EMPTY_LINES_IN_FORMAT_OPENING_BRACE = 5;
    public static final int PRESERVE_EMPTY_LINES_IN_BINARY_EXPRESSION = 6;
    public static final int PRESERVE_EMPTY_LINES_IN_EQUALITY_EXPRESSION = 7;
    public static final int PRESERVE_EMPTY_LINES_BEFORE_ELSE = 8;
    public static final int PRESERVE_EMPTY_LINES_IN_SWITCH_CASE = 9;
    public static final int PRESERVE_EMPTY_LINES_AT_END_OF_METHOD_DECLARATION = 10;
    public static final int PRESERVE_EMPTY_LINES_AT_END_OF_BLOCK = 11;
    static final int PRESERVE_EMPTY_LINES_DO_NOT_USE_ANY_INDENTATION = -1;
    static final int PRESERVE_EMPTY_LINES_USE_CURRENT_INDENTATION = 0;
    static final int PRESERVE_EMPTY_LINES_USE_TEMPORARY_INDENTATION = 1;
    boolean editsEnabled;
    boolean useTags;
    int tagsKind;
    private static final int INCLUDE_BLOCK_COMMENTS = 4128;
    private static final int INCLUDE_JAVA_DOC = 4160;
    private static final int INCLUDE_LINE_COMMENTS = 4112;
    private static final int SKIP_FIRST_WHITESPACE_TOKEN = -2;
    private static final int INVALID_TOKEN = 2000;
    static final int NO_TRAILING_COMMENT = 0;
    static final int BASIC_TRAILING_COMMENT = 256;
    static final int COMPLEX_TRAILING_COMMENT = 512;
    static final int IMPORT_TRAILING_COMMENT = 513;
    static final int UNMODIFIABLE_TRAILING_COMMENT = 1024;
    private int formatComments = 0;
    private int headerEndPosition = -1;
    String commentIndentation;
    final LineComment lastLineComment = new LineComment();
    private FormatterCommentParser formatterCommentParser;
    OptimizedReplaceEdit previousDisabledEdit;
    private char[] disablingTag;
    private char[] enablingTag;
    private String[] newEmptyLines = new String[10];
    private static String[] COMMENT_INDENTATIONS = new String[20];
    private final StringBuffer tempBuffer = new StringBuffer();
    private final StringBuffer blockCommentBuffer = new StringBuffer();
    private final StringBuffer blockCommentTokensBuffer = new StringBuffer();
    private final StringBuffer codeSnippetBuffer = new StringBuffer();
    private final StringBuffer javadocBlockRefBuffer = new StringBuffer();
    private final StringBuffer javadocGapLinesBuffer = new StringBuffer();
    private StringBuffer[] javadocHtmlTagBuffers = new StringBuffer[5];
    private final StringBuffer javadocTextBuffer = new StringBuffer();
    private final StringBuffer javadocTokensBuffer = new StringBuffer();

    Scribe(CodeFormatterVisitor formatter, long sourceLevel, IRegion[] regions, CodeSnippetParsingUtil codeSnippetParsingUtil, boolean includeComments) {
        RecordedParsingInformation information;
        this.initializeScanner(sourceLevel, formatter.preferences);
        this.formatter = formatter;
        this.pageWidth = formatter.preferences.page_width;
        this.tabLength = formatter.preferences.tab_size;
        this.indentationLevel = 0;
        this.numberOfIndentations = 0;
        this.useTabsOnlyForLeadingIndents = formatter.preferences.use_tabs_only_for_leading_indentations;
        this.indentEmptyLines = formatter.preferences.indent_empty_lines;
        this.tabChar = formatter.preferences.tab_char;
        this.indentationSize = this.tabChar == 4 ? formatter.preferences.indentation_size : this.tabLength;
        this.lineSeparator = formatter.preferences.line_separator;
        this.lineSeparatorAndSpace = String.valueOf(this.lineSeparator) + ' ';
        this.firstLS = this.lineSeparator.charAt(0);
        this.lsLength = this.lineSeparator.length();
        this.indentationLevel = formatter.preferences.initial_indentation_level * this.indentationSize;
        this.regions = regions;
        if (codeSnippetParsingUtil != null && (information = codeSnippetParsingUtil.recordedParsingInformation) != null) {
            this.lineEnds = information.lineEnds;
            this.commentPositions = information.commentPositions;
        }
        if (formatter.preferences.comment_format_line_comment) {
            this.formatComments |= 0x10;
        }
        if (formatter.preferences.comment_format_block_comment) {
            this.formatComments |= 0x20;
        }
        if (formatter.preferences.comment_format_javadoc_comment) {
            this.formatComments |= 0x40;
        }
        if (includeComments) {
            this.formatComments |= 0x1000;
        }
        this.reset();
    }

    private void adaptRegions() {
        int max = this.regions.length;
        if (max == 1 && this.regions[0].getOffset() == 0 && this.regions[0].getLength() == this.scannerEndPosition) {
            this.adaptedRegions = this.regions;
            return;
        }
        this.adaptedRegions = new IRegion[max];
        int commentIndex = 0;
        int i = 0;
        while (i < max) {
            IRegion aRegion = this.regions[i];
            int offset = aRegion.getOffset();
            int length = aRegion.getLength();
            int index = this.getCommentIndex(commentIndex, offset);
            int adaptedOffset = offset;
            int adaptedLength = length;
            if (index >= 0 && (adaptedOffset = this.commentPositions[index][0]) >= 0) {
                adaptedLength = length + offset - adaptedOffset;
                commentIndex = index;
            }
            if ((index = this.getCommentIndex(commentIndex, offset + length - 1)) >= 0 && this.commentPositions[index][0] >= 0) {
                int commentEnd = this.commentPositions[index][1];
                if (commentEnd < 0) {
                    commentEnd = -commentEnd;
                }
                adaptedLength = commentEnd - adaptedOffset;
                commentIndex = index;
            }
            this.adaptedRegions[i] = adaptedLength != length ? new Region(adaptedOffset, adaptedLength) : aRegion;
            ++i;
        }
    }

    private void adaptEdits() {
        int max = this.regions.length;
        if (max == 1 && this.regions[0].getOffset() == 0 && this.regions[0].getLength() == this.scannerEndPosition) {
            return;
        }
        OptimizedReplaceEdit[] sortedEdits = new OptimizedReplaceEdit[this.editsIndex];
        System.arraycopy(this.edits, 0, sortedEdits, 0, this.editsIndex);
        Arrays.sort(sortedEdits, new Comparator(){

            public int compare(Object o1, Object o2) {
                OptimizedReplaceEdit edit1 = (OptimizedReplaceEdit)o1;
                OptimizedReplaceEdit edit2 = (OptimizedReplaceEdit)o2;
                return edit1.offset - edit2.offset;
            }
        });
        int currentEdit = -1;
        int i = 0;
        while (i < max) {
            int length;
            IRegion region = this.adaptedRegions[i];
            int offset = region.getOffset();
            int index = this.adaptEdit(sortedEdits, currentEdit, offset, offset + (length = region.getLength()));
            if (index != -1) {
                currentEdit = index;
            }
            ++i;
        }
        if (currentEdit != -1) {
            int length = sortedEdits.length;
            int e = currentEdit;
            while (e < length) {
                sortedEdits[e].offset = -1;
                ++e;
            }
        }
    }

    private int adaptEdit(OptimizedReplaceEdit[] sortedEdits, int start, int regionStart, int regionEnd) {
        int validIndex;
        int top;
        int initialStart;
        int bottom = initialStart = start == -1 ? 0 : start;
        int topEnd = top = sortedEdits.length - 1;
        int i = 0;
        OptimizedReplaceEdit edit = null;
        int overlapIndex = -1;
        while (bottom <= top) {
            i = bottom + (top - bottom) / 2;
            edit = sortedEdits[i];
            int editStart = edit.offset;
            int editEnd = editStart + edit.length;
            if (editStart > regionStart) {
                top = i - 1;
                if (editStart <= regionEnd) continue;
                topEnd = top;
                continue;
            }
            if (editEnd < regionStart) {
                bottom = i + 1;
                continue;
            }
            int linesOutside = 0;
            StringBuffer spacesOutside = new StringBuffer();
            this.scanner.resetTo(editStart, editEnd - 1);
            while (this.scanner.currentPosition < regionStart && !this.scanner.atEnd()) {
                char ch = (char)this.scanner.getNextChar();
                switch (ch) {
                    case '\n': {
                        ++linesOutside;
                        spacesOutside.setLength(0);
                        break;
                    }
                    case '\r': {
                        break;
                    }
                    default: {
                        spacesOutside.append(ch);
                    }
                }
            }
            edit.offset = regionStart;
            int editLength = edit.length;
            edit.length -= edit.offset - editStart;
            int length = edit.replacement.length();
            if (length > 0) {
                int linesReplaced = 0;
                int idx = 0;
                while (idx < length) {
                    if (edit.replacement.charAt(idx) == '\n') {
                        ++linesReplaced;
                    }
                    ++idx;
                }
                if (editLength > 0 && edit.length == 0 && editEnd == regionStart && linesReplaced == 0 && linesOutside == 0) {
                    edit.offset = -1;
                } else if (linesReplaced > 0) {
                    int linesCount;
                    int n = linesCount = linesOutside >= linesReplaced ? linesReplaced : linesOutside;
                    if (linesCount > 0) {
                        int idx2 = 0;
                        block14: while (idx2 < length) {
                            char ch = edit.replacement.charAt(idx2);
                            switch (ch) {
                                case '\n': {
                                    if (--linesCount != 0) break;
                                    ++idx2;
                                    break block14;
                                }
                                case '\t': 
                                case '\r': 
                                case ' ': {
                                    break;
                                }
                                default: {
                                    break block14;
                                }
                            }
                            ++idx2;
                        }
                        int spacesOutsideLength = spacesOutside.length();
                        int replacementStart = idx2;
                        int o = 0;
                        int r = 0;
                        while (o < spacesOutsideLength && r < length - idx2) {
                            char och;
                            char rch = edit.replacement.charAt(idx2 + r);
                            if (rch == (och = spacesOutside.charAt(o))) {
                                ++replacementStart;
                                ++r;
                            } else {
                                if (rch != '\t' || this.tabLength <= 0 || och != ' ') break;
                                if ((o + 1) % this.tabLength == 0) {
                                    ++replacementStart;
                                    ++r;
                                }
                            }
                            ++o;
                        }
                        if (replacementStart > length || replacementStart == length && spacesOutsideLength > 0) {
                            edit.offset = -1;
                        } else {
                            edit.replacement = spacesOutsideLength == 0 && replacementStart == length ? "" : edit.replacement.substring(replacementStart);
                        }
                    }
                }
            }
            overlapIndex = i;
            break;
        }
        int n = validIndex = overlapIndex != -1 ? overlapIndex : bottom;
        if (overlapIndex != -1) {
            bottom = overlapIndex;
        }
        while (bottom <= topEnd) {
            char ch;
            i = bottom + (topEnd - bottom) / 2;
            edit = sortedEdits[i];
            int editStart = edit.offset;
            int editEnd = editStart + edit.length;
            if (regionEnd < editStart) {
                topEnd = i - 1;
                continue;
            }
            if (regionEnd == editStart) {
                topEnd = i - 1;
                if (edit.length != 0) break;
                int nrLength = 0;
                int rLength = edit.replacement.length();
                if (nrLength < rLength) {
                    ch = edit.replacement.charAt(nrLength);
                    block17: while (nrLength < rLength) {
                        switch (ch) {
                            case '\t': 
                            case ' ': {
                                ++nrLength;
                                break;
                            }
                            default: {
                                break block17;
                            }
                        }
                    }
                }
                if (nrLength <= 0) break;
                ++topEnd;
                if (nrLength >= rLength) break;
                edit.replacement = edit.replacement.substring(0, nrLength);
                break;
            }
            if (editEnd <= regionEnd) {
                bottom = i + 1;
                continue;
            }
            int linesOutside = 0;
            this.scanner.resetTo(editStart, editEnd - 1);
            while (!this.scanner.atEnd()) {
                boolean after = this.scanner.currentPosition >= regionEnd;
                ch = (char)this.scanner.getNextChar();
                if (ch != '\n' || !after) continue;
                ++linesOutside;
            }
            int length = edit.replacement.length();
            if (length > 0) {
                int linesReplaced = 0;
                int idx = 0;
                while (idx < length) {
                    if (edit.replacement.charAt(idx) == '\n') {
                        ++linesReplaced;
                    }
                    ++idx;
                }
                if (linesReplaced == 0) {
                    edit.replacement = "";
                } else {
                    int linesCount = linesReplaced > linesOutside ? linesReplaced - linesOutside : 0;
                    edit.replacement = linesCount == 0 ? "" : this.getNewLineString(linesCount);
                }
            }
            edit.length = regionEnd - editStart;
            topEnd = i;
            break;
        }
        int e = initialStart;
        while (e < validIndex) {
            sortedEdits[e].offset = -1;
            ++e;
        }
        return topEnd + 1;
    }

    private final void addDeleteEdit(int start, int end) {
        if (this.edits.length == this.editsIndex) {
            this.resize();
        }
        this.addOptimizedReplaceEdit(start, end - start + 1, Util.EMPTY_STRING);
    }

    public final void addInsertEdit(int insertPosition, String insertedString) {
        if (this.edits.length == this.editsIndex) {
            this.resize();
        }
        this.addOptimizedReplaceEdit(insertPosition, 0, insertedString);
    }

    private final void addOptimizedReplaceEdit(int offset, int length, String replacement) {
        if (!this.editsEnabled) {
            if (this.previousDisabledEdit != null && this.previousDisabledEdit.offset == offset) {
                replacement = this.previousDisabledEdit.replacement;
            }
            this.previousDisabledEdit = null;
            if (replacement.indexOf(this.lineSeparator) >= 0 && (length == 0 || this.printNewLinesCharacters(offset, length))) {
                this.previousDisabledEdit = new OptimizedReplaceEdit(offset, length, replacement);
            }
            return;
        }
        if (this.editsIndex > 0) {
            OptimizedReplaceEdit previous = this.edits[this.editsIndex - 1];
            int previousOffset = previous.offset;
            int previousLength = previous.length;
            int endOffsetOfPreviousEdit = previousOffset + previousLength;
            int replacementLength = replacement.length();
            String previousReplacement = previous.replacement;
            int previousReplacementLength = previousReplacement.length();
            if (previousOffset == offset && previousLength == length && (replacementLength == 0 || previousReplacementLength == 0)) {
                if (this.currentAlignment != null) {
                    Location location = this.currentAlignment.location;
                    if (location.editsIndex == this.editsIndex) {
                        --location.editsIndex;
                        location.textEdit = previous;
                    }
                }
                --this.editsIndex;
                return;
            }
            if (endOffsetOfPreviousEdit == offset) {
                if (length != 0) {
                    if (replacementLength != 0) {
                        this.edits[this.editsIndex - 1] = new OptimizedReplaceEdit(previousOffset, previousLength + length, String.valueOf(previousReplacement) + replacement);
                    } else if (previousLength + length == previousReplacementLength) {
                        boolean canBeRemoved = true;
                        int i = previousOffset;
                        while (i < previousOffset + previousReplacementLength) {
                            if (this.scanner.source[i] != previousReplacement.charAt(i - previousOffset)) {
                                this.edits[this.editsIndex - 1] = new OptimizedReplaceEdit(previousOffset, previousReplacementLength, previousReplacement);
                                canBeRemoved = false;
                                break;
                            }
                            ++i;
                        }
                        if (canBeRemoved) {
                            if (this.currentAlignment != null) {
                                Location location = this.currentAlignment.location;
                                if (location.editsIndex == this.editsIndex) {
                                    --location.editsIndex;
                                    location.textEdit = previous;
                                }
                            }
                            --this.editsIndex;
                        }
                    } else {
                        this.edits[this.editsIndex - 1] = new OptimizedReplaceEdit(previousOffset, previousLength + length, previousReplacement);
                    }
                } else if (replacementLength != 0) {
                    this.edits[this.editsIndex - 1] = new OptimizedReplaceEdit(previousOffset, previousLength, String.valueOf(previousReplacement) + replacement);
                }
            } else if (offset + length == previousOffset && previousLength + length == replacementLength + previousReplacementLength) {
                boolean canBeRemoved = true;
                String totalReplacement = String.valueOf(replacement) + previousReplacement;
                int i = 0;
                while (i < previousLength + length) {
                    if (this.scanner.source[i + offset] != totalReplacement.charAt(i)) {
                        this.edits[this.editsIndex - 1] = new OptimizedReplaceEdit(offset, previousLength + length, totalReplacement);
                        canBeRemoved = false;
                        break;
                    }
                    ++i;
                }
                if (canBeRemoved) {
                    if (this.currentAlignment != null) {
                        Location location = this.currentAlignment.location;
                        if (location.editsIndex == this.editsIndex) {
                            --location.editsIndex;
                            location.textEdit = previous;
                        }
                    }
                    --this.editsIndex;
                }
            } else {
                this.edits[this.editsIndex++] = new OptimizedReplaceEdit(offset, length, replacement);
            }
        } else {
            this.edits[this.editsIndex++] = new OptimizedReplaceEdit(offset, length, replacement);
        }
    }

    public final void addReplaceEdit(int start, int end, String replacement) {
        if (this.edits.length == this.editsIndex) {
            this.resize();
        }
        this.addOptimizedReplaceEdit(start, end - start + 1, replacement);
    }

    public void alignFragment(Alignment alignment, int fragmentIndex) {
        alignment.fragmentIndex = fragmentIndex;
        alignment.checkColumn();
        alignment.performFragmentEffect();
    }

    public void checkNLSTag(int sourceStart) {
        if (this.hasNLSTag(sourceStart)) {
            ++this.nlsTagCounter;
        }
    }

    /*
     * Unable to fully structure code
     */
    private int consumeInvalidToken(int end) {
        this.scanner.resetTo(this.scanner.startPosition, end);
        if (this.scanner.currentCharacter == '\\') {
            this.scanner.currentPosition = this.scanner.startPosition + 1;
        }
        previousPosition = this.scanner.currentPosition;
        ch = (char)this.scanner.getNextChar();
        if (!this.scanner.atEnd()) ** GOTO lbl10
        return 2000;
lbl-1000:
        // 1 sources

        {
            previousPosition = this.scanner.currentPosition;
            ch = (char)this.scanner.getNextChar();
lbl10:
            // 2 sources

            ** while (!this.scanner.atEnd() && ch != '*' && !ScannerHelper.isWhitespace((char)ch))
        }
lbl11:
        // 1 sources

        this.scanner.currentPosition = previousPosition;
        return 2000;
    }

    public Alignment createAlignment(int kind, int mode, int count, int sourceRestart) {
        return this.createAlignment(kind, mode, 2, count, sourceRestart);
    }

    public Alignment createAlignment(int kind, int mode, int tieBreakRule, int count, int sourceRestart) {
        return this.createAlignment(kind, mode, tieBreakRule, count, sourceRestart, this.formatter.preferences.continuation_indentation, false);
    }

    public Alignment createAlignment(int kind, int mode, int count, int sourceRestart, int continuationIndent, boolean adjust) {
        return this.createAlignment(kind, mode, 2, count, sourceRestart, continuationIndent, adjust);
    }

    public Alignment createAlignment(int kind, int mode, int tieBreakRule, int count, int sourceRestart, int continuationIndent, boolean adjust) {
        Alignment alignment = new Alignment(kind, mode, tieBreakRule, this, count, sourceRestart, continuationIndent);
        if (this.currentAlignment == null && this.formatter.expressionsDepth >= 0 || this.currentAlignment != null && this.currentAlignment.kind == 5 && (this.formatter.expressionsPos & 3L) == 3L) {
            switch (kind) {
                case 9: 
                case 15: 
                case 16: {
                    if (this.formatter.lastBinaryExpressionAlignmentBreakIndentation != alignment.breakIndentationLevel) break;
                    alignment.breakIndentationLevel += this.indentationSize;
                    alignment.shiftBreakIndentationLevel += this.indentationSize;
                    this.formatter.lastBinaryExpressionAlignmentBreakIndentation = 0;
                }
            }
        }
        if (adjust && this.memberAlignment != null) {
            Alignment current = this.memberAlignment;
            while (current.enclosing != null) {
                current = current.enclosing;
            }
            if ((current.mode & 0x100) != 0) {
                int indentSize = this.indentationSize;
                switch (current.chunkKind) {
                    case 2: 
                    case 3: {
                        alignment.breakIndentationLevel = (mode & 4) != 0 ? this.indentationLevel + indentSize : this.indentationLevel + continuationIndent * indentSize;
                        alignment.update();
                        break;
                    }
                    case 1: {
                        alignment.breakIndentationLevel = (mode & 4) != 0 ? current.originalIndentationLevel + indentSize : current.originalIndentationLevel + continuationIndent * indentSize;
                        alignment.update();
                    }
                }
            } else {
                block7 : switch (current.mode & 0x70) {
                    case 16: 
                    case 32: 
                    case 48: 
                    case 64: 
                    case 80: {
                        int indentSize = this.indentationSize;
                        switch (current.chunkKind) {
                            case 2: 
                            case 3: {
                                alignment.breakIndentationLevel = (mode & 4) != 0 ? this.indentationLevel + indentSize : this.indentationLevel + continuationIndent * indentSize;
                                alignment.update();
                                break block7;
                            }
                            case 1: {
                                alignment.breakIndentationLevel = (mode & 4) != 0 ? current.originalIndentationLevel + indentSize : current.originalIndentationLevel + continuationIndent * indentSize;
                                alignment.update();
                            }
                        }
                    }
                }
            }
        }
        return alignment;
    }

    public Alignment createMemberAlignment(int kind, int mode, int count, int sourceRestart) {
        Alignment mAlignment = this.createAlignment(kind, mode, 2, count, sourceRestart);
        mAlignment.breakIndentationLevel = this.indentationLevel;
        return mAlignment;
    }

    public void enterAlignment(Alignment alignment) {
        alignment.enclosing = this.currentAlignment;
        alignment.location.lastLocalDeclarationSourceStart = this.formatter.lastLocalDeclarationSourceStart;
        this.currentAlignment = alignment;
    }

    public void enterMemberAlignment(Alignment alignment) {
        alignment.enclosing = this.memberAlignment;
        alignment.location.lastLocalDeclarationSourceStart = this.formatter.lastLocalDeclarationSourceStart;
        this.memberAlignment = alignment;
    }

    public void exitAlignment(Alignment alignment, boolean discardAlignment) {
        Alignment current = this.currentAlignment;
        while (current != null) {
            if (current == alignment) break;
            current = current.enclosing;
        }
        if (current == null) {
            throw new AbortFormatting("could not find matching alignment: " + alignment);
        }
        this.indentationLevel = alignment.location.outputIndentationLevel;
        this.numberOfIndentations = alignment.location.numberOfIndentations;
        this.formatter.lastLocalDeclarationSourceStart = alignment.location.lastLocalDeclarationSourceStart;
        if (discardAlignment) {
            this.currentAlignment = alignment.enclosing;
            if (this.currentAlignment == null) {
                this.formatter.lastBinaryExpressionAlignmentBreakIndentation = 0;
            }
        }
    }

    public void exitMemberAlignment(Alignment alignment) {
        Alignment current = this.memberAlignment;
        while (current != null) {
            if (current == alignment) break;
            current = current.enclosing;
        }
        if (current == null) {
            throw new AbortFormatting("could not find matching alignment: " + alignment);
        }
        this.indentationLevel = current.location.outputIndentationLevel;
        this.numberOfIndentations = current.location.numberOfIndentations;
        this.formatter.lastLocalDeclarationSourceStart = alignment.location.lastLocalDeclarationSourceStart;
        this.memberAlignment = current.enclosing;
    }

    public int getColumnIndentationLevel() {
        return this.column - 1;
    }

    public final int getCommentIndex(int position) {
        if (this.commentPositions == null) {
            return -1;
        }
        int length = this.commentPositions.length;
        if (length == 0) {
            return -1;
        }
        int g = 0;
        int d = length - 1;
        int m = 0;
        while (g <= d) {
            m = g + (d - g) / 2;
            int bound = this.commentPositions[m][1];
            if (bound < 0) {
                bound = -bound;
            }
            if (bound < position) {
                g = m + 1;
                continue;
            }
            if (bound > position) {
                d = m - 1;
                continue;
            }
            return m;
        }
        return -(g + 1);
    }

    private int getCommentIndex(int start, int position) {
        int commentsLength;
        int n = commentsLength = this.commentPositions == null ? 0 : this.commentPositions.length;
        if (commentsLength == 0) {
            return -1;
        }
        if (position == 0) {
            if (commentsLength > 0 && this.commentPositions[0][0] == 0) {
                return 0;
            }
            return -1;
        }
        int bottom = start;
        int top = commentsLength - 1;
        int i = 0;
        int[] comment = null;
        while (bottom <= top) {
            i = bottom + (top - bottom) / 2;
            comment = this.commentPositions[i];
            int commentStart = comment[0];
            if (commentStart < 0) {
                commentStart = -commentStart;
            }
            if (position < commentStart) {
                top = i - 1;
                continue;
            }
            int commentEnd = comment[1];
            if (commentEnd < 0) {
                commentEnd = -commentEnd;
            }
            if (position >= commentEnd) {
                bottom = i + 1;
                continue;
            }
            return i;
        }
        return -1;
    }

    private int getCurrentCommentIndentation(int start) {
        int linePtr = -Arrays.binarySearch(this.lineEnds, start);
        int indentation = 0;
        int beginningOfLine = this.getLineEnd(linePtr - 1) + 1;
        if (beginningOfLine == -1) {
            beginningOfLine = 0;
        }
        int currentStartPosition = start;
        char[] source = this.scanner.source;
        while (beginningOfLine > currentStartPosition) {
            if (linePtr > 0) {
                beginningOfLine = this.getLineEnd(--linePtr) + 1;
                continue;
            }
            beginningOfLine = 0;
            break;
        }
        int i = beginningOfLine;
        while (i < currentStartPosition) {
            char currentCharacter = source[i];
            switch (currentCharacter) {
                case '\t': {
                    if (this.tabLength == 0) break;
                    int reminder = indentation % this.tabLength;
                    if (reminder == 0) {
                        indentation += this.tabLength;
                        break;
                    }
                    indentation = (indentation / this.tabLength + 1) * this.tabLength;
                    break;
                }
                case '\n': 
                case '\r': {
                    indentation = 0;
                    break;
                }
                default: {
                    ++indentation;
                }
            }
            ++i;
        }
        return indentation;
    }

    int getCurrentIndentation(char[] whitespaces, int offset) {
        if (whitespaces == null) {
            return offset;
        }
        int length = whitespaces.length;
        if (this.tabLength == 0) {
            return length;
        }
        int indentation = offset;
        int i = 0;
        while (i < length) {
            char ch = whitespaces[i];
            switch (ch) {
                case '\t': {
                    int reminder = indentation % this.tabLength;
                    if (reminder == 0) {
                        indentation += this.tabLength;
                        break;
                    }
                    indentation = (indentation / this.tabLength + 1) * this.tabLength;
                    break;
                }
                case '\n': 
                case '\r': {
                    indentation = 0;
                    break;
                }
                default: {
                    ++indentation;
                }
            }
            ++i;
        }
        return indentation;
    }

    int getCurrentIndentation(int start) {
        int linePtr = Arrays.binarySearch(this.lineEnds, start);
        if (linePtr < 0) {
            linePtr = -linePtr - 1;
        }
        int indentation = 0;
        int beginningOfLine = this.getLineEnd(linePtr) + 1;
        if (beginningOfLine == -1) {
            beginningOfLine = 0;
        }
        char[] source = this.scanner.source;
        int i = beginningOfLine;
        while (i < start) {
            char currentCharacter = source[i];
            switch (currentCharacter) {
                case '\t': {
                    if (this.tabLength == 0) break;
                    int reminder = indentation % this.tabLength;
                    if (reminder == 0) {
                        indentation += this.tabLength;
                        break;
                    }
                    indentation = (indentation / this.tabLength + 1) * this.tabLength;
                    break;
                }
                case '\n': 
                case '\r': {
                    indentation = 0;
                    break;
                }
                case ' ': {
                    ++indentation;
                    break;
                }
                default: {
                    return indentation;
                }
            }
            ++i;
        }
        return indentation;
    }

    public String getEmptyLines(int linesNumber) {
        String emptyLines;
        if (this.nlsTagCounter > 0) {
            return Util.EMPTY_STRING;
        }
        if (this.lastNumberOfNewLines == 0) {
            ++linesNumber;
            if (this.indentEmptyLines) {
                this.tempBuffer.setLength(0);
                int i = 0;
                while (i < linesNumber) {
                    this.printIndentationIfNecessary(this.tempBuffer);
                    this.tempBuffer.append(this.lineSeparator);
                    this.column = 1;
                    ++i;
                }
                emptyLines = this.tempBuffer.toString();
            } else {
                emptyLines = this.getNewLineString(linesNumber);
            }
            this.lastNumberOfNewLines += linesNumber;
            this.line += linesNumber;
            this.column = 1;
            this.needSpace = false;
            this.pendingSpace = false;
        } else if (this.lastNumberOfNewLines == 1) {
            if (this.indentEmptyLines) {
                this.tempBuffer.setLength(0);
                int i = 0;
                while (i < linesNumber) {
                    this.printIndentationIfNecessary(this.tempBuffer);
                    this.tempBuffer.append(this.lineSeparator);
                    this.column = 1;
                    ++i;
                }
                emptyLines = this.tempBuffer.toString();
            } else {
                emptyLines = this.getNewLineString(linesNumber);
            }
            this.lastNumberOfNewLines += linesNumber;
            this.line += linesNumber;
            this.column = 1;
            this.needSpace = false;
            this.pendingSpace = false;
        } else {
            if (this.lastNumberOfNewLines - 1 >= linesNumber) {
                return Util.EMPTY_STRING;
            }
            int realNewLineNumber = linesNumber - this.lastNumberOfNewLines + 1;
            if (this.indentEmptyLines) {
                this.tempBuffer.setLength(0);
                int i = 0;
                while (i < realNewLineNumber) {
                    this.printIndentationIfNecessary(this.tempBuffer);
                    this.tempBuffer.append(this.lineSeparator);
                    this.column = 1;
                    ++i;
                }
                emptyLines = this.tempBuffer.toString();
            } else {
                emptyLines = this.getNewLineString(realNewLineNumber);
            }
            this.lastNumberOfNewLines += realNewLineNumber;
            this.line += realNewLineNumber;
            this.column = 1;
            this.needSpace = false;
            this.pendingSpace = false;
        }
        return emptyLines;
    }

    public OptimizedReplaceEdit getLastEdit() {
        if (this.editsIndex > 0) {
            return this.edits[this.editsIndex - 1];
        }
        return null;
    }

    public final int getLineEnd(int lineNumber) {
        if (this.lineEnds == null) {
            return -1;
        }
        if (lineNumber >= this.lineEnds.length + 1) {
            return this.scannerEndPosition;
        }
        if (lineNumber <= 0) {
            return -1;
        }
        return this.lineEnds[lineNumber - 1];
    }

    Alignment getMemberAlignment() {
        return this.memberAlignment;
    }

    public String getNewLine() {
        if (this.nlsTagCounter > 0) {
            return Util.EMPTY_STRING;
        }
        if (this.lastNumberOfNewLines >= 1) {
            this.column = 1;
            return Util.EMPTY_STRING;
        }
        ++this.line;
        this.lastNumberOfNewLines = 1;
        this.column = 1;
        this.needSpace = false;
        this.pendingSpace = false;
        return this.lineSeparator;
    }

    private String getNewLineString(int linesCount) {
        String newLineString;
        int length = this.newEmptyLines.length;
        if (linesCount > length) {
            this.newEmptyLines = new String[linesCount + 10];
            System.arraycopy(this.newEmptyLines, 0, this.newEmptyLines, 0, length);
        }
        if ((newLineString = this.newEmptyLines[linesCount - 1]) == null) {
            this.tempBuffer.setLength(0);
            int j = 0;
            while (j < linesCount) {
                this.tempBuffer.append(this.lineSeparator);
                ++j;
            }
            this.newEmptyLines[linesCount - 1] = newLineString = this.tempBuffer.toString();
        }
        return newLineString;
    }

    public int getNextIndentationLevel(int someColumn) {
        int indent = someColumn - 1;
        if (indent == 0) {
            return this.indentationLevel;
        }
        if (this.tabChar == 1) {
            if (this.useTabsOnlyForLeadingIndents) {
                return indent;
            }
            if (this.indentationSize == 0) {
                return indent;
            }
            int rem = indent % this.indentationSize;
            int addition = rem == 0 ? 0 : this.indentationSize - rem;
            return indent + addition;
        }
        return indent;
    }

    private String getPreserveEmptyLines(int count, int emptyLinesRules) {
        if (count == 0) {
            int currentIndentationLevel = this.indentationLevel;
            int useAlignmentBreakIndentation = this.useAlignmentBreakIndentation(emptyLinesRules);
            switch (useAlignmentBreakIndentation) {
                case -1: {
                    return Util.EMPTY_STRING;
                }
            }
            StringBuffer buffer = new StringBuffer(this.getNewLine());
            this.printIndentationIfNecessary(buffer);
            if (useAlignmentBreakIndentation == 1) {
                this.indentationLevel = currentIndentationLevel;
            }
            return buffer.toString();
        }
        if (this.blank_lines_between_import_groups >= 0) {
            this.useAlignmentBreakIndentation(emptyLinesRules);
            return this.getEmptyLines(this.blank_lines_between_import_groups);
        }
        if (this.formatter.preferences.number_of_empty_lines_to_preserve != 0) {
            this.useAlignmentBreakIndentation(emptyLinesRules);
            int linesToPreserve = Math.min(count, this.formatter.preferences.number_of_empty_lines_to_preserve);
            return this.getEmptyLines(linesToPreserve);
        }
        return this.getNewLine();
    }

    private int useAlignmentBreakIndentation(int emptyLinesRules) {
        boolean specificEmptyLinesRule;
        boolean bl = specificEmptyLinesRule = emptyLinesRules != 1;
        if (!(this.currentAlignment == null && !specificEmptyLinesRule || this.formatter.preferences.join_wrapped_lines || this.lastNumberOfNewLines != 0 && !specificEmptyLinesRule && this.formatter.arrayInitializersDepth < 0)) {
            Alignment alignment;
            boolean useAlignmentBreakIndentation;
            boolean useAlignmentShiftBreakIndentation = false;
            boolean useLastBinaryExpressionAlignmentBreakIndentation = false;
            switch (emptyLinesRules) {
                case -1: 
                case 9: 
                case 10: 
                case 11: {
                    return -1;
                }
                case 6: {
                    useAlignmentBreakIndentation = true;
                    if ((this.formatter.expressionsPos & 3L) != 3L) break;
                    useLastBinaryExpressionAlignmentBreakIndentation = true;
                    break;
                }
                case 7: {
                    useAlignmentShiftBreakIndentation = this.currentAlignment == null || this.currentAlignment.kind == 5;
                    useAlignmentBreakIndentation = !useAlignmentShiftBreakIndentation;
                    break;
                }
                case 5: {
                    useAlignmentBreakIndentation = this.formatter.arrayInitializersDepth <= 1 && this.currentAlignment != null && this.currentAlignment.kind == 3;
                    break;
                }
                case 2: {
                    useAlignmentBreakIndentation = false;
                    break;
                }
                default: {
                    if ((emptyLinesRules & 0xFFFF) == 4 && this.scanner.currentCharacter == '}') {
                        this.indentationLevel = emptyLinesRules >> 16;
                        this.preserveLineBreakIndentation = true;
                        return 0;
                    }
                    useAlignmentBreakIndentation = true;
                }
            }
            if ((alignment = this.currentAlignment) == null) {
                if (useLastBinaryExpressionAlignmentBreakIndentation && this.indentationLevel < this.formatter.lastBinaryExpressionAlignmentBreakIndentation) {
                    this.indentationLevel = this.formatter.lastBinaryExpressionAlignmentBreakIndentation;
                }
                if (useAlignmentShiftBreakIndentation && this.memberAlignment != null && this.indentationLevel < this.memberAlignment.shiftBreakIndentationLevel) {
                    this.indentationLevel = this.memberAlignment.shiftBreakIndentationLevel;
                }
            } else {
                if (this.memberAlignment != null && this.memberAlignment.location.inputOffset > alignment.location.inputOffset) {
                    alignment = this.memberAlignment;
                }
                if (useLastBinaryExpressionAlignmentBreakIndentation && this.indentationLevel < this.formatter.lastBinaryExpressionAlignmentBreakIndentation) {
                    this.indentationLevel = this.formatter.lastBinaryExpressionAlignmentBreakIndentation;
                }
                if (useAlignmentBreakIndentation) {
                    if (this.indentationLevel < alignment.breakIndentationLevel) {
                        this.indentationLevel = alignment.breakIndentationLevel;
                    }
                } else if (useAlignmentShiftBreakIndentation && this.indentationLevel < alignment.shiftBreakIndentationLevel) {
                    this.indentationLevel = alignment.shiftBreakIndentationLevel;
                }
            }
            this.preserveLineBreakIndentation = true;
            if (useLastBinaryExpressionAlignmentBreakIndentation || useAlignmentShiftBreakIndentation) {
                return 1;
            }
            return 0;
        }
        return -1;
    }

    public TextEdit getRootEdit() {
        int textRegionEnd;
        int textRegionStart;
        IRegion lastRegion;
        this.adaptRegions();
        this.adaptEdits();
        MultiTextEdit edit = null;
        int regionsLength = this.adaptedRegions.length;
        if (regionsLength == 1) {
            lastRegion = this.adaptedRegions[0];
            textRegionStart = lastRegion.getOffset();
            textRegionEnd = textRegionStart + lastRegion.getLength();
        } else {
            textRegionStart = this.adaptedRegions[0].getOffset();
            lastRegion = this.adaptedRegions[regionsLength - 1];
            textRegionEnd = lastRegion.getOffset() + lastRegion.getLength();
        }
        int length = textRegionEnd - textRegionStart + 1;
        edit = textRegionStart <= 0 ? (length <= 0 ? new MultiTextEdit(0, 0) : new MultiTextEdit(0, textRegionEnd)) : new MultiTextEdit(textRegionStart, length - 1);
        int i = 0;
        int max = this.editsIndex;
        while (i < max) {
            OptimizedReplaceEdit currentEdit = this.edits[i];
            if (currentEdit.offset >= 0 && currentEdit.offset <= this.scannerEndPosition && (currentEdit.length == 0 || currentEdit.offset != this.scannerEndPosition && this.isMeaningfulEdit(currentEdit))) {
                try {
                    edit.addChild((TextEdit)new ReplaceEdit(currentEdit.offset, currentEdit.length, currentEdit.replacement));
                }
                catch (MalformedTreeException ex) {
                    CommentFormatterUtil.log(ex);
                    throw ex;
                }
            }
            ++i;
        }
        this.edits = null;
        return edit;
    }

    public void handleLineTooLong() {
        if (this.formatter.preferences.wrap_outer_expressions_when_nested) {
            this.handleLineTooLongSmartly();
            return;
        }
        int relativeDepth = 0;
        int outerMostDepth = -1;
        Alignment targetAlignment = this.currentAlignment;
        while (targetAlignment != null) {
            if (targetAlignment.tieBreakRule == 1 && targetAlignment.couldBreak()) {
                outerMostDepth = relativeDepth;
            }
            targetAlignment = targetAlignment.enclosing;
            ++relativeDepth;
        }
        if (outerMostDepth >= 0) {
            throw new AlignmentException(1, outerMostDepth);
        }
        relativeDepth = 0;
        targetAlignment = this.currentAlignment;
        while (targetAlignment != null) {
            if (targetAlignment.couldBreak()) {
                throw new AlignmentException(1, relativeDepth);
            }
            targetAlignment = targetAlignment.enclosing;
            ++relativeDepth;
        }
    }

    private void handleLineTooLongSmartly() {
        int relativeDepth = 0;
        int outerMostDepth = -1;
        Alignment targetAlignment = this.currentAlignment;
        int previousKind = -1;
        int insideMessage = 0;
        boolean insideStringConcat = false;
        while (targetAlignment != null) {
            boolean couldBreak;
            boolean bl = couldBreak = targetAlignment.tieBreakRule == 1 || !insideStringConcat && insideMessage > 0 && targetAlignment.kind == 15 && (!targetAlignment.wasReset() || previousKind != 16);
            if (couldBreak && targetAlignment.couldBreak()) {
                outerMostDepth = relativeDepth;
            }
            switch (targetAlignment.kind) {
                case 15: 
                case 16: {
                    ++insideMessage;
                    break;
                }
                case 24: {
                    insideStringConcat = true;
                }
            }
            previousKind = targetAlignment.kind;
            targetAlignment = targetAlignment.enclosing;
            ++relativeDepth;
        }
        if (outerMostDepth >= 0) {
            throw new AlignmentException(1, outerMostDepth);
        }
        relativeDepth = 0;
        targetAlignment = this.currentAlignment;
        AlignmentException alignmentException = null;
        int msgArgsDepth = -1;
        while (targetAlignment != null) {
            if (targetAlignment.kind == 15) {
                msgArgsDepth = relativeDepth;
            }
            if (alignmentException == null) {
                if (targetAlignment.couldBreak()) {
                    alignmentException = new AlignmentException(1, relativeDepth);
                    if (insideStringConcat) {
                        throw alignmentException;
                    }
                }
            } else if (targetAlignment.wasSplit && !targetAlignment.wasReset()) {
                targetAlignment.reset();
                if (msgArgsDepth > alignmentException.relativeDepth) {
                    alignmentException.relativeDepth = msgArgsDepth;
                }
                throw alignmentException;
            }
            targetAlignment = targetAlignment.enclosing;
            ++relativeDepth;
        }
        if (alignmentException != null) {
            throw alignmentException;
        }
        if (this.currentAlignment != null) {
            this.currentAlignment.blockAlign = false;
            this.currentAlignment.tooLong = true;
        }
    }

    private boolean hasNLSTag(int sourceStart) {
        if (this.lineEnds == null) {
            return false;
        }
        int index = Arrays.binarySearch(this.lineEnds, sourceStart);
        int currentLineEnd = this.getLineEnd(-index);
        if (currentLineEnd != -1) {
            int lineIndexForComment;
            int start;
            int commentIndex = this.getCommentIndex(currentLineEnd);
            if (commentIndex < 0) {
                commentIndex = -commentIndex - 2;
            }
            if (commentIndex >= 0 && commentIndex < this.commentPositions.length && (start = this.commentPositions[commentIndex][0]) < 0 && (lineIndexForComment = Arrays.binarySearch(this.lineEnds, start = -start)) == index) {
                return CharOperation.indexOf(Scanner.TAG_PREFIX, this.scanner.source, true, start, currentLineEnd) != -1;
            }
        }
        return false;
    }

    private boolean includesBlockComments() {
        return (this.formatComments & 0x1020) == 4128 && this.headerEndPosition < this.scanner.currentPosition || this.formatter.preferences.comment_format_header && this.headerEndPosition >= this.scanner.currentPosition;
    }

    private boolean includesJavadocComments() {
        return (this.formatComments & 0x1040) == 4160 && this.headerEndPosition < this.scanner.currentPosition || this.formatter.preferences.comment_format_header && this.headerEndPosition >= this.scanner.currentPosition;
    }

    private boolean includesLineComments() {
        return (this.formatComments & 0x1010) == 4112 && this.headerEndPosition < this.scanner.currentPosition || this.formatter.preferences.comment_format_header && this.headerEndPosition >= this.scanner.currentPosition;
    }

    boolean includesComments() {
        return (this.formatComments & 0x1000) != 0;
    }

    public void indent() {
        this.indentationLevel += this.indentationSize;
        ++this.numberOfIndentations;
    }

    void setIndentation(int level, int n) {
        this.indentationLevel = level + n * this.indentationSize;
        this.numberOfIndentations = this.indentationLevel / this.indentationSize;
    }

    /*
     * Unable to fully structure code
     */
    private void initializeScanner(long sourceLevel, DefaultCodeFormatterOptions preferences) {
        block10: {
            this.useTags = preferences.use_tags;
            this.tagsKind = 0;
            taskTags = null;
            if (this.useTags) {
                this.disablingTag = preferences.disabling_tag;
                this.enablingTag = preferences.enabling_tag;
                if (this.disablingTag == null) {
                    if (this.enablingTag != null) {
                        taskTags = new char[][]{this.enablingTag};
                    }
                } else {
                    taskTags = this.enablingTag == null ? (Object)new char[][]{this.disablingTag} : (Object)new char[][]{this.disablingTag, this.enablingTag};
                }
            }
            if (taskTags == null) break block10;
            i = 0;
            length = ((char[][])taskTags).length;
            block4: while (i < length) {
                if (taskTags[i].length <= 2 || taskTags[i][0] != '/') ** GOTO lbl-1000
                switch (taskTags[i][1]) {
                    case '/': {
                        this.tagsKind = 1001;
                        break block4;
                    }
                    case '*': {
                        if (taskTags[i][2] != '*') {
                            this.tagsKind = 1002;
                            break block4;
                        }
                    }
                    default: lbl-1000:
                    // 2 sources

                    {
                        ++i;
                    }
                }
            }
        }
        this.scanner = new Scanner(true, true, false, sourceLevel, (char[][])taskTags, null, true);
        this.editsEnabled = true;
    }

    private void initFormatterCommentParser() {
        if (this.formatterCommentParser == null) {
            this.formatterCommentParser = new FormatterCommentParser(this.scanner.sourceLevel);
        }
        this.formatterCommentParser.scanner.setSource(this.scanner.source);
        this.formatterCommentParser.source = this.scanner.source;
        this.formatterCommentParser.scanner.lineEnds = this.lineEnds;
        this.formatterCommentParser.scanner.linePtr = this.maxLines;
        this.formatterCommentParser.parseHtmlTags = this.formatter.preferences.comment_format_html;
    }

    private boolean isOnFirstColumn(int start) {
        if (this.lineEnds == null) {
            return start == 0;
        }
        int index = Arrays.binarySearch(this.lineEnds, start);
        int previousLineEnd = this.getLineEnd(-index - 1);
        return previousLineEnd != -1 && previousLineEnd == start - 1;
    }

    private boolean isMeaningfulEdit(OptimizedReplaceEdit edit) {
        int editLength = edit.length;
        int editReplacementLength = edit.replacement.length();
        int editOffset = edit.offset;
        if (editReplacementLength != 0 && editLength == editReplacementLength) {
            int i = editOffset;
            int max = editOffset + editLength;
            while (i < max) {
                if (this.scanner.source[i] != edit.replacement.charAt(i - editOffset)) {
                    return true;
                }
                ++i;
            }
            return false;
        }
        return true;
    }

    private void preserveEmptyLines(int count, int insertPosition) {
        if (count > 0) {
            if (this.blank_lines_between_import_groups >= 0) {
                this.printEmptyLines(this.blank_lines_between_import_groups, insertPosition);
            } else if (this.formatter.preferences.number_of_empty_lines_to_preserve != 0) {
                int linesToPreserve = Math.min(count, this.formatter.preferences.number_of_empty_lines_to_preserve);
                this.printEmptyLines(linesToPreserve, insertPosition);
            } else {
                this.printNewLine(insertPosition);
            }
        }
    }

    private void print(int length, boolean considerSpaceIfAny) {
        if (this.checkLineWrapping && length + this.column > this.pageWidth) {
            this.handleLineTooLong();
        }
        this.lastNumberOfNewLines = 0;
        if (this.indentationLevel != 0) {
            this.printIndentationIfNecessary();
        }
        if (considerSpaceIfAny) {
            this.space();
        }
        if (this.pendingSpace) {
            this.addInsertEdit(this.scanner.getCurrentTokenStartPosition(), " ");
        }
        this.pendingSpace = false;
        this.column += length;
        this.needSpace = true;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void printBlockComment(boolean isJavadoc) {
        currentTokenStartPosition = this.scanner.getCurrentTokenStartPosition();
        currentTokenEndPosition = this.scanner.getCurrentTokenEndPosition() + 1;
        includesBlockComments = isJavadoc == false && this.includesBlockComments() != false;
        this.scanner.resetTo(currentTokenStartPosition, currentTokenEndPosition - 1);
        isNewLine = false;
        start = currentTokenStartPosition;
        nextCharacterStart = currentTokenStartPosition;
        previousStart = currentTokenStartPosition;
        onFirstColumn = this.isOnFirstColumn(start);
        indentComment = false;
        if (!(this.indentationLevel == 0 || !isJavadoc && this.formatter.preferences.never_indent_block_comments_on_first_column && onFirstColumn)) {
            indentComment = true;
            this.printIndentationIfNecessary();
        }
        if (this.pendingSpace) {
            this.addInsertEdit(currentTokenStartPosition, " ");
        }
        this.needSpace = false;
        this.pendingSpace = false;
        commentColumn = this.column;
        if (includesBlockComments && this.printBlockComment(currentTokenStartPosition, currentTokenEndPosition)) {
            return;
        }
        currentIndentationLevel = this.indentationLevel;
        if (commentColumn - 1 > this.indentationLevel) {
            this.indentationLevel = commentColumn - 1;
        }
        currentCommentIndentation = onFirstColumn != false ? 0 : this.getCurrentCommentIndentation(start);
        formatComment = isJavadoc != false && (this.formatComments & 64) != 0 || isJavadoc == false && (this.formatComments & 32) != 0;
        try {
            while (nextCharacterStart <= currentTokenEndPosition && (currentCharacter = this.scanner.getNextChar()) != -1) {
                nextCharacterStart = this.scanner.currentPosition;
                switch (currentCharacter) {
                    case 13: {
                        start = previousStart;
                        isNewLine = true;
                        if (!this.scanner.getNextChar('\n')) break;
                        currentCharacter = 10;
                        nextCharacterStart = this.scanner.currentPosition;
                        break;
                    }
                    case 10: {
                        start = previousStart;
                        isNewLine = true;
                        nextCharacterStart = this.scanner.currentPosition;
                        break;
                    }
                    default: {
                        if (!isNewLine) ** GOTO lbl57
                        this.column = 1;
                        ++this.line;
                        isNewLine = false;
                        addSpace = false;
                        if (!onFirstColumn) ** GOTO lbl53
                        if (!formatComment) ** GOTO lbl103
                        if (!ScannerHelper.isWhitespace((char)currentCharacter)) ** GOTO lbl67
                        previousStartPosition = this.scanner.currentPosition;
                        if (true) ** GOTO lbl64
lbl53:
                        // 1 sources

                        if (!ScannerHelper.isWhitespace((char)currentCharacter)) ** GOTO lbl89
                        previousStartPosition = this.scanner.currentPosition;
                        currentIndentation = 0;
                        ** GOTO lbl86
lbl57:
                        // 1 sources

                        this.column += nextCharacterStart - previousStart;
                        break;
                        do {
                            previousStart = nextCharacterStart;
                            previousStartPosition = this.scanner.currentPosition;
                            currentCharacter = this.scanner.getNextChar();
                            nextCharacterStart = this.scanner.currentPosition;
lbl64:
                            // 2 sources

                        } while (currentCharacter != -1 && currentCharacter != 13 && currentCharacter != 10 && ScannerHelper.isWhitespace((char)currentCharacter));
                        if (currentCharacter == 13 || currentCharacter == 10) {
                            nextCharacterStart = previousStartPosition;
                        }
lbl67:
                        // 4 sources

                        if (currentCharacter == 13 || currentCharacter == 10) ** GOTO lbl103
                        addSpace = true;
                        ** GOTO lbl103
                        while (currentIndentation < currentCommentIndentation) {
                            previousStart = nextCharacterStart;
                            previousStartPosition = this.scanner.currentPosition;
                            switch (currentCharacter) {
                                case 9: {
                                    if (this.tabLength == 0) break;
                                    reminder = currentIndentation % this.tabLength;
                                    if (reminder == 0) {
                                        currentIndentation += this.tabLength;
                                        break;
                                    }
                                    currentIndentation = (currentIndentation / this.tabLength + 1) * this.tabLength;
                                    break;
                                }
                                default: {
                                    ++currentIndentation;
                                }
                            }
                            currentCharacter = this.scanner.getNextChar();
                            nextCharacterStart = this.scanner.currentPosition;
lbl86:
                            // 2 sources

                            if (currentCharacter != -1 && currentCharacter != 13 && currentCharacter != 10 && ScannerHelper.isWhitespace((char)currentCharacter)) continue;
                        }
                        if (currentCharacter == 13 || currentCharacter == 10) {
                            nextCharacterStart = previousStartPosition;
                        }
lbl89:
                        // 4 sources

                        if (formatComment) {
                            previousStartTemp = previousStart;
                            nextCharacterStartTemp = nextCharacterStart;
                            while (currentCharacter != -1 && currentCharacter != 13 && currentCharacter != 10 && ScannerHelper.isWhitespace((char)currentCharacter)) {
                                previousStart = nextCharacterStart;
                                currentCharacter = this.scanner.getNextChar();
                                nextCharacterStart = this.scanner.currentPosition;
                            }
                            if (currentCharacter == 42) {
                                addSpace = true;
                            } else {
                                previousStart = previousStartTemp;
                                nextCharacterStart = nextCharacterStartTemp;
                            }
                            this.scanner.currentPosition = nextCharacterStart;
                        }
lbl103:
                        // 6 sources

                        if (indentComment) {
                            this.tempBuffer.setLength(0);
                            this.tempBuffer.append(this.lineSeparator);
                            if (this.indentationLevel > 0) {
                                this.printIndentationIfNecessary(this.tempBuffer);
                            }
                            if (addSpace) {
                                this.tempBuffer.append(' ');
                            }
                            replacement = this.tempBuffer.toString();
                        } else {
                            replacement = addSpace != false ? this.lineSeparatorAndSpace : this.lineSeparator;
                        }
                        this.addReplaceEdit(start, previousStart - 1, replacement);
                        break;
                    }
                }
                previousStart = nextCharacterStart;
                this.scanner.currentPosition = nextCharacterStart;
            }
        }
        finally {
            this.indentationLevel = currentIndentationLevel;
        }
        this.lastNumberOfNewLines = 0;
        this.needSpace = false;
        this.scanner.resetTo(currentTokenEndPosition, this.scannerEndPosition - 1);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private boolean printBlockComment(int currentTokenStartPosition, int currentTokenEndPosition) {
        int scannerLine;
        int maxColumn = this.formatter.preferences.comment_line_length + 1;
        int indentLevel = this.indentationLevel;
        int indentations = this.numberOfIndentations;
        block1 : switch (this.tabChar) {
            case 1: {
                switch (this.tabLength) {
                    case 0: {
                        this.indentationLevel = 0;
                        this.column = 1;
                        this.numberOfIndentations = 0;
                        break block1;
                    }
                    case 1: {
                        this.numberOfIndentations = this.indentationLevel = this.column - 1;
                        break block1;
                    }
                }
                this.indentationLevel = this.column / this.tabLength * this.tabLength;
                this.column = this.indentationLevel + 1;
                this.numberOfIndentations = this.indentationLevel / this.tabLength;
                break;
            }
            case 4: {
                if (this.tabLength == 0) {
                    this.indentationLevel = 0;
                    this.column = 1;
                    this.numberOfIndentations = 0;
                    break;
                }
                this.indentationLevel = this.column - 1;
                this.numberOfIndentations = this.indentationLevel / this.tabLength;
                break;
            }
            case 2: {
                if (this.indentationSize == 0) {
                    this.indentationLevel = 0;
                    this.column = 1;
                    this.numberOfIndentations = 0;
                    break;
                }
                this.indentationLevel = this.column - 1;
                break;
            }
        }
        this.blockCommentBuffer.setLength(0);
        this.scanner.getNextChar();
        this.scanner.getNextChar();
        this.column += 2;
        this.scanner.skipComments = true;
        this.blockCommentTokensBuffer.setLength(0);
        int editStart = this.scanner.currentPosition;
        int editEnd = -1;
        int previousToken = -1;
        boolean newLine = false;
        boolean multiLines = false;
        boolean hasMultiLines = false;
        boolean hasTokens = false;
        boolean bufferHasTokens = false;
        boolean bufferHasNewLine = false;
        boolean lineHasTokens = false;
        int hasTextOnFirstLine = 0;
        boolean firstWord = true;
        boolean clearBlankLines = this.formatter.preferences.comment_clear_blank_lines_in_block_comment;
        boolean joinLines = this.formatter.preferences.join_lines_in_comments;
        boolean newLinesAtBoundaries = this.formatter.preferences.comment_new_lines_at_block_boundaries;
        int firstLine = scannerLine = Util.getLineNumber(this.scanner.currentPosition, this.lineEnds, 0, this.maxLines);
        int lineNumber = scannerLine;
        int lastTextLine = -1;
        block17: while (!this.scanner.atEnd()) {
            int max;
            int linesGap;
            int token;
            try {
                token = this.scanner.getNextToken();
            }
            catch (InvalidInputException invalidInputException) {
                token = this.consumeInvalidToken(currentTokenEndPosition - 1);
                newLine = false;
            }
            boolean insertSpace = previousToken == 1000 && (!firstWord || !hasTokens);
            boolean isTokenStar = false;
            switch (token) {
                case 1000: {
                    if (this.blockCommentTokensBuffer.length() > 0) {
                        if (hasTextOnFirstLine == 1 && multiLines) {
                            this.printBlockCommentHeaderLine(this.blockCommentBuffer);
                            hasTextOnFirstLine = -1;
                        }
                        this.blockCommentBuffer.append(this.blockCommentTokensBuffer);
                        this.column += this.blockCommentTokensBuffer.length();
                        this.blockCommentTokensBuffer.setLength(0);
                        bufferHasTokens = true;
                        bufferHasNewLine = false;
                    }
                    previousToken = previousToken == -1 ? -2 : token;
                    lineNumber = Util.getLineNumber(this.scanner.currentPosition, this.lineEnds, scannerLine > 1 ? scannerLine - 2 : 0, this.maxLines);
                    if (lineNumber > scannerLine) {
                        hasMultiLines = true;
                        newLine = true;
                    }
                    scannerLine = lineNumber;
                    continue block17;
                }
                case 4: {
                    isTokenStar = true;
                    lineNumber = Util.getLineNumber(this.scanner.currentPosition, this.lineEnds, scannerLine > 1 ? scannerLine - 2 : 0, this.maxLines);
                    if (lineNumber == firstLine && previousToken == -2) {
                        this.blockCommentBuffer.append(' ');
                    }
                    previousToken = token;
                    if (this.scanner.currentCharacter == '/') {
                        editEnd = this.scanner.startPosition - 1;
                        if (this.blockCommentTokensBuffer.length() > 0) {
                            this.blockCommentBuffer.append(this.blockCommentTokensBuffer);
                            this.column += this.blockCommentTokensBuffer.length();
                        }
                        if (newLinesAtBoundaries && (multiLines || hasMultiLines)) {
                            this.blockCommentBuffer.append(this.lineSeparator);
                            this.column = 1;
                            this.printIndentationIfNecessary(this.blockCommentBuffer);
                        }
                        this.blockCommentBuffer.append(' ');
                        this.column += BLOCK_FOOTER_LENGTH + 1;
                        this.scanner.getNextChar();
                        continue block17;
                    }
                    if (!newLine) break;
                    scannerLine = lineNumber;
                    newLine = false;
                    continue block17;
                }
                case 86: {
                    if (!newLine) break;
                    this.scanner.resetTo(this.scanner.startPosition, currentTokenEndPosition - 1);
                    this.scanner.getNextChar();
                    previousToken = 4;
                    scannerLine = Util.getLineNumber(this.scanner.currentPosition, this.lineEnds, scannerLine > 1 ? scannerLine - 2 : 0, this.maxLines);
                    continue block17;
                }
                case 2: 
                case 9: {
                    if (previousToken != -1) break;
                    this.indentationLevel = indentLevel;
                    this.numberOfIndentations = indentations;
                    this.lastNumberOfNewLines = 0;
                    this.needSpace = false;
                    this.scanner.skipComments = false;
                    this.scanner.resetTo(currentTokenStartPosition, currentTokenEndPosition - 1);
                    return false;
                }
            }
            lineNumber = Util.getLineNumber(this.scanner.currentPosition, this.lineEnds, scannerLine > 1 ? scannerLine - 2 : 0, this.maxLines);
            if (lastTextLine == -1) {
                linesGap = newLinesAtBoundaries ? lineNumber - firstLine : 0;
                max = 0;
            } else {
                linesGap = lineNumber - lastTextLine;
                if (token == 53 && linesGap == 1) {
                    linesGap = 2;
                }
                int n = max = joinLines && lineHasTokens ? 1 : 0;
            }
            if (linesGap > max) {
                if (clearBlankLines) {
                    linesGap = token == 53 ? 1 : (max == 0 || !joinLines ? 1 : 0);
                }
                int i = 0;
                while (i < linesGap) {
                    if (this.blockCommentTokensBuffer.length() > 0) {
                        if (hasTextOnFirstLine == 1) {
                            this.printBlockCommentHeaderLine(this.blockCommentBuffer);
                            hasTextOnFirstLine = -1;
                        }
                        this.blockCommentBuffer.append(this.blockCommentTokensBuffer);
                        this.blockCommentTokensBuffer.setLength(0);
                        bufferHasTokens = true;
                    }
                    this.blockCommentBuffer.append(this.lineSeparator);
                    this.column = 1;
                    this.printIndentationIfNecessary(this.blockCommentBuffer);
                    this.blockCommentBuffer.append(" * ");
                    this.column += BLOCK_LINE_PREFIX_LENGTH;
                    firstWord = true;
                    multiLines = true;
                    bufferHasNewLine = true;
                    ++i;
                }
                boolean bl = insertSpace = insertSpace && linesGap == 0;
            }
            if (newLine) {
                lineHasTokens = false;
            }
            int tokenStart = this.scanner.getCurrentTokenStartPosition();
            int tokenLength = (this.scanner.atEnd() ? this.scanner.eofPosition : this.scanner.currentPosition) - tokenStart;
            hasTokens = true;
            if (!isTokenStar) {
                lineHasTokens = true;
            }
            if (hasTextOnFirstLine == 0 && !isTokenStar) {
                if (firstLine == lineNumber) {
                    hasTextOnFirstLine = 1;
                    ++this.column;
                } else {
                    hasTextOnFirstLine = -1;
                }
            }
            int lastColumn = this.column + this.blockCommentTokensBuffer.length() + tokenLength;
            if (insertSpace) {
                ++lastColumn;
            }
            if (lineHasTokens && !firstWord && lastColumn > maxColumn) {
                String tokensString = this.blockCommentTokensBuffer.toString().trim();
                int tokensStringLength = tokensString.length();
                if (hasTextOnFirstLine == 1) {
                    this.printBlockCommentHeaderLine(this.blockCommentBuffer);
                }
                if (this.indentationLevel + tokensStringLength + tokenLength > maxColumn) {
                    this.blockCommentBuffer.append(this.blockCommentTokensBuffer);
                    this.column += this.blockCommentTokensBuffer.length();
                    this.blockCommentTokensBuffer.setLength(0);
                    bufferHasNewLine = false;
                    bufferHasTokens = true;
                }
                if (bufferHasTokens && !bufferHasNewLine) {
                    this.blockCommentBuffer.append(this.lineSeparator);
                    this.column = 1;
                    this.printIndentationIfNecessary(this.blockCommentBuffer);
                    this.blockCommentBuffer.append(" * ");
                    this.column += BLOCK_LINE_PREFIX_LENGTH;
                }
                if (this.blockCommentTokensBuffer.length() > 0) {
                    this.blockCommentBuffer.append(tokensString);
                    this.column += tokensStringLength;
                    this.blockCommentTokensBuffer.setLength(0);
                }
                this.blockCommentBuffer.append(this.scanner.source, tokenStart, tokenLength);
                bufferHasTokens = true;
                bufferHasNewLine = false;
                this.column += tokenLength;
                multiLines = true;
                hasTextOnFirstLine = -1;
            } else {
                if (insertSpace) {
                    this.blockCommentTokensBuffer.append(' ');
                }
                this.blockCommentTokensBuffer.append(this.scanner.source, tokenStart, tokenLength);
            }
            previousToken = token;
            newLine = false;
            firstWord = false;
            scannerLine = lineNumber;
            lastTextLine = lineNumber;
        }
        if (!(this.nlsTagCounter != 0 && multiLines || !hasTokens && !multiLines)) {
            StringBuffer replacement;
            if (hasTextOnFirstLine == 1) {
                this.blockCommentTokensBuffer.setLength(0);
                replacement = this.blockCommentTokensBuffer;
                if (hasMultiLines || multiLines) {
                    int col = this.column;
                    replacement.append(this.lineSeparator);
                    this.column = 1;
                    this.printIndentationIfNecessary(replacement);
                    replacement.append(" * ");
                    this.column = col;
                } else if (this.blockCommentBuffer.length() == 0 || this.blockCommentBuffer.charAt(0) != ' ') {
                    replacement.append(' ');
                }
                replacement.append(this.blockCommentBuffer);
            } else {
                replacement = this.blockCommentBuffer;
            }
            this.addReplaceEdit(editStart, editEnd, replacement.toString());
        }
        this.indentationLevel = indentLevel;
        this.numberOfIndentations = indentations;
        this.lastNumberOfNewLines = 0;
        this.needSpace = false;
        this.scanner.resetTo(currentTokenEndPosition, this.scannerEndPosition - 1);
        this.scanner.skipComments = false;
        return true;
    }

    private void printBlockCommentHeaderLine(StringBuffer buffer) {
        if (!this.formatter.preferences.comment_new_lines_at_block_boundaries) {
            buffer.insert(0, ' ');
            ++this.column;
        } else if (buffer.length() == 0) {
            buffer.append(this.lineSeparator);
            this.column = 1;
            this.printIndentationIfNecessary(buffer);
            buffer.append(" * ");
            this.column += BLOCK_LINE_PREFIX_LENGTH;
        } else {
            this.tempBuffer.setLength(0);
            this.tempBuffer.append(this.lineSeparator);
            this.column = 1;
            this.printIndentationIfNecessary(this.tempBuffer);
            this.tempBuffer.append(" * ");
            this.column += BLOCK_LINE_PREFIX_LENGTH;
            buffer.insert(0, this.tempBuffer.toString());
        }
    }

    public void printEndOfCompilationUnit() {
        try {
            int currentTokenStartPosition = this.scanner.currentPosition;
            boolean hasComment = false;
            boolean hasLineComment = false;
            boolean hasWhitespace = false;
            int count = 0;
            block14: while (true) {
                this.currentToken = this.scanner.getNextToken();
                switch (this.currentToken) {
                    case 1000: {
                        char[] whiteSpaces = this.scanner.getCurrentTokenSource();
                        count = 0;
                        int i = 0;
                        int max = whiteSpaces.length;
                        while (i < max) {
                            switch (whiteSpaces[i]) {
                                case '\r': {
                                    if (i + 1 < max && whiteSpaces[i + 1] == '\n') {
                                        ++i;
                                    }
                                    ++count;
                                    break;
                                }
                                case '\n': {
                                    ++count;
                                }
                            }
                            ++i;
                        }
                        if (count == 0) {
                            hasWhitespace = true;
                            this.addDeleteEdit(this.scanner.getCurrentTokenStartPosition(), this.scanner.getCurrentTokenEndPosition());
                        } else if (hasLineComment) {
                            this.preserveEmptyLines(count, this.scanner.getCurrentTokenStartPosition());
                            this.addDeleteEdit(this.scanner.getCurrentTokenStartPosition(), this.scanner.getCurrentTokenEndPosition());
                        } else if (hasComment) {
                            if (count == 1) {
                                this.printNewLine(this.scanner.getCurrentTokenStartPosition());
                            } else {
                                this.preserveEmptyLines(count - 1, this.scanner.getCurrentTokenStartPosition());
                            }
                            this.addDeleteEdit(this.scanner.getCurrentTokenStartPosition(), this.scanner.getCurrentTokenEndPosition());
                        } else {
                            this.addDeleteEdit(this.scanner.getCurrentTokenStartPosition(), this.scanner.getCurrentTokenEndPosition());
                        }
                        currentTokenStartPosition = this.scanner.currentPosition;
                        continue block14;
                    }
                    case 1001: {
                        if (count >= 1) {
                            if (count > 1) {
                                this.preserveEmptyLines(count - 1, this.scanner.getCurrentTokenStartPosition());
                            } else if (count == 1) {
                                this.printNewLine(this.scanner.getCurrentTokenStartPosition());
                            }
                        } else if (hasWhitespace) {
                            this.space();
                        }
                        hasWhitespace = false;
                        this.printLineComment();
                        currentTokenStartPosition = this.scanner.currentPosition;
                        hasLineComment = true;
                        count = 0;
                        continue block14;
                    }
                    case 1002: {
                        if (count >= 1) {
                            if (count > 1) {
                                this.preserveEmptyLines(count - 1, this.scanner.getCurrentTokenStartPosition());
                            } else if (count == 1) {
                                this.printNewLine(this.scanner.getCurrentTokenStartPosition());
                            }
                        } else if (hasWhitespace) {
                            this.space();
                        }
                        hasWhitespace = false;
                        this.printBlockComment(false);
                        currentTokenStartPosition = this.scanner.currentPosition;
                        hasLineComment = false;
                        hasComment = true;
                        count = 0;
                        continue block14;
                    }
                    case 1003: {
                        if (count >= 1) {
                            if (count > 1) {
                                this.preserveEmptyLines(count - 1, this.scanner.startPosition);
                            } else if (count == 1) {
                                this.printNewLine(this.scanner.startPosition);
                            }
                        } else if (hasWhitespace) {
                            this.space();
                        }
                        hasWhitespace = false;
                        if (this.includesJavadocComments()) {
                            this.printJavadocComment(this.scanner.startPosition, this.scanner.currentPosition);
                        } else {
                            this.printBlockComment(true);
                        }
                        this.printNewLine();
                        currentTokenStartPosition = this.scanner.currentPosition;
                        hasLineComment = false;
                        hasComment = true;
                        count = 0;
                        continue block14;
                    }
                    case 27: {
                        this.print(this.scanner.currentPosition - this.scanner.startPosition, this.formatter.preferences.insert_space_before_semicolon);
                        continue block14;
                    }
                    case 69: {
                        if (count >= 1 || this.formatter.preferences.insert_new_line_at_end_of_file_if_missing) {
                            this.printNewLine(this.scannerEndPosition);
                        }
                        return;
                    }
                }
                break;
            }
            this.scanner.resetTo(currentTokenStartPosition, this.scannerEndPosition - 1);
            return;
        }
        catch (InvalidInputException e) {
            throw new AbortFormatting(e);
        }
    }

    private void printCodeSnippet(int startPosition, int endPosition, int linesGap) {
        TextEdit edit;
        String convertedSnippet;
        block27: {
            int lastLine;
            int firstLine;
            block26: {
                String snippet = new String(this.scanner.source, startPosition, endPosition - startPosition + 1);
                firstLine = Util.getLineNumber(startPosition, this.lineEnds, 0, this.maxLines) - 1;
                lastLine = Util.getLineNumber(endPosition, this.lineEnds, firstLine > 1 ? firstLine - 2 : 0, this.maxLines) - 1;
                this.codeSnippetBuffer.setLength(0);
                if (firstLine != lastLine || linesGap != 0) break block26;
                this.codeSnippetBuffer.append(snippet);
                break block27;
            }
            boolean hasCharsAfterStar = false;
            if (linesGap == 0) {
                this.codeSnippetBuffer.append(this.scanner.source, startPosition, this.lineEnds[firstLine] + 1 - startPosition);
                ++firstLine;
            }
            int initialLength = this.codeSnippetBuffer.length();
            int currentLine = firstLine;
            while (currentLine <= lastLine) {
                block29: {
                    int lineStart;
                    block28: {
                        char ch;
                        this.scanner.resetTo(this.lineEnds[currentLine - 1] + 1, this.lineEnds[currentLine]);
                        lineStart = this.scanner.currentPosition;
                        boolean hasStar = false;
                        block16: while (!this.scanner.atEnd()) {
                            ch = (char)this.scanner.getNextChar();
                            switch (ch) {
                                case '\t': 
                                case '\f': 
                                case ' ': {
                                    break;
                                }
                                case '\n': 
                                case '\r': {
                                    break block16;
                                }
                                case '*': {
                                    hasStar = true;
                                    break block16;
                                }
                                default: {
                                    if (!ScannerHelper.isWhitespace(ch)) break block16;
                                }
                            }
                        }
                        if (!hasStar) break block28;
                        lineStart = this.scanner.currentPosition;
                        if (hasCharsAfterStar || this.scanner.atEnd()) break block28;
                        ch = (char)this.scanner.getNextChar();
                        boolean atEnd = this.scanner.atEnd();
                        switch (ch) {
                            case '\t': 
                            case '\f': 
                            case ' ': {
                                break;
                            }
                            case '\n': 
                            case '\r': {
                                atEnd = true;
                                break;
                            }
                            default: {
                                if (ScannerHelper.isWhitespace(ch) || !hasStar) break;
                                hasCharsAfterStar = true;
                                currentLine = firstLine - 1;
                                this.codeSnippetBuffer.setLength(initialLength);
                                break block29;
                            }
                        }
                        if (!hasCharsAfterStar && !atEnd) {
                            lineStart = this.scanner.currentPosition;
                        }
                    }
                    int end = currentLine == lastLine ? endPosition : this.lineEnds[currentLine];
                    this.codeSnippetBuffer.append(this.scanner.source, lineStart, end + 1 - lineStart);
                }
                ++currentLine;
            }
        }
        HTMLEntity2JavaReader reader = new HTMLEntity2JavaReader(new StringReader(this.codeSnippetBuffer.toString()));
        char[] buf = new char[this.codeSnippetBuffer.length()];
        try {
            int read = reader.read(buf);
            convertedSnippet = new String(buf, 0, read);
        }
        catch (IOException e) {
            CommentFormatterUtil.log(e);
            return;
        }
        String formattedSnippet = convertedSnippet;
        Map options = this.formatter.preferences.getMap();
        if (this.scanner.sourceLevel > 0x2F0000L) {
            options.put("org.eclipse.jdt.core.compiler.source", CompilerOptions.versionFromJdkLevel(this.scanner.sourceLevel));
        }
        if ((edit = CommentFormatterUtil.format2(4096, convertedSnippet, 0, this.lineSeparator, options)) == null) {
            formattedSnippet = this.codeSnippetBuffer.toString();
        } else {
            formattedSnippet = CommentFormatterUtil.evaluateFormatterEdit(convertedSnippet, edit, null);
            Java2HTMLEntityReader javaReader = new Java2HTMLEntityReader(new StringReader(formattedSnippet));
            buf = new char[256];
            this.codeSnippetBuffer.setLength(0);
            try {
                int l;
                do {
                    if ((l = javaReader.read(buf)) == -1) continue;
                    this.codeSnippetBuffer.append(buf, 0, l);
                } while (l > 0);
                formattedSnippet = this.codeSnippetBuffer.toString();
            }
            catch (IOException e) {
                CommentFormatterUtil.log(e);
                return;
            }
        }
        this.codeSnippetBuffer.setLength(0);
        DefaultLineTracker tracker = new DefaultLineTracker();
        this.column = 1;
        this.printIndentationIfNecessary(this.codeSnippetBuffer);
        this.codeSnippetBuffer.append(" * ");
        String linePrefix = this.codeSnippetBuffer.toString();
        this.codeSnippetBuffer.setLength(0);
        String replacement = formattedSnippet;
        tracker.set(formattedSnippet);
        int numberOfLines = tracker.getNumberOfLines();
        if (numberOfLines > 1) {
            int lastLineOffset = -1;
            int i = 0;
            while (i < numberOfLines - 1) {
                if (i > 0) {
                    this.codeSnippetBuffer.append(linePrefix);
                }
                try {
                    lastLineOffset = tracker.getLineOffset(i + 1);
                    this.codeSnippetBuffer.append(formattedSnippet.substring(tracker.getLineOffset(i), lastLineOffset));
                }
                catch (BadLocationException e) {
                    CommentFormatterUtil.log(e);
                    return;
                }
                ++i;
            }
            this.codeSnippetBuffer.append(linePrefix);
            this.codeSnippetBuffer.append(formattedSnippet.substring(lastLineOffset));
            replacement = this.codeSnippetBuffer.toString();
        }
        this.addReplaceEdit(startPosition, endPosition, replacement);
    }

    void printComment() {
        this.printComment(0, 0, 1);
    }

    void printComment(int emptyLinesRules) {
        this.printComment(0, 0, emptyLinesRules);
    }

    void printComment(int kind, int trailing) {
        this.printComment(kind, trailing, 1);
    }

    void printComment(int kind, int trailing, int emptyLinesRules) {
        boolean rejectLineComment = kind == 32 || kind == 64;
        boolean rejectBlockComment = kind == 16 || kind == 64;
        boolean rejectJavadocComment = kind == 16 || kind == 32;
        try {
            int currentTokenStartPosition = this.scanner.currentPosition;
            boolean hasComment = false;
            boolean hasLineComment = false;
            boolean hasWhitespaces = false;
            int lines = 0;
            block16: while ((this.currentToken = this.scanner.getNextToken()) != 69) {
                int foundTaskCount = this.scanner.foundTaskCount;
                int tokenStartPosition = this.scanner.getCurrentTokenStartPosition();
                switch (this.currentToken) {
                    case 1000: {
                        boolean realTrailing;
                        char[] whiteSpaces = this.scanner.getCurrentTokenSource();
                        int whitespacesEndPosition = this.scanner.getCurrentTokenEndPosition();
                        lines = 0;
                        int i = 0;
                        int max = whiteSpaces.length;
                        while (i < max) {
                            switch (whiteSpaces[i]) {
                                case '\r': {
                                    if (i + 1 < max && whiteSpaces[i + 1] == '\n') {
                                        ++i;
                                    }
                                    ++lines;
                                    break;
                                }
                                case '\n': {
                                    ++lines;
                                }
                            }
                            ++i;
                        }
                        boolean bl = realTrailing = trailing > 0;
                        if (realTrailing && this.scanner.currentCharacter == '/' && (lines == 0 || lines == 1 && !hasLineComment && trailing == 513)) {
                            boolean canChangeTrailing;
                            boolean bl2 = canChangeTrailing = (trailing & 0x200) != 0;
                            if (trailing == 256 && hasLineComment) {
                                int currentCommentIndentation = this.getCurrentIndentation(whiteSpaces, 0);
                                int relativeIndentation = currentCommentIndentation - this.lastLineComment.currentIndentation;
                                if (this.tabLength == 0) {
                                    canChangeTrailing = relativeIndentation == 0;
                                } else {
                                    boolean bl3 = canChangeTrailing = relativeIndentation > -this.tabLength;
                                }
                            }
                            if (canChangeTrailing) {
                                int currentPosition = this.scanner.currentPosition;
                                if (this.scanner.getNextToken() == 1001) {
                                    realTrailing = !hasLineComment;
                                    switch (this.scanner.getNextToken()) {
                                        case 1001: {
                                            realTrailing = false;
                                            break;
                                        }
                                        case 1000: {
                                            if (this.scanner.getNextToken() != 1001) break;
                                            realTrailing = false;
                                        }
                                    }
                                }
                                this.scanner.resetTo(currentPosition, this.scanner.eofPosition - 1);
                            }
                        }
                        if (lines > 1 || lines == 1 && hasLineComment) {
                            this.lastLineComment.contiguous = false;
                        }
                        this.lastLineComment.leadingSpaces = whiteSpaces;
                        this.lastLineComment.lines = lines;
                        if (realTrailing) {
                            if (hasLineComment) {
                                if (lines >= 1) {
                                    currentTokenStartPosition = tokenStartPosition;
                                    this.preserveEmptyLines(lines, currentTokenStartPosition);
                                    this.addDeleteEdit(currentTokenStartPosition, whitespacesEndPosition);
                                    this.scanner.resetTo(this.scanner.currentPosition, this.scannerEndPosition - 1);
                                    return;
                                }
                                this.scanner.resetTo(currentTokenStartPosition, this.scannerEndPosition - 1);
                                return;
                            }
                            if (lines >= 1) {
                                if (hasComment) {
                                    this.printNewLine(tokenStartPosition);
                                }
                                this.scanner.resetTo(currentTokenStartPosition, this.scannerEndPosition - 1);
                                return;
                            }
                            hasWhitespaces = true;
                            currentTokenStartPosition = this.scanner.currentPosition;
                            this.addDeleteEdit(tokenStartPosition, whitespacesEndPosition);
                        } else if (lines == 0) {
                            hasWhitespaces = true;
                            if (hasLineComment && emptyLinesRules != 1) {
                                this.addReplaceEdit(tokenStartPosition, whitespacesEndPosition, this.getPreserveEmptyLines(0, emptyLinesRules));
                            } else {
                                this.addDeleteEdit(tokenStartPosition, whitespacesEndPosition);
                            }
                        } else if (hasLineComment) {
                            this.useAlignmentBreakIndentation(emptyLinesRules);
                            currentTokenStartPosition = tokenStartPosition;
                            this.preserveEmptyLines(lines, currentTokenStartPosition);
                            this.addDeleteEdit(currentTokenStartPosition, whitespacesEndPosition);
                        } else if (hasComment) {
                            this.useAlignmentBreakIndentation(emptyLinesRules);
                            if (lines == 1) {
                                this.printNewLine(tokenStartPosition);
                            } else {
                                this.preserveEmptyLines(lines - 1, tokenStartPosition);
                            }
                            this.addDeleteEdit(tokenStartPosition, whitespacesEndPosition);
                        } else if (!(lines == 0 || this.formatter.preferences.join_wrapped_lines && this.formatter.preferences.number_of_empty_lines_to_preserve == 0 && this.blank_lines_between_import_groups <= 0)) {
                            this.addReplaceEdit(tokenStartPosition, whitespacesEndPosition, this.getPreserveEmptyLines(lines - 1, emptyLinesRules));
                        } else {
                            this.useAlignmentBreakIndentation(emptyLinesRules);
                            this.addDeleteEdit(tokenStartPosition, whitespacesEndPosition);
                        }
                        currentTokenStartPosition = this.scanner.currentPosition;
                        break;
                    }
                    case 1001: {
                        if (this.useTags && this.editsEnabled) {
                            boolean turnOff = false;
                            if (foundTaskCount > 0) {
                                this.setEditsEnabled(foundTaskCount);
                                turnOff = true;
                            } else if (this.tagsKind == this.currentToken && CharOperation.fragmentEquals(this.disablingTag, this.scanner.source, tokenStartPosition, true)) {
                                this.editsEnabled = false;
                                turnOff = true;
                            }
                            if (turnOff && !this.editsEnabled && this.editsIndex > 1) {
                                OptimizedReplaceEdit currentEdit = this.edits[this.editsIndex - 1];
                                if (this.scanner.startPosition == currentEdit.offset + currentEdit.length) {
                                    this.printNewLinesBeforeDisablingComment();
                                }
                            }
                        }
                        if (rejectLineComment) continue block16;
                        if (lines >= 1) {
                            if (lines > 1) {
                                this.preserveEmptyLines(lines - 1, this.scanner.getCurrentTokenStartPosition());
                            } else if (lines == 1) {
                                this.printNewLine(this.scanner.getCurrentTokenStartPosition());
                            }
                        } else if (hasWhitespaces) {
                            this.space();
                        }
                        hasWhitespaces = false;
                        this.printLineComment();
                        currentTokenStartPosition = this.scanner.currentPosition;
                        hasLineComment = true;
                        lines = 0;
                        if (!this.useTags || this.editsEnabled) continue block16;
                        if (foundTaskCount > 0) {
                            this.setEditsEnabled(foundTaskCount);
                            break;
                        }
                        if (this.tagsKind != this.currentToken) continue block16;
                        this.editsEnabled = CharOperation.fragmentEquals(this.enablingTag, this.scanner.source, tokenStartPosition, true);
                        break;
                    }
                    case 1002: {
                        if (this.useTags && this.editsEnabled) {
                            boolean turnOff = false;
                            if (foundTaskCount > 0) {
                                this.setEditsEnabled(foundTaskCount);
                                turnOff = true;
                            } else if (this.tagsKind == this.currentToken && CharOperation.fragmentEquals(this.disablingTag, this.scanner.source, tokenStartPosition, true)) {
                                this.editsEnabled = false;
                                turnOff = true;
                            }
                            if (turnOff && !this.editsEnabled && this.editsIndex > 1) {
                                OptimizedReplaceEdit currentEdit = this.edits[this.editsIndex - 1];
                                if (this.scanner.startPosition == currentEdit.offset + currentEdit.length) {
                                    this.printNewLinesBeforeDisablingComment();
                                }
                            }
                        }
                        if (trailing > 0 && lines >= 1) {
                            this.scanner.resetTo(this.scanner.getCurrentTokenStartPosition(), this.scannerEndPosition - 1);
                            return;
                        }
                        this.lastLineComment.contiguous = false;
                        if (rejectBlockComment) continue block16;
                        if (lines >= 1) {
                            if (lines > 1) {
                                this.preserveEmptyLines(lines - 1, this.scanner.getCurrentTokenStartPosition());
                            } else if (lines == 1) {
                                this.printNewLine(this.scanner.getCurrentTokenStartPosition());
                            }
                        } else if (hasWhitespaces) {
                            this.space();
                        }
                        hasWhitespaces = false;
                        this.printBlockComment(false);
                        currentTokenStartPosition = this.scanner.currentPosition;
                        hasLineComment = false;
                        hasComment = true;
                        lines = 0;
                        if (!this.useTags || this.editsEnabled) continue block16;
                        if (foundTaskCount > 0) {
                            this.setEditsEnabled(foundTaskCount);
                            break;
                        }
                        if (this.tagsKind != this.currentToken) continue block16;
                        this.editsEnabled = CharOperation.fragmentEquals(this.enablingTag, this.scanner.source, tokenStartPosition, true);
                        break;
                    }
                    case 1003: {
                        if (this.useTags && this.editsEnabled && foundTaskCount > 0) {
                            this.setEditsEnabled(foundTaskCount);
                            if (!this.editsEnabled && this.editsIndex > 1) {
                                OptimizedReplaceEdit currentEdit = this.edits[this.editsIndex - 1];
                                if (this.scanner.startPosition == currentEdit.offset + currentEdit.length) {
                                    this.printNewLinesBeforeDisablingComment();
                                }
                            }
                        }
                        if (trailing > 0) {
                            this.scanner.resetTo(this.scanner.getCurrentTokenStartPosition(), this.scannerEndPosition - 1);
                            return;
                        }
                        this.lastLineComment.contiguous = false;
                        if (rejectJavadocComment) continue block16;
                        if (lines >= 1) {
                            if (lines > 1) {
                                this.preserveEmptyLines(lines - 1, this.scanner.getCurrentTokenStartPosition());
                            } else if (lines == 1) {
                                this.printNewLine(this.scanner.getCurrentTokenStartPosition());
                            }
                        } else if (hasWhitespaces) {
                            this.space();
                        }
                        hasWhitespaces = false;
                        if (this.includesJavadocComments()) {
                            this.printJavadocComment(this.scanner.startPosition, this.scanner.currentPosition);
                        } else {
                            this.printBlockComment(true);
                        }
                        if (this.useTags && !this.editsEnabled && foundTaskCount > 0) {
                            this.setEditsEnabled(foundTaskCount);
                        }
                        this.printNewLine();
                        currentTokenStartPosition = this.scanner.currentPosition;
                        hasLineComment = false;
                        hasComment = true;
                        lines = 0;
                        break;
                    }
                    default: {
                        this.lastLineComment.contiguous = false;
                        this.scanner.resetTo(currentTokenStartPosition, this.scannerEndPosition - 1);
                        return;
                    }
                }
            }
        }
        catch (InvalidInputException e) {
            throw new AbortFormatting(e);
        }
    }

    void printComment(int kind, String source, int start, int end, int level) {
        this.resetScanner(source.toCharArray());
        this.scanner.resetTo(start, end);
        this.numberOfIndentations = level;
        this.indentationLevel = level * this.indentationSize;
        this.column = this.indentationLevel + 1;
        switch (kind) {
            case 16: {
                this.printComment(kind, 0);
                break;
            }
            case 32: {
                this.printComment(kind, 0);
                break;
            }
            case 64: {
                this.printJavadocComment(start, end);
            }
        }
    }

    /*
     * Unable to fully structure code
     */
    private void printLineComment() {
        block31: {
            currentTokenStartPosition = this.scanner.getCurrentTokenStartPosition();
            currentTokenEndPosition = this.scanner.getCurrentTokenEndPosition() + 1;
            includesLineComments = this.includesLineComments();
            isNlsTag = false;
            if (CharOperation.indexOf(Scanner.TAG_PREFIX, this.scanner.source, true, currentTokenStartPosition, currentTokenEndPosition) != -1) {
                this.nlsTagCounter = 0;
                isNlsTag = true;
            }
            this.scanner.resetTo(currentTokenStartPosition, currentTokenEndPosition - 1);
            start = currentTokenStartPosition;
            nextCharacterStart = currentTokenStartPosition;
            onFirstColumn = this.isOnFirstColumn(start);
            if (this.indentationLevel == 0) {
                commentIndentationLevel = this.column - 1;
            } else if (onFirstColumn && (includesLineComments && !this.formatter.preferences.comment_format_line_comment_starting_on_first_column || this.formatter.preferences.never_indent_line_comments_on_first_column)) {
                commentIndentationLevel = this.column - 1;
            } else if (this.lastLineComment.contiguous) {
                currentCommentIndentation = this.getCurrentIndentation(this.lastLineComment.leadingSpaces, 0);
                relativeIndentation = currentCommentIndentation - this.lastLineComment.currentIndentation;
                similarCommentsIndentation = false;
                if (this.tabLength == 0) {
                    similarCommentsIndentation = relativeIndentation == 0;
                } else if (relativeIndentation > -this.tabLength) {
                    v0 = similarCommentsIndentation = relativeIndentation == 0 || currentCommentIndentation != 0 && this.lastLineComment.currentIndentation != 0;
                }
                if (similarCommentsIndentation && this.lastLineComment.indentation != this.indentationLevel) {
                    currentIndentationLevel = this.indentationLevel;
                    this.indentationLevel = this.lastLineComment.indentation;
                    this.printIndentationIfNecessary();
                    this.indentationLevel = currentIndentationLevel;
                    commentIndentationLevel = this.lastLineComment.indentation;
                } else {
                    this.printIndentationIfNecessary();
                    commentIndentationLevel = this.column - 1;
                }
            } else if (this.currentAlignment != null && this.currentAlignment.kind == 3 && this.currentAlignment.fragmentCount > 0 && this.indentationLevel < this.currentAlignment.breakIndentationLevel && this.lastLineComment.lines > 0) {
                currentIndentationLevel = this.indentationLevel;
                this.indentationLevel = this.currentAlignment.breakIndentationLevel;
                this.printIndentationIfNecessary();
                this.indentationLevel = currentIndentationLevel;
                commentIndentationLevel = this.currentAlignment.breakIndentationLevel;
            } else {
                this.printIndentationIfNecessary();
                commentIndentationLevel = this.column - 1;
            }
            this.lastLineComment.contiguous = true;
            this.lastLineComment.currentIndentation = this.getCurrentCommentIndentation(currentTokenStartPosition);
            this.lastLineComment.indentation = commentIndentationLevel;
            if (this.pendingSpace) {
                if (this.formatter.preferences.comment_preserve_white_space_between_code_and_line_comments) {
                    this.addInsertEdit(currentTokenStartPosition, new String(this.lastLineComment.leadingSpaces));
                } else {
                    this.addInsertEdit(currentTokenStartPosition, " ");
                }
            }
            this.needSpace = false;
            this.pendingSpace = false;
            previousStart = currentTokenStartPosition;
            if (isNlsTag || !includesLineComments || onFirstColumn && !this.formatter.preferences.comment_format_line_comment_starting_on_first_column) ** GOTO lbl70
            this.printLineComment(currentTokenStartPosition, currentTokenEndPosition - 1);
            break block31;
lbl-1000:
            // 1 sources

            {
                nextCharacterStart = this.scanner.currentPosition;
                switch (currentCharacter) {
                    case 13: {
                        start = previousStart;
                        break block4;
                    }
                    case 10: {
                        start = previousStart;
                        break block4;
                    }
                    default: {
                        previousStart = nextCharacterStart;
                    }
                }
lbl70:
                // 2 sources

                ** while (nextCharacterStart <= currentTokenEndPosition && (currentCharacter = this.scanner.getNextChar()) != -1)
            }
lbl71:
            // 3 sources

            if (start != currentTokenStartPosition) {
                this.addReplaceEdit(start, currentTokenEndPosition - 1, this.lineSeparator);
                ++this.line;
                this.column = 1;
                this.lastNumberOfNewLines = 1;
            }
        }
        this.needSpace = false;
        this.pendingSpace = false;
        if (this.currentAlignment != null) {
            if (this.memberAlignment != null) {
                if (this.currentAlignment.location.inputOffset > this.memberAlignment.location.inputOffset) {
                    if (this.currentAlignment.couldBreak() && this.currentAlignment.wasSplit) {
                        this.currentAlignment.performFragmentEffect();
                    }
                } else {
                    this.indentationLevel = Math.max(this.indentationLevel, this.memberAlignment.breakIndentationLevel);
                }
            } else if (this.currentAlignment.couldBreak() && this.currentAlignment.wasSplit) {
                this.currentAlignment.performFragmentEffect();
            }
            if (this.currentAlignment.kind == 5 && this.currentAlignment.enclosing != null && this.currentAlignment.enclosing.kind == 5 && this.indentationLevel < this.currentAlignment.breakIndentationLevel) {
                this.indentationLevel = this.currentAlignment.breakIndentationLevel;
            }
        }
        this.scanner.resetTo(currentTokenEndPosition, this.scannerEndPosition - 1);
    }

    /*
     * Unable to fully structure code
     */
    private void printLineComment(int commentStart, int commentEnd) {
        firstColumn = this.column;
        indentLevel = this.indentationLevel;
        indentations = this.numberOfIndentations;
        this.indentationLevel = this.getNextIndentationLevel(firstColumn);
        this.numberOfIndentations = this.indentationSize != 0 ? this.indentationLevel / this.indentationSize : 0;
        this.scanner.resetTo(commentStart, commentEnd);
        this.scanner.getNextChar();
        this.scanner.getNextChar();
        this.column += 2;
        maxColumn = this.formatter.preferences.comment_line_length + 1;
        previousToken = -1;
        lastTokenEndPosition = commentStart;
        spaceStartPosition = -1;
        spaceEndPosition = -1;
        this.scanner.skipComments = true;
        newLineString = null;
        this.commentIndentation = null;
        while (!this.scanner.atEnd()) {
            try {
                token = this.scanner.getNextToken();
            }
            catch (InvalidInputException v0) {
                token = this.consumeInvalidToken(commentEnd);
            }
            switch (token) {
                case 1000: {
                    previousToken = previousToken == -1 ? -2 : token;
                    spaceStartPosition = this.scanner.getCurrentTokenStartPosition();
                    spaceEndPosition = this.scanner.getCurrentTokenEndPosition();
                    break;
                }
                case 69: {
                    break;
                }
                case 26: {
                    if (previousToken != -1 && previousToken != -2) ** GOTO lbl53
                    identifier = this.scanner.getCurrentTokenSource();
                    startPosition = this.scanner.getCurrentTokenStartPosition();
                    restartPosition = this.scanner.currentPosition;
                    if (!CharOperation.equals(identifier, Parser.FALL_THROUGH_TAG, 0, 5) || this.scanner.currentCharacter != '-') ** GOTO lbl51
                    try {
                        this.scanner.getNextToken();
                        token = this.scanner.getNextToken();
                        if (token != 26 || !CharOperation.endsWith(Parser.FALL_THROUGH_TAG, identifier = this.scanner.getCurrentTokenSource())) ** GOTO lbl51
                        if (previousToken == -2) {
                            this.addReplaceEdit(spaceStartPosition, startPosition - 1, " ");
                        }
                        this.scanner.startPosition = startPosition;
                        previousToken = token;
                        ** GOTO lbl53
                    }
                    catch (InvalidInputException v1) {}
lbl51:
                    // 3 sources

                    this.scanner.startPosition = startPosition;
                    this.scanner.currentPosition = restartPosition;
                }
lbl53:
                // 4 sources

                default: {
                    tokenStart = this.scanner.getCurrentTokenStartPosition();
                    tokenLength = (this.scanner.atEnd() != false ? this.scanner.eofPosition : this.scanner.currentPosition) - tokenStart;
                    if (previousToken == -1) {
                        this.addInsertEdit(this.scanner.startPosition, " ");
                        ++this.column;
                    } else if (previousToken == -2) {
                        this.addReplaceEdit(spaceStartPosition, this.scanner.startPosition - 1, " ");
                        ++this.column;
                        spaceStartPosition = -1;
                    } else {
                        v2 = insertSpace = previousToken == 1000;
                        if (insertSpace) {
                            ++tokenLength;
                        }
                        if (spaceStartPosition > 0 && this.column + tokenLength > maxColumn) {
                            ++this.lastNumberOfNewLines;
                            ++this.line;
                            if (newLineString == null) {
                                this.tempBuffer.setLength(0);
                                this.tempBuffer.append(this.lineSeparator);
                                this.column = 1;
                                if (!this.formatter.preferences.never_indent_line_comments_on_first_column) {
                                    this.printIndentationIfNecessary(this.tempBuffer);
                                }
                                this.tempBuffer.append("// ");
                                this.column += Scribe.LINE_COMMENT_PREFIX_LENGTH;
                                newLineString = this.tempBuffer.toString();
                                firstColumn = this.column;
                            } else {
                                this.column = firstColumn;
                            }
                            if (lastTokenEndPosition > spaceEndPosition) {
                                this.column += lastTokenEndPosition - (spaceEndPosition + 1);
                            }
                            if (this.edits[this.editsIndex - 1].offset == spaceStartPosition) {
                                --this.editsIndex;
                            }
                            this.addReplaceEdit(spaceStartPosition, spaceEndPosition, newLineString);
                            spaceStartPosition = -1;
                            if (insertSpace) {
                                --tokenLength;
                            }
                        } else if (insertSpace) {
                            this.addReplaceEdit(spaceStartPosition, this.scanner.startPosition - 1, " ");
                        }
                    }
                    this.column += tokenLength;
                    previousToken = token;
                    lastTokenEndPosition = this.scanner.currentPosition;
                }
            }
        }
        this.scanner.skipComments = false;
        this.indentationLevel = indentLevel;
        this.numberOfIndentations = indentations;
        this.lastNumberOfNewLines = 0;
        this.scanner.resetTo(lastTokenEndPosition, commentEnd);
        while (!this.scanner.atEnd()) {
            spaceEndPosition = this.scanner.currentPosition;
            this.scanner.getNextChar();
            if (this.scanner.currentCharacter != '\n' && this.scanner.currentCharacter != '\r') continue;
            this.column = 1;
            ++this.line;
            ++this.lastNumberOfNewLines;
            break;
        }
        v3 = startReplace = previousToken == -2 ? spaceStartPosition : lastTokenEndPosition;
        if (this.column == 1 && commentEnd >= startReplace) {
            this.addReplaceEdit(startReplace, commentEnd, this.formatter.preferences.line_separator);
        }
    }

    public void printEmptyLines(int linesNumber) {
        this.printEmptyLines(linesNumber, this.scanner.getCurrentTokenEndPosition() + 1);
    }

    private void printEmptyLines(int linesNumber, int insertPosition) {
        String buffer = this.getEmptyLines(linesNumber);
        if (Util.EMPTY_STRING == buffer) {
            return;
        }
        this.addInsertEdit(insertPosition, buffer);
    }

    void printIndentationIfNecessary() {
        this.tempBuffer.setLength(0);
        this.printIndentationIfNecessary(this.tempBuffer);
        if (this.tempBuffer.length() > 0) {
            this.addInsertEdit(this.scanner.getCurrentTokenStartPosition(), this.tempBuffer.toString());
            this.pendingSpace = false;
        }
    }

    /*
     * Unable to fully structure code
     */
    private void printIndentationIfNecessary(StringBuffer buffer) {
        switch (this.tabChar) {
            case 1: {
                useTabsForLeadingIndents = this.useTabsOnlyForLeadingIndents;
                numberOfLeadingIndents = this.numberOfIndentations;
                indentationsAsTab = 0;
                if (useTabsForLeadingIndents) {
                    while (this.column <= this.indentationLevel) {
                        if (this.tabLength > 0 && indentationsAsTab < numberOfLeadingIndents) {
                            if (buffer != null) {
                                buffer.append('\t');
                            }
                            ++indentationsAsTab;
                            complement = this.tabLength - (this.column - 1) % this.tabLength;
                            this.column += complement;
                        } else {
                            if (buffer != null) {
                                buffer.append(' ');
                            }
                            ++this.column;
                        }
                        this.needSpace = false;
                    }
                } else {
                    if (this.tabLength <= 0) break;
                    while (this.column <= this.indentationLevel) {
                        if (buffer != null) {
                            buffer.append('\t');
                        }
                        complement = this.tabLength - (this.column - 1) % this.tabLength;
                        this.column += complement;
                        this.needSpace = false;
                    }
                }
                break;
            }
            case 2: {
                while (this.column <= this.indentationLevel) {
                    if (buffer != null) {
                        buffer.append(' ');
                    }
                    ++this.column;
                    this.needSpace = false;
                }
                break;
            }
            case 4: {
                useTabsForLeadingIndents = this.useTabsOnlyForLeadingIndents;
                numberOfLeadingIndents = this.numberOfIndentations;
                indentationsAsTab = false;
                if (!useTabsForLeadingIndents) ** GOTO lbl106
                columnForLeadingIndents = numberOfLeadingIndents * this.indentationSize;
                while (this.column <= this.indentationLevel) {
                    if (this.column <= columnForLeadingIndents) {
                        if (this.tabLength > 0 && this.column - 1 + this.tabLength <= this.indentationLevel) {
                            if (buffer != null) {
                                buffer.append('\t');
                            }
                            this.column += this.tabLength;
                        } else if (this.column - 1 + this.indentationSize <= this.indentationLevel) {
                            i = 0;
                            max = this.indentationSize;
                            while (i < max) {
                                if (buffer != null) {
                                    buffer.append(' ');
                                }
                                ++this.column;
                                ++i;
                            }
                        } else {
                            if (buffer != null) {
                                buffer.append(' ');
                            }
                            ++this.column;
                        }
                    } else {
                        i = this.column;
                        max = this.indentationLevel;
                        while (i <= max) {
                            if (buffer != null) {
                                buffer.append(' ');
                            }
                            ++this.column;
                            ++i;
                        }
                    }
                    this.needSpace = false;
                }
                break;
lbl-1000:
                // 1 sources

                {
                    if (this.tabLength > 0 && this.column - 1 + this.tabLength <= this.indentationLevel) {
                        if (buffer != null) {
                            buffer.append('\t');
                        }
                        this.column += this.tabLength;
                    } else if (this.indentationSize > 0 && this.column - 1 + this.indentationSize <= this.indentationLevel) {
                        i = 0;
                        max = this.indentationSize;
                        while (i < max) {
                            if (buffer != null) {
                                buffer.append(' ');
                            }
                            ++this.column;
                            ++i;
                        }
                    } else {
                        if (buffer != null) {
                            buffer.append(' ');
                        }
                        ++this.column;
                    }
                    this.needSpace = false;
lbl106:
                    // 2 sources

                    ** while (this.column <= this.indentationLevel)
                }
            }
        }
lbl107:
        // 7 sources

    }

    private void printJavadocBlock(FormatJavadocBlock block) {
        if (block == null) {
            return;
        }
        int previousEnd = block.tagEnd;
        int maxNodes = block.nodesPtr;
        boolean headerLine = block.isHeaderLine() && this.lastNumberOfNewLines == 0;
        int maxColumn = this.formatter.preferences.comment_line_length + 1;
        if (headerLine) {
            ++maxColumn;
        }
        if (!block.isInlined()) {
            this.lastNumberOfNewLines = 0;
        }
        if (block.isDescription()) {
            if (!block.isInlined()) {
                this.commentIndentation = null;
            }
        } else {
            FormatJavadocReference reference;
            int tagLength = previousEnd - block.sourceStart + 1;
            this.column += tagLength;
            if (!block.isInlined()) {
                boolean indentRootTags = this.formatter.preferences.comment_indent_root_tags && !block.isInDescription();
                int commentIndentationLevel = 0;
                if (indentRootTags) {
                    boolean indentParamTag;
                    commentIndentationLevel = tagLength + 1;
                    boolean bl = indentParamTag = this.formatter.preferences.comment_indent_parameter_description && block.isInParamTag();
                    if (indentParamTag) {
                        commentIndentationLevel += this.indentationSize;
                    }
                }
                this.setCommentIndentation(commentIndentationLevel);
            }
            if ((reference = block.reference) != null) {
                this.printJavadocBlockReference(block, reference);
                previousEnd = reference.sourceEnd;
            }
            if (maxNodes < 0) {
                if (block.isInlined()) {
                    ++this.column;
                }
                return;
            }
        }
        int previousLine = Util.getLineNumber(previousEnd, this.lineEnds, 0, this.maxLines);
        boolean clearBlankLines = this.formatter.preferences.comment_clear_blank_lines_in_javadoc_comment;
        boolean joinLines = this.formatter.preferences.join_lines_in_comments;
        int i = 0;
        while (i <= maxNodes) {
            int newLines;
            FormatJavadocNode node = block.nodes[i];
            int nodeStart = node.sourceStart;
            if (i == 0) {
                int n = newLines = this.formatter.preferences.comment_insert_new_line_for_parameter && block.isParamTag() ? 1 : 0;
                if (nodeStart > previousEnd + 1) {
                    if (!clearBlankLines || !joinLines) {
                        int startLine = Util.getLineNumber(nodeStart, this.lineEnds, previousLine - 1, this.maxLines);
                        int gapLine = previousLine;
                        if (joinLines) {
                            ++gapLine;
                        }
                        if (startLine > gapLine) {
                            newLines = startLine - previousLine;
                        }
                        if (clearBlankLines && newLines > 0) {
                            newLines = 1;
                        }
                    }
                    if (!(newLines != 0 || node.isImmutable() && block.reference == null)) {
                        newLines = this.printJavadocBlockNodesNewLines(block, node, previousEnd);
                    }
                    if (block.isImmutable()) {
                        this.printJavadocGapLinesForImmutableBlock(block);
                    } else {
                        this.printJavadocGapLines(previousEnd + 1, nodeStart - 1, newLines, clearBlankLines, false, null);
                    }
                } else {
                    this.tempBuffer.setLength(0);
                    if (newLines > 0) {
                        int j = 0;
                        while (j < newLines) {
                            this.printJavadocNewLine(this.tempBuffer);
                            ++j;
                        }
                        this.addInsertEdit(nodeStart, this.tempBuffer.toString());
                    }
                }
            } else {
                int n = newLines = this.column > maxColumn ? 1 : 0;
                if (!clearBlankLines && node.lineStart > previousLine + 1) {
                    newLines = node.lineStart - previousLine;
                }
                if (newLines < node.linesBefore) {
                    newLines = node.linesBefore;
                }
                if (newLines == 0) {
                    newLines = this.printJavadocBlockNodesNewLines(block, node, previousEnd);
                }
                if (newLines > 0 || nodeStart > previousEnd + 1) {
                    this.printJavadocGapLines(previousEnd + 1, nodeStart - 1, newLines, clearBlankLines, false, null);
                }
            }
            if (headerLine && newLines > 0) {
                headerLine = false;
                --maxColumn;
            }
            if (node.isText()) {
                FormatJavadocText text = (FormatJavadocText)node;
                if (text.isImmutable()) {
                    if (text.isImmutableHtmlTag() && newLines > 0 && this.commentIndentation != null) {
                        this.addInsertEdit(node.sourceStart, this.commentIndentation);
                        this.column += this.commentIndentation.length();
                    }
                    this.printJavadocImmutableText(text, block, newLines > 0);
                    this.column += this.getTextLength(block, text);
                } else if (text.isHtmlTag()) {
                    this.printJavadocHtmlTag(text, block, newLines > 0);
                } else {
                    this.printJavadocText(text, block, newLines > 0);
                }
            } else {
                if (newLines > 0 && this.commentIndentation != null) {
                    this.addInsertEdit(node.sourceStart, this.commentIndentation);
                    this.column += this.commentIndentation.length();
                }
                this.printJavadocBlock((FormatJavadocBlock)node);
            }
            previousEnd = node.sourceEnd;
            previousLine = Util.getLineNumber(previousEnd, this.lineEnds, node.lineStart > 1 ? node.lineStart - 2 : 0, this.maxLines);
            ++i;
        }
        this.lastNumberOfNewLines = 0;
    }

    /*
     * Enabled aggressive exception aggregation
     */
    private int printJavadocBlockNodesNewLines(FormatJavadocBlock block, FormatJavadocNode node, int previousEnd) {
        block36: {
            int maxColumn = this.formatter.preferences.comment_line_length + 1;
            int nodeStart = node.sourceStart;
            try {
                FormatJavadocBlock inlinedBlock;
                this.scanner.resetTo(nodeStart, node.sourceEnd);
                int length = 0;
                boolean newLine = false;
                boolean headerLine = block.isHeaderLine() && this.lastNumberOfNewLines == 0;
                int firstColumn = 1 + this.indentationLevel + BLOCK_LINE_PREFIX_LENGTH;
                if (this.commentIndentation != null) {
                    firstColumn += this.commentIndentation.length();
                }
                if (headerLine) {
                    ++maxColumn;
                }
                FormatJavadocText text = null;
                boolean isImmutableNode = node.isImmutable();
                boolean nodeIsText = node.isText();
                if (nodeIsText) {
                    text = (FormatJavadocText)node;
                } else {
                    inlinedBlock = (FormatJavadocBlock)node;
                    if (isImmutableNode && (text = (FormatJavadocText)inlinedBlock.getLastNode()) != null) {
                        length += inlinedBlock.tagEnd - inlinedBlock.sourceStart + 1;
                        if (nodeStart > previousEnd + 1) {
                            ++length;
                        }
                        this.scanner.resetTo(text.sourceStart, node.sourceEnd);
                    }
                }
                if (text != null) {
                    if (isImmutableNode) {
                        if (nodeStart > previousEnd + 1) {
                            ++length;
                        }
                        int lastColumn = this.column + length;
                        block12: while (!this.scanner.atEnd()) {
                            try {
                                int token = this.scanner.getNextToken();
                                switch (token) {
                                    case 1000: {
                                        if (CharOperation.indexOf('\n', this.scanner.source, this.scanner.startPosition, this.scanner.currentPosition) >= 0) {
                                            return 0;
                                        }
                                        lastColumn = this.getCurrentIndentation(this.scanner.getCurrentTokenSource(), lastColumn);
                                        break;
                                    }
                                    case 4: {
                                        if (newLine) {
                                            newLine = false;
                                            continue block12;
                                        }
                                        ++lastColumn;
                                        break;
                                    }
                                    default: {
                                        lastColumn += (this.scanner.atEnd() ? this.scanner.eofPosition : this.scanner.currentPosition) - this.scanner.startPosition;
                                        break;
                                    }
                                }
                            }
                            catch (InvalidInputException invalidInputException) {
                                lastColumn += (this.scanner.atEnd() ? this.scanner.eofPosition : this.scanner.currentPosition) - this.scanner.startPosition;
                            }
                            if (lastColumn <= maxColumn) continue;
                            return 1;
                        }
                        return 0;
                    }
                    if (text.isHtmlTag()) {
                        if (text.getHtmlTagID() == 256) {
                            return 0;
                        }
                        this.scanner.getNextToken();
                        if (this.scanner.getNextToken() == 6) {
                            ++length;
                            this.scanner.getNextToken();
                        }
                        length += (this.scanner.atEnd() ? this.scanner.eofPosition : this.scanner.currentPosition) - this.scanner.startPosition;
                        this.scanner.getNextToken();
                        ++length;
                    } else {
                        int tokenLength;
                        int token;
                        while ((token = this.scanner.getNextToken()) != 1000 && token != 69 && this.column + (length += (tokenLength = (this.scanner.atEnd() ? this.scanner.eofPosition : this.scanner.currentPosition) - this.scanner.startPosition)) < maxColumn) {
                        }
                    }
                } else {
                    inlinedBlock = (FormatJavadocBlock)node;
                    length += inlinedBlock.tagEnd - inlinedBlock.sourceStart + 1;
                    if (inlinedBlock.reference != null) {
                        ++length;
                        this.scanner.resetTo(inlinedBlock.reference.sourceStart, inlinedBlock.reference.sourceEnd);
                        int previousToken = -1;
                        block14: while (!this.scanner.atEnd()) {
                            int token = this.scanner.getNextToken();
                            int tokenLength = (this.scanner.atEnd() ? this.scanner.eofPosition : this.scanner.currentPosition) - this.scanner.startPosition;
                            switch (token) {
                                case 1000: {
                                    if (previousToken != 30) break;
                                    ++length;
                                    break;
                                }
                                case 4: {
                                    break;
                                }
                                default: {
                                    if (this.column + (length += tokenLength) > maxColumn) break block14;
                                }
                            }
                            previousToken = token;
                        }
                    }
                    ++length;
                }
                if (nodeStart > previousEnd + 1) {
                    ++length;
                }
                if (firstColumn + length >= maxColumn && node == block.nodes[0]) {
                    return 0;
                }
                if (this.column + length > maxColumn) {
                    return 1;
                }
            }
            catch (InvalidInputException invalidInputException) {
                int tokenLength = 1;
                if (nodeStart > previousEnd + 1) {
                    ++tokenLength;
                }
                if (this.column + tokenLength <= maxColumn) break block36;
                return 1;
            }
        }
        return 0;
    }

    private void printJavadocBlockReference(FormatJavadocBlock block, FormatJavadocReference reference) {
        int maxColumn = this.formatter.preferences.comment_line_length + 1;
        boolean headerLine = block.isHeaderLine();
        boolean inlined = block.isInlined();
        if (headerLine) {
            ++maxColumn;
        }
        this.scanner.resetTo(block.tagEnd + 1, reference.sourceEnd);
        this.javadocBlockRefBuffer.setLength(0);
        boolean needFormat = false;
        int previousToken = -1;
        int spacePosition = -1;
        String newLineString = null;
        int firstColumn = -1;
        while (!this.scanner.atEnd()) {
            try {
                int token = this.scanner.getNextToken();
                int tokenLength = (this.scanner.atEnd() ? this.scanner.eofPosition : this.scanner.currentPosition) - this.scanner.startPosition;
                block1 : switch (token) {
                    case 1000: {
                        if (previousToken != -1 || tokenLength > 1 || this.scanner.currentCharacter != ' ') {
                            needFormat = true;
                        }
                        switch (previousToken) {
                            case 4: 
                            case 29: {
                                break block1;
                            }
                            default: {
                                spacePosition = this.javadocBlockRefBuffer.length();
                            }
                            case -1: 
                        }
                        this.javadocBlockRefBuffer.append(' ');
                        ++this.column;
                        break;
                    }
                    case 4: {
                        break;
                    }
                    default: {
                        if (!inlined && spacePosition > 0 && this.column + tokenLength > maxColumn) {
                            ++this.lastNumberOfNewLines;
                            ++this.line;
                            if (newLineString == null) {
                                this.tempBuffer.setLength(0);
                                this.tempBuffer.append(this.lineSeparator);
                                this.column = 1;
                                this.printIndentationIfNecessary(this.tempBuffer);
                                this.tempBuffer.append(" * ");
                                this.column += BLOCK_LINE_PREFIX_LENGTH;
                                if (this.commentIndentation != null) {
                                    this.tempBuffer.append(this.commentIndentation);
                                    this.column += this.commentIndentation.length();
                                }
                                newLineString = this.tempBuffer.substring(0, this.tempBuffer.length() - 1);
                                firstColumn = this.column;
                            } else {
                                this.column = firstColumn;
                            }
                            this.column = firstColumn + this.javadocBlockRefBuffer.length() - spacePosition - 1;
                            this.javadocBlockRefBuffer.insert(spacePosition, newLineString);
                            if (headerLine) {
                                headerLine = false;
                                --maxColumn;
                            }
                            spacePosition = -1;
                        }
                        this.javadocBlockRefBuffer.append(this.scanner.source, this.scanner.startPosition, tokenLength);
                        this.column += tokenLength;
                    }
                }
                previousToken = token;
            }
            catch (InvalidInputException invalidInputException) {}
        }
        if (needFormat) {
            this.addReplaceEdit(block.tagEnd + 1, reference.sourceEnd, this.javadocBlockRefBuffer.toString());
        }
    }

    private int getTextLength(FormatJavadocBlock block, FormatJavadocText text) {
        int startLine;
        if (text.isImmutable()) {
            this.scanner.resetTo(text.sourceStart, text.sourceEnd);
            int textLength = 0;
            while (!this.scanner.atEnd()) {
                try {
                    int token = this.scanner.getNextToken();
                    if (token == 1000 && CharOperation.indexOf('\n', this.scanner.source, this.scanner.startPosition, this.scanner.currentPosition) >= 0) {
                        textLength = 0;
                        this.scanner.getNextChar();
                        if (this.scanner.currentCharacter == '*') {
                            this.scanner.getNextChar();
                            if (this.scanner.currentCharacter == ' ') continue;
                            ++textLength;
                            continue;
                        }
                        ++textLength;
                        continue;
                    }
                    textLength += (this.scanner.atEnd() ? this.scanner.eofPosition : this.scanner.currentPosition) - this.scanner.startPosition;
                }
                catch (InvalidInputException invalidInputException) {
                    textLength += (this.scanner.atEnd() ? this.scanner.eofPosition : this.scanner.currentPosition) - this.scanner.startPosition;
                }
            }
            return textLength;
        }
        if (block.isOneLineTag()) {
            return text.sourceEnd - text.sourceStart + 1;
        }
        int endLine = startLine = Util.getLineNumber(text.sourceStart, this.lineEnds, 0, this.maxLines);
        int previousEnd = -1;
        int i = 0;
        while (i <= text.separatorsPtr) {
            int end = (int)(text.separators[i] >>> 32);
            if ((endLine = Util.getLineNumber(end, this.lineEnds, endLine - 1, this.maxLines)) > startLine) {
                return previousEnd - text.sourceStart + 1;
            }
            previousEnd = end;
            ++i;
        }
        return text.sourceEnd - text.sourceStart + 1;
    }

    void printJavadocComment(int start, int end) {
        int lastIndentationLevel = this.indentationLevel;
        try {
            this.scanner.resetTo(start, end - 1);
            if (!this.formatterCommentParser.parse(start, end - 1)) {
                return;
            }
            FormatJavadoc javadoc = (FormatJavadoc)this.formatterCommentParser.docComment;
            if (this.indentationLevel != 0) {
                this.printIndentationIfNecessary();
            }
            if (this.pendingSpace) {
                this.addInsertEdit(start, " ");
            }
            if (javadoc.blocks == null) {
                return;
            }
            this.needSpace = false;
            this.pendingSpace = false;
            int length = javadoc.blocks.length;
            FormatJavadocBlock previousBlock = javadoc.blocks[0];
            this.lastNumberOfNewLines = 0;
            int currentLine = this.line;
            int firstBlockStart = previousBlock.sourceStart;
            this.printIndentationIfNecessary(null);
            this.column += JAVADOC_HEADER_LENGTH;
            int index = 1;
            if (length > 1) {
                FormatJavadocBlock block;
                if (previousBlock.isDescription()) {
                    this.printJavadocBlock(previousBlock);
                    block = javadoc.blocks[index++];
                    int newLines = this.formatter.preferences.comment_insert_empty_line_before_root_tags ? 2 : 1;
                    this.printJavadocGapLines(previousBlock.sourceEnd + 1, block.sourceStart - 1, newLines, this.formatter.preferences.comment_clear_blank_lines_in_javadoc_comment, false, null);
                    previousBlock = block;
                }
                while (index < length) {
                    this.printJavadocBlock(previousBlock);
                    block = javadoc.blocks[index++];
                    this.printJavadocGapLines(previousBlock.sourceEnd + 1, block.sourceStart - 1, 1, this.formatter.preferences.comment_clear_blank_lines_in_javadoc_comment, false, null);
                    previousBlock = block;
                }
            }
            this.printJavadocBlock(previousBlock);
            int newLines = this.formatter.preferences.comment_new_lines_at_javadoc_boundaries && (this.line > currentLine || javadoc.isMultiLine()) ? 1 : 0;
            this.printJavadocGapLines(javadoc.textStart, firstBlockStart - 1, newLines, this.formatter.preferences.comment_clear_blank_lines_in_javadoc_comment, false, null);
            this.printJavadocGapLines(previousBlock.sourceEnd + 1, javadoc.textEnd, newLines, this.formatter.preferences.comment_clear_blank_lines_in_javadoc_comment, true, null);
        }
        finally {
            this.scanner.resetTo(end, this.scannerEndPosition - 1);
            this.needSpace = false;
            this.indentationLevel = lastIndentationLevel;
            this.lastNumberOfNewLines = 0;
        }
    }

    /*
     * Exception decompiling
     */
    private void printJavadocGapLines(int textStartPosition, int textEndPosition, int newLines, boolean clearBlankLines, boolean footer, StringBuffer output) {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [6[CASE]], but top level block is 4[TRYBLOCK]
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:435)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:484)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    /*
     * Exception decompiling
     */
    private void printJavadocImmutableText(FormatJavadocText text, FormatJavadocBlock block, boolean textOnNewLine) {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [10[WHILELOOP]], but top level block is 2[TRYBLOCK]
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:435)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:484)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    private void printJavadocGapLinesForImmutableBlock(FormatJavadocBlock block) {
        int firstLineEnd = -1;
        int newLineStart = -1;
        int secondLineStart = -1;
        int starPosition = -1;
        int offset = 0;
        int start = block.tagEnd + 1;
        int end = block.nodes[0].sourceStart - 1;
        this.scanner.resetTo(start, end);
        int lineStart = block.lineStart;
        int lineEnd = Util.getLineNumber(block.nodes[0].sourceEnd, this.lineEnds, lineStart - 1, this.maxLines);
        boolean multiLinesBlock = lineEnd > lineStart + 1;
        int previousPosition = this.scanner.currentPosition;
        String newLineString = null;
        int indentationColumn = 0;
        int leadingSpaces = -1;
        while (!this.scanner.atEnd()) {
            char ch = (char)this.scanner.getNextChar();
            switch (ch) {
                case '\t': {
                    int reminder;
                    if (secondLineStart > 0 || firstLineEnd < 0) {
                        int n = reminder = this.tabLength == 0 ? 0 : offset % this.tabLength;
                        if (reminder == 0) {
                            offset += this.tabLength;
                            break;
                        }
                        offset = (offset / this.tabLength + 1) * this.tabLength;
                        break;
                    }
                    if (leadingSpaces < 0) break;
                    int n = reminder = this.tabLength == 0 ? 0 : offset % this.tabLength;
                    if (reminder == 0) {
                        leadingSpaces += this.tabLength;
                        break;
                    }
                    leadingSpaces = (offset / this.tabLength + 1) * this.tabLength;
                    break;
                }
                case '\n': 
                case '\r': {
                    if (firstLineEnd < 0) {
                        firstLineEnd = previousPosition;
                    }
                    if (leadingSpaces > 0 && multiLinesBlock) {
                        if (newLineString == null) {
                            this.column = 1;
                            this.tempBuffer.setLength(0);
                            this.printIndentationIfNecessary(this.tempBuffer);
                            this.tempBuffer.append(" * ");
                            this.column += BLOCK_LINE_PREFIX_LENGTH;
                            newLineString = this.tempBuffer.toString();
                            indentationColumn = this.column;
                        } else {
                            this.column = indentationColumn;
                        }
                        this.addReplaceEdit(newLineStart, newLineStart + indentationColumn - 2, newLineString);
                    }
                    newLineStart = this.scanner.currentPosition;
                    leadingSpaces = 0;
                    starPosition = -1;
                    if (!multiLinesBlock) break;
                    offset = 0;
                    secondLineStart = -1;
                    break;
                }
                case '*': {
                    if (starPosition >= 0 || firstLineEnd <= 0) break;
                    secondLineStart = this.scanner.currentPosition;
                    starPosition = this.scanner.currentPosition;
                    leadingSpaces = -1;
                    break;
                }
                default: {
                    if (secondLineStart > 0) {
                        if (secondLineStart == starPosition) {
                            secondLineStart = this.scanner.currentPosition;
                            break;
                        }
                        if (offset == 0 && multiLinesBlock) {
                            if (newLineString == null) {
                                this.tempBuffer.setLength(0);
                                this.column = 1;
                                this.printIndentationIfNecessary(this.tempBuffer);
                                this.tempBuffer.append(" * ");
                                this.column += BLOCK_LINE_PREFIX_LENGTH;
                                indentationColumn = this.column;
                                newLineString = this.tempBuffer.toString();
                            } else {
                                this.column = indentationColumn;
                            }
                            this.addReplaceEdit(newLineStart, secondLineStart - 1, newLineString);
                        }
                        ++offset;
                        break;
                    }
                    if (firstLineEnd < 0) {
                        ++offset;
                        break;
                    }
                    if (leadingSpaces < 0) break;
                    ++leadingSpaces;
                }
            }
            previousPosition = this.scanner.currentPosition;
        }
        this.column = multiLinesBlock ? (this.column += offset) : ++this.column;
        if (!multiLinesBlock) {
            if (firstLineEnd > 0) {
                this.addReplaceEdit(firstLineEnd, end, " ");
            }
        } else if (secondLineStart > 0) {
            if (newLineString == null) {
                this.tempBuffer.setLength(0);
                this.column = 1;
                this.printIndentationIfNecessary(this.tempBuffer);
                this.tempBuffer.append(" * ");
                this.column += BLOCK_LINE_PREFIX_LENGTH;
                newLineString = this.tempBuffer.toString();
                indentationColumn = this.column;
            } else {
                this.column = indentationColumn;
            }
            this.addReplaceEdit(newLineStart, secondLineStart - 1, newLineString);
        } else if (leadingSpaces > 0) {
            if (newLineString == null) {
                this.tempBuffer.setLength(0);
                this.column = 1;
                this.printIndentationIfNecessary(this.tempBuffer);
                this.tempBuffer.append(" * ");
                this.column += BLOCK_LINE_PREFIX_LENGTH;
                newLineString = this.tempBuffer.toString();
                indentationColumn = this.column;
            } else {
                this.column = indentationColumn;
            }
            this.addReplaceEdit(newLineStart, newLineStart + indentationColumn - 2, newLineString);
        }
        this.needSpace = false;
        this.scanner.resetTo(end + 1, this.scannerEndPosition - 1);
    }

    private int printJavadocHtmlTag(FormatJavadocText text, FormatJavadocBlock block, boolean textOnNewLine) {
        boolean needIndentation;
        boolean isValidHtmlSeparatorTag;
        boolean isHtmlSeparatorTag;
        StringBuffer buffer;
        int textStart;
        boolean clearBlankLines = this.formatter.preferences.comment_clear_blank_lines_in_javadoc_comment;
        int nextStart = textStart = text.sourceStart;
        int startLine = Util.getLineNumber(textStart, this.lineEnds, 0, this.maxLines);
        int htmlTagID = text.getHtmlTagID();
        if (text.depth >= this.javadocHtmlTagBuffers.length) {
            int length = this.javadocHtmlTagBuffers.length;
            this.javadocHtmlTagBuffers = new StringBuffer[text.depth + 6];
            System.arraycopy(this.javadocHtmlTagBuffers, 0, this.javadocHtmlTagBuffers, 0, length);
        }
        if ((buffer = this.javadocHtmlTagBuffers[text.depth]) == null) {
            this.javadocHtmlTagBuffers[text.depth] = buffer = new StringBuffer();
        } else {
            buffer.setLength(0);
        }
        int max = text.separatorsPtr;
        int linesAfter = 0;
        int previousEnd = -1;
        boolean isHtmlBreakTag = htmlTagID == 256;
        boolean bl = isHtmlSeparatorTag = htmlTagID == 4096;
        if (isHtmlBreakTag) {
            return 1;
        }
        boolean isCode = htmlTagID == 512;
        int idx = 0;
        int ptr = 0;
        while (idx <= max || text.htmlNodesPtr != -1 && ptr <= text.htmlNodesPtr) {
            int endLine;
            int linesGap;
            int end = idx > max ? text.sourceEnd : (int)(text.separators[idx] >>> 32);
            int nodeKind = 0;
            if (text.htmlNodesPtr >= 0 && ptr <= text.htmlNodesPtr && end > text.htmlNodes[ptr].sourceStart) {
                int newLines;
                FormatJavadocNode node = text.htmlNodes[ptr];
                FormatJavadocText htmlTag = node.isText() ? (FormatJavadocText)node : null;
                int n = newLines = htmlTag == null ? 0 : htmlTag.linesBefore;
                if (linesAfter > newLines && (newLines = linesAfter) > 1 && clearBlankLines && (idx < 2 || (text.htmlIndexes[idx - 2] & 0xFF00) != 512)) {
                    newLines = 1;
                }
                if (textStart < previousEnd) {
                    this.addReplaceEdit(textStart, previousEnd, buffer.toString());
                }
                boolean immutable = node.isImmutable();
                if (newLines == 0) {
                    newLines = this.printJavadocBlockNodesNewLines(block, node, previousEnd);
                }
                int nodeStart = node.sourceStart;
                if (newLines > 0 || idx > 1 && nodeStart > previousEnd + 1) {
                    this.printJavadocGapLines(previousEnd + 1, nodeStart - 1, newLines, clearBlankLines, false, null);
                }
                if (newLines > 0) {
                    textOnNewLine = true;
                }
                buffer.setLength(0);
                if (node.isText()) {
                    if (immutable) {
                        if (textOnNewLine && this.commentIndentation != null) {
                            this.addInsertEdit(node.sourceStart, this.commentIndentation);
                            this.column += this.commentIndentation.length();
                        }
                        this.printJavadocImmutableText(htmlTag, block, textOnNewLine);
                        this.column += this.getTextLength(block, htmlTag);
                        linesAfter = 0;
                    } else {
                        linesAfter = this.printJavadocHtmlTag(htmlTag, block, textOnNewLine);
                    }
                    nodeKind = 1;
                } else {
                    if (textOnNewLine && this.commentIndentation != null) {
                        this.addInsertEdit(node.sourceStart, this.commentIndentation);
                        this.column += this.commentIndentation.length();
                    }
                    this.printJavadocBlock((FormatJavadocBlock)node);
                    linesAfter = 0;
                    nodeKind = 2;
                }
                textStart = node.sourceEnd + 1;
                ++ptr;
                if (idx > max) {
                    return linesAfter;
                }
            } else {
                if (idx > 0 && linesAfter > 0) {
                    this.printJavadocGapLines(previousEnd + 1, nextStart - 1, linesAfter, clearBlankLines, false, buffer);
                    textOnNewLine = true;
                }
                boolean needIndentation2 = textOnNewLine;
                if (idx > 0 && !needIndentation2 && text.isTextAfterHtmlSeparatorTag(idx - 1)) {
                    needIndentation2 = true;
                }
                this.needSpace = idx > 1 && previousEnd + 1 < nextStart;
                this.printJavadocTextLine(buffer, nextStart, end, block, idx == 0, needIndentation2, idx == 0 || text.htmlIndexes[idx - 1] != -1);
                linesAfter = 0;
                if (idx == 0) {
                    if (isHtmlSeparatorTag) {
                        linesAfter = 1;
                    }
                } else if (text.htmlIndexes[idx - 1] == 256) {
                    linesAfter = 1;
                }
            }
            if ((linesGap = (startLine = Util.getLineNumber(nextStart = (int)text.separators[idx], this.lineEnds, (endLine = Util.getLineNumber(end, this.lineEnds, startLine - 1, this.maxLines)) - 1, this.maxLines)) - endLine) > 0 && !clearBlankLines && (idx == 0 || linesGap > 1 || idx < max && nodeKind == 1 && (text.htmlIndexes[idx - 1] & 0xFF00) != 2048) && linesAfter < linesGap) {
                linesAfter = linesGap;
            }
            boolean bl2 = textOnNewLine = linesAfter > 0;
            if (isCode) {
                int codeEnd = (int)(text.separators[max] >>> 32);
                if (codeEnd > end) {
                    if (this.formatter.preferences.comment_format_source) {
                        int newLines;
                        int lineStart;
                        if (textStart < end) {
                            this.addReplaceEdit(textStart, end, buffer.toString());
                        }
                        if (linesGap > 0 && nextStart > (lineStart = this.scanner.getLineStart(startLine))) {
                            this.scanner.resetTo(lineStart, nextStart - 1);
                            try {
                                int token = this.scanner.getNextToken();
                                if (token == 1000) {
                                    token = this.scanner.getNextToken();
                                }
                                if (token == 4) {
                                    nextStart = this.scanner.currentPosition;
                                }
                            }
                            catch (InvalidInputException invalidInputException) {}
                        }
                        if ((newLines = linesGap) == 0) {
                            newLines = 1;
                        }
                        this.needSpace = false;
                        this.printJavadocGapLines(end + 1, nextStart - 1, newLines, false, false, null);
                        this.printCodeSnippet(nextStart, codeEnd, linesGap);
                        nextStart = (int)text.separators[max];
                        this.printJavadocGapLines(codeEnd + 1, nextStart - 1, 1, false, false, null);
                        return 2;
                    }
                } else {
                    nextStart = (int)text.separators[max];
                    if (nextStart - 1 > end + 1) {
                        int line1 = Util.getLineNumber(end + 1, this.lineEnds, startLine - 1, this.maxLines);
                        int line2 = Util.getLineNumber(nextStart - 1, this.lineEnds, line1 - 1, this.maxLines);
                        int gapLines = line2 - line1 - 1;
                        this.printJavadocGapLines(end + 1, nextStart - 1, gapLines, false, false, null);
                        if (gapLines > 0) {
                            textOnNewLine = true;
                        }
                    }
                }
                return 1;
            }
            previousEnd = end;
            ++idx;
        }
        boolean closingTag = isHtmlBreakTag || text.htmlIndexes != null && (text.htmlIndexes[max] & 0xFF00) == htmlTagID;
        boolean bl3 = isValidHtmlSeparatorTag = max > 0 && isHtmlSeparatorTag && closingTag;
        if (previousEnd != -1) {
            if (isValidHtmlSeparatorTag && linesAfter == 0) {
                linesAfter = 1;
            }
            if (linesAfter > 0) {
                this.printJavadocGapLines(previousEnd + 1, nextStart - 1, linesAfter, clearBlankLines, false, buffer);
                boolean bl4 = textOnNewLine = linesAfter > 0;
            }
        }
        if (!(needIndentation = textOnNewLine) && !isHtmlBreakTag && text.htmlIndexes != null && text.isTextAfterHtmlSeparatorTag(max)) {
            needIndentation = true;
        }
        this.needSpace = !closingTag && max > 0 && previousEnd + 1 < nextStart;
        this.printJavadocTextLine(buffer, nextStart, text.sourceEnd, block, max <= 0, needIndentation, closingTag);
        if (textStart < text.sourceEnd) {
            this.addReplaceEdit(textStart, text.sourceEnd, buffer.toString());
        }
        this.needSpace = false;
        this.scanner.resetTo(text.sourceEnd + 1, this.scannerEndPosition - 1);
        return isValidHtmlSeparatorTag ? 1 : 0;
    }

    private void printJavadocNewLine(StringBuffer buffer) {
        buffer.append(this.lineSeparator);
        this.column = 1;
        this.printIndentationIfNecessary(buffer);
        buffer.append(" * ");
        this.column += BLOCK_LINE_PREFIX_LENGTH;
        ++this.line;
        ++this.lastNumberOfNewLines;
    }

    private void printJavadocText(FormatJavadocText text, FormatJavadocBlock block, boolean textOnNewLine) {
        int textStart;
        boolean clearBlankLines = this.formatter.preferences.comment_clear_blank_lines_in_javadoc_comment;
        boolean joinLines = this.formatter.preferences.join_lines_in_comments;
        this.javadocTextBuffer.setLength(0);
        int nextStart = textStart = text.sourceStart;
        int startLine = Util.getLineNumber(textStart, this.lineEnds, 0, this.maxLines);
        int idx = 0;
        int max = text.separatorsPtr;
        while (idx <= max) {
            int end = (int)(text.separators[idx] >>> 32);
            boolean needIndentation = textOnNewLine;
            if (idx > 0 && !needIndentation && text.isTextAfterHtmlSeparatorTag(idx - 1)) {
                needIndentation = true;
            }
            this.needSpace = idx > 0;
            this.printJavadocTextLine(this.javadocTextBuffer, nextStart, end, block, idx == 0 || !joinLines && textOnNewLine, needIndentation, false);
            textOnNewLine = false;
            nextStart = (int)text.separators[idx];
            if (!clearBlankLines || !joinLines) {
                int endLine = Util.getLineNumber(end, this.lineEnds, startLine - 1, this.maxLines);
                startLine = Util.getLineNumber(nextStart, this.lineEnds, endLine - 1, this.maxLines);
                int gapLine = endLine;
                if (joinLines) {
                    ++gapLine;
                }
                if (startLine > gapLine) {
                    this.addReplaceEdit(textStart, end, this.javadocTextBuffer.toString());
                    textStart = nextStart;
                    this.javadocTextBuffer.setLength(0);
                    int newLines = startLine - endLine;
                    if (clearBlankLines) {
                        newLines = 1;
                    }
                    this.printJavadocGapLines(end + 1, nextStart - 1, newLines, this.formatter.preferences.comment_clear_blank_lines_in_javadoc_comment, false, null);
                    textOnNewLine = true;
                } else if (startLine > endLine) {
                    textOnNewLine = !joinLines;
                }
            }
            ++idx;
        }
        boolean needIndentation = textOnNewLine;
        this.needSpace = text.separatorsPtr >= 0;
        this.printJavadocTextLine(this.javadocTextBuffer, nextStart, text.sourceEnd, block, text.separatorsPtr == -1, needIndentation, false);
        this.addReplaceEdit(textStart, text.sourceEnd, this.javadocTextBuffer.toString());
        this.needSpace = false;
        this.scanner.resetTo(text.sourceEnd + 1, this.scannerEndPosition - 1);
    }

    private void printJavadocTextLine(StringBuffer buffer, int textStart, int textEnd, FormatJavadocBlock block, boolean firstText, boolean needIndentation, boolean isHtmlTag) {
        boolean headerLine = block.isHeaderLine() && this.lastNumberOfNewLines == 0;
        this.javadocTokensBuffer.setLength(0);
        int firstColumn = 1 + this.indentationLevel + BLOCK_LINE_PREFIX_LENGTH;
        int maxColumn = this.formatter.preferences.comment_line_length + 1;
        if (headerLine) {
            ++firstColumn;
            ++maxColumn;
        }
        if (needIndentation && this.commentIndentation != null) {
            buffer.append(this.commentIndentation);
            this.column += this.commentIndentation.length();
            firstColumn += this.commentIndentation.length();
        }
        if (this.column < firstColumn) {
            this.column = firstColumn;
        }
        String newLineString = null;
        try {
            this.scanner.resetTo(textStart, textEnd);
            this.scanner.skipComments = true;
            int previousToken = -1;
            boolean textOnNewLine = needIndentation;
            block9: while (!this.scanner.atEnd()) {
                int token;
                try {
                    token = this.scanner.getNextToken();
                }
                catch (InvalidInputException invalidInputException) {
                    token = this.consumeInvalidToken(textEnd);
                }
                int tokensBufferLength = this.javadocTokensBuffer.length();
                int tokenStart = this.scanner.getCurrentTokenStartPosition();
                int tokenLength = (this.scanner.atEnd() ? this.scanner.eofPosition : this.scanner.currentPosition) - tokenStart;
                boolean insertSpace = (previousToken == 1000 || this.needSpace) && !textOnNewLine;
                String tokensBufferString = this.javadocTokensBuffer.toString().trim();
                switch (token) {
                    case 1000: {
                        if (tokensBufferLength > 0) {
                            boolean shouldSplit;
                            boolean bl = shouldSplit = this.column + tokensBufferLength > maxColumn && !isHtmlTag && (insertSpace || tokensBufferLength > 1) && tokensBufferString.charAt(0) != '@';
                            if (shouldSplit) {
                                ++this.lastNumberOfNewLines;
                                ++this.line;
                                if (newLineString == null) {
                                    this.tempBuffer.setLength(0);
                                    this.tempBuffer.append(this.lineSeparator);
                                    this.column = 1;
                                    this.printIndentationIfNecessary(this.tempBuffer);
                                    this.tempBuffer.append(" * ");
                                    this.column += BLOCK_LINE_PREFIX_LENGTH;
                                    if (this.commentIndentation != null) {
                                        this.tempBuffer.append(this.commentIndentation);
                                        this.column += this.commentIndentation.length();
                                    }
                                    firstColumn = this.column;
                                    newLineString = this.tempBuffer.toString();
                                } else {
                                    this.column = firstColumn;
                                }
                                buffer.append(newLineString);
                                buffer.append(tokensBufferString);
                                this.column += tokensBufferString.length();
                                if (headerLine) {
                                    --firstColumn;
                                    --maxColumn;
                                    headerLine = false;
                                }
                            } else {
                                buffer.append(this.javadocTokensBuffer);
                                this.column += tokensBufferLength;
                            }
                            this.javadocTokensBuffer.setLength(0);
                        }
                        textOnNewLine = false;
                        previousToken = token;
                        break;
                    }
                    case 51: {
                        if (this.scanner.currentPosition > this.scanner.eofPosition) {
                            this.scanner.resetTo(this.scanner.startPosition, textEnd);
                            this.scanner.getNextChar();
                            token = 1;
                        }
                    }
                    default: {
                        boolean shouldSplit;
                        int lastColumn = this.column + tokensBufferLength + tokenLength;
                        if (insertSpace) {
                            ++lastColumn;
                        }
                        boolean bl = shouldSplit = !(lastColumn <= maxColumn || isHtmlTag && previousToken != -1 || token == 53 || tokensBufferLength != 0 && this.javadocTokensBuffer.charAt(tokensBufferLength - 1) == '@');
                        if (shouldSplit) {
                            if (!(tokensBufferLength <= 0 && tokenLength >= maxColumn || isHtmlTag || tokensBufferLength <= 0 || firstColumn + tokensBufferLength + tokenLength < maxColumn)) {
                                buffer.append(this.javadocTokensBuffer);
                                this.column += tokensBufferLength;
                                this.javadocTokensBuffer.setLength(0);
                                tokensBufferLength = 0;
                                textOnNewLine = false;
                            }
                            if (!(tokensBufferLength <= 0 && this.column <= firstColumn || textOnNewLine && firstText)) {
                                ++this.lastNumberOfNewLines;
                                ++this.line;
                                if (newLineString == null) {
                                    this.tempBuffer.setLength(0);
                                    this.tempBuffer.append(this.lineSeparator);
                                    this.column = 1;
                                    this.printIndentationIfNecessary(this.tempBuffer);
                                    this.tempBuffer.append(" * ");
                                    this.column += BLOCK_LINE_PREFIX_LENGTH;
                                    if (this.commentIndentation != null) {
                                        this.tempBuffer.append(this.commentIndentation);
                                        this.column += this.commentIndentation.length();
                                    }
                                    firstColumn = this.column;
                                    newLineString = this.tempBuffer.toString();
                                } else {
                                    this.column = firstColumn;
                                }
                                buffer.append(newLineString);
                            }
                            if (tokensBufferLength > 0) {
                                String tokensString = tokensBufferString;
                                buffer.append(tokensString);
                                this.column += tokensString.length();
                                this.javadocTokensBuffer.setLength(0);
                                tokensBufferLength = 0;
                            }
                            buffer.append(this.scanner.source, tokenStart, tokenLength);
                            this.column += tokenLength;
                            textOnNewLine = false;
                            if (headerLine) {
                                --firstColumn;
                                --maxColumn;
                                headerLine = false;
                            }
                        } else {
                            if (insertSpace) {
                                this.javadocTokensBuffer.append(' ');
                            }
                            this.javadocTokensBuffer.append(this.scanner.source, tokenStart, tokenLength);
                        }
                        previousToken = token;
                        this.needSpace = false;
                        if (!headerLine || lastColumn != maxColumn || !this.scanner.atEnd()) continue block9;
                        ++this.lastNumberOfNewLines;
                        ++this.line;
                    }
                }
            }
        }
        finally {
            this.scanner.skipComments = false;
            if (this.javadocTokensBuffer.length() > 0) {
                buffer.append(this.javadocTokensBuffer);
                this.column += this.javadocTokensBuffer.length();
            }
        }
    }

    public void printModifiers(Annotation[] annotations, ASTVisitor visitor) {
        this.printModifiers(annotations, visitor, 0);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void printModifiers(Annotation[] annotations, ASTVisitor visitor, int annotationSourceKind) {
        try {
            int annotationsLength = annotations != null ? annotations.length : 0;
            int annotationsIndex = 0;
            boolean isFirstModifier = true;
            int currentTokenStartPosition = this.scanner.currentPosition;
            boolean hasComment = false;
            boolean hasModifiers = false;
            while ((this.currentToken = this.scanner.getNextToken()) != 69) {
                int foundTaskCount = this.scanner.foundTaskCount;
                int tokenStartPosition = this.scanner.getCurrentTokenStartPosition();
                int tokenEndPosition = this.scanner.getCurrentTokenEndPosition();
                switch (this.currentToken) {
                    case 54: 
                    case 55: 
                    case 56: 
                    case 57: 
                    case 58: 
                    case 59: 
                    case 60: 
                    case 61: 
                    case 62: 
                    case 63: 
                    case 64: {
                        hasModifiers = true;
                        this.print(this.scanner.currentPosition - this.scanner.startPosition, !isFirstModifier);
                        isFirstModifier = false;
                        currentTokenStartPosition = this.scanner.currentPosition;
                        break;
                    }
                    case 53: {
                        hasModifiers = true;
                        if (!isFirstModifier) {
                            this.space();
                        }
                        this.scanner.resetTo(this.scanner.getCurrentTokenStartPosition(), this.scannerEndPosition - 1);
                        if (annotationsIndex >= annotationsLength) return;
                        boolean insertSpaceBeforeBrace = this.formatter.preferences.insert_space_before_opening_brace_in_array_initializer;
                        this.formatter.preferences.insert_space_before_opening_brace_in_array_initializer = false;
                        try {
                            annotations[annotationsIndex++].traverse(visitor, (BlockScope)null);
                        }
                        finally {
                            this.formatter.preferences.insert_space_before_opening_brace_in_array_initializer = insertSpaceBeforeBrace;
                        }
                        boolean shouldAddNewLine = false;
                        switch (annotationSourceKind) {
                            case 1: {
                                if (!this.formatter.preferences.insert_new_line_after_annotation_on_type) break;
                                shouldAddNewLine = true;
                                break;
                            }
                            case 2: {
                                if (!this.formatter.preferences.insert_new_line_after_annotation_on_field) break;
                                shouldAddNewLine = true;
                                break;
                            }
                            case 3: {
                                if (!this.formatter.preferences.insert_new_line_after_annotation_on_method) break;
                                shouldAddNewLine = true;
                                break;
                            }
                            case 4: {
                                if (!this.formatter.preferences.insert_new_line_after_annotation_on_package) break;
                                shouldAddNewLine = true;
                                break;
                            }
                            case 5: {
                                if (!this.formatter.preferences.insert_new_line_after_annotation_on_parameter) break;
                                shouldAddNewLine = true;
                                break;
                            }
                            case 6: {
                                if (!this.formatter.preferences.insert_new_line_after_annotation_on_local_variable) break;
                                shouldAddNewLine = true;
                            }
                        }
                        if (shouldAddNewLine) {
                            this.printNewLine();
                        }
                        isFirstModifier = false;
                        currentTokenStartPosition = this.scanner.currentPosition;
                        break;
                    }
                    case 1002: 
                    case 1003: {
                        boolean turnOff;
                        if (this.useTags && this.editsEnabled) {
                            turnOff = false;
                            if (foundTaskCount > 0) {
                                this.setEditsEnabled(foundTaskCount);
                                turnOff = true;
                            } else if (this.tagsKind == this.currentToken && CharOperation.equals(this.disablingTag, this.scanner.source, tokenStartPosition, tokenEndPosition + 1)) {
                                this.editsEnabled = false;
                                turnOff = true;
                            }
                            if (turnOff && !this.editsEnabled && this.editsIndex > 1) {
                                OptimizedReplaceEdit currentEdit = this.edits[this.editsIndex - 1];
                                if (this.scanner.startPosition == currentEdit.offset + currentEdit.length) {
                                    this.printNewLinesBeforeDisablingComment();
                                }
                            }
                        }
                        this.printBlockComment(this.currentToken == 1003);
                        if (this.useTags && !this.editsEnabled) {
                            if (foundTaskCount > 0) {
                                this.setEditsEnabled(foundTaskCount);
                            } else if (this.tagsKind == this.currentToken) {
                                this.editsEnabled = CharOperation.equals(this.enablingTag, this.scanner.source, tokenStartPosition, tokenEndPosition + 1);
                            }
                        }
                        currentTokenStartPosition = this.scanner.currentPosition;
                        hasComment = true;
                        break;
                    }
                    case 1001: {
                        boolean turnOff;
                        tokenEndPosition = -this.scanner.commentStops[this.scanner.commentPtr];
                        if (this.useTags && this.editsEnabled) {
                            turnOff = false;
                            if (foundTaskCount > 0) {
                                this.setEditsEnabled(foundTaskCount);
                                turnOff = true;
                            } else if (this.tagsKind == this.currentToken && CharOperation.equals(this.disablingTag, this.scanner.source, tokenStartPosition, tokenEndPosition)) {
                                this.editsEnabled = false;
                                turnOff = true;
                            }
                            if (turnOff && !this.editsEnabled && this.editsIndex > 1) {
                                OptimizedReplaceEdit currentEdit = this.edits[this.editsIndex - 1];
                                if (this.scanner.startPosition == currentEdit.offset + currentEdit.length) {
                                    this.printNewLinesBeforeDisablingComment();
                                }
                            }
                        }
                        this.printLineComment();
                        if (this.useTags && !this.editsEnabled) {
                            if (foundTaskCount > 0) {
                                this.setEditsEnabled(foundTaskCount);
                            } else if (this.tagsKind == this.currentToken) {
                                this.editsEnabled = CharOperation.equals(this.enablingTag, this.scanner.source, tokenStartPosition, tokenEndPosition);
                            }
                        }
                        currentTokenStartPosition = this.scanner.currentPosition;
                        break;
                    }
                    case 1000: {
                        this.addDeleteEdit(this.scanner.getCurrentTokenStartPosition(), this.scanner.getCurrentTokenEndPosition());
                        int count = 0;
                        char[] whiteSpaces = this.scanner.getCurrentTokenSource();
                        int i = 0;
                        int max = whiteSpaces.length;
                        while (i < max) {
                            switch (whiteSpaces[i]) {
                                case '\r': {
                                    if (i + 1 < max && whiteSpaces[i + 1] == '\n') {
                                        ++i;
                                    }
                                    ++count;
                                    break;
                                }
                                case '\n': {
                                    ++count;
                                }
                            }
                            ++i;
                        }
                        if (count >= 1 && hasComment) {
                            this.printNewLine();
                        }
                        currentTokenStartPosition = this.scanner.currentPosition;
                        hasComment = false;
                        break;
                    }
                    default: {
                        if (hasModifiers) {
                            this.space();
                        }
                        this.scanner.resetTo(currentTokenStartPosition, this.scannerEndPosition - 1);
                        return;
                    }
                }
            }
            return;
        }
        catch (InvalidInputException e) {
            throw new AbortFormatting(e);
        }
    }

    public void printNewLine() {
        this.printNewLine(this.scanner.getCurrentTokenEndPosition() + 1);
    }

    public void printNewLine(int insertPosition) {
        if (this.nlsTagCounter > 0) {
            return;
        }
        if (this.lastNumberOfNewLines >= 1) {
            if (!this.preserveLineBreakIndentation) {
                this.column = 1;
            }
            this.preserveLineBreakIndentation = false;
            return;
        }
        this.addInsertEdit(insertPosition, this.lineSeparator);
        ++this.line;
        this.lastNumberOfNewLines = 1;
        this.column = 1;
        this.needSpace = false;
        this.pendingSpace = false;
        this.preserveLineBreakIndentation = false;
        this.lastLineComment.contiguous = false;
    }

    /*
     * Exception decompiling
     */
    private void printNewLinesBeforeDisablingComment() {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [8[DOLOOP]], but top level block is 0[TRYBLOCK]
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:435)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:484)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    /*
     * Exception decompiling
     */
    private boolean printNewLinesCharacters(int offset, int length) {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [7[DOLOOP]], but top level block is 8[WHILELOOP]
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:435)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:484)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    public void printNextToken(int expectedTokenType) {
        this.printNextToken(expectedTokenType, false);
    }

    public void printNextToken(int expectedTokenType, boolean considerSpaceIfAny) {
        this.printNextToken(expectedTokenType, considerSpaceIfAny, 1);
    }

    public void printNextToken(int expectedTokenType, boolean considerSpaceIfAny, int emptyLineRules) {
        this.printComment(0, 0, emptyLineRules);
        try {
            this.currentToken = this.scanner.getNextToken();
            if (expectedTokenType != this.currentToken) {
                throw new AbortFormatting("unexpected token type, expecting:" + expectedTokenType + ", actual:" + this.currentToken);
            }
            this.print(this.scanner.currentPosition - this.scanner.startPosition, considerSpaceIfAny);
        }
        catch (InvalidInputException e) {
            throw new AbortFormatting(e);
        }
    }

    public void printNextToken(int[] expectedTokenTypes) {
        this.printNextToken(expectedTokenTypes, false);
    }

    public void printNextToken(int[] expectedTokenTypes, boolean considerSpaceIfAny) {
        this.printComment(0, 0);
        try {
            this.currentToken = this.scanner.getNextToken();
            if (Arrays.binarySearch(expectedTokenTypes, this.currentToken) < 0) {
                StringBuffer expectations = new StringBuffer(5);
                int i = 0;
                while (i < expectedTokenTypes.length) {
                    if (i > 0) {
                        expectations.append(',');
                    }
                    expectations.append(expectedTokenTypes[i]);
                    ++i;
                }
                throw new AbortFormatting("unexpected token type, expecting:[" + expectations.toString() + "], actual:" + this.currentToken);
            }
            this.print(this.scanner.currentPosition - this.scanner.startPosition, considerSpaceIfAny);
        }
        catch (InvalidInputException e) {
            throw new AbortFormatting(e);
        }
    }

    public void printArrayQualifiedReference(int numberOfTokens, int sourceEnd) {
        int currentTokenStartPosition = this.scanner.currentPosition;
        int numberOfIdentifiers = 0;
        try {
            block11: do {
                this.printComment(0, 0);
                this.currentToken = this.scanner.getNextToken();
                switch (this.currentToken) {
                    case 69: {
                        return;
                    }
                    case 1000: {
                        this.addDeleteEdit(this.scanner.getCurrentTokenStartPosition(), this.scanner.getCurrentTokenEndPosition());
                        currentTokenStartPosition = this.scanner.currentPosition;
                        break;
                    }
                    case 1002: 
                    case 1003: {
                        this.printBlockComment(false);
                        currentTokenStartPosition = this.scanner.currentPosition;
                        break;
                    }
                    case 1001: {
                        this.printLineComment();
                        currentTokenStartPosition = this.scanner.currentPosition;
                        break;
                    }
                    case 26: {
                        this.print(this.scanner.currentPosition - this.scanner.startPosition, false);
                        currentTokenStartPosition = this.scanner.currentPosition;
                        if (++numberOfIdentifiers != numberOfTokens) continue block11;
                        this.scanner.resetTo(currentTokenStartPosition, this.scannerEndPosition - 1);
                        return;
                    }
                    case 3: {
                        this.print(this.scanner.currentPosition - this.scanner.startPosition, false);
                        currentTokenStartPosition = this.scanner.currentPosition;
                        break;
                    }
                    case 28: {
                        currentTokenStartPosition = this.scanner.startPosition;
                    }
                    default: {
                        this.scanner.resetTo(currentTokenStartPosition, this.scannerEndPosition - 1);
                        return;
                    }
                }
            } while (this.scanner.currentPosition <= sourceEnd);
        }
        catch (InvalidInputException e) {
            throw new AbortFormatting(e);
        }
    }

    public void printQualifiedReference(int sourceEnd, boolean expectParenthesis) {
        int currentTokenStartPosition = this.scanner.currentPosition;
        try {
            do {
                this.printComment(0, 0);
                this.currentToken = this.scanner.getNextToken();
                switch (this.currentToken) {
                    case 69: {
                        return;
                    }
                    case 1000: {
                        this.addDeleteEdit(this.scanner.getCurrentTokenStartPosition(), this.scanner.getCurrentTokenEndPosition());
                        currentTokenStartPosition = this.scanner.currentPosition;
                        break;
                    }
                    case 1002: 
                    case 1003: {
                        this.printBlockComment(false);
                        currentTokenStartPosition = this.scanner.currentPosition;
                        break;
                    }
                    case 1001: {
                        this.printLineComment();
                        currentTokenStartPosition = this.scanner.currentPosition;
                        break;
                    }
                    case 3: 
                    case 26: {
                        this.print(this.scanner.currentPosition - this.scanner.startPosition, false);
                        currentTokenStartPosition = this.scanner.currentPosition;
                        break;
                    }
                    case 28: {
                        if (expectParenthesis) {
                            currentTokenStartPosition = this.scanner.startPosition;
                        }
                    }
                    default: {
                        this.scanner.resetTo(currentTokenStartPosition, this.scannerEndPosition - 1);
                        return;
                    }
                }
            } while (this.scanner.currentPosition <= sourceEnd);
        }
        catch (InvalidInputException e) {
            throw new AbortFormatting(e);
        }
    }

    private void printRule(StringBuffer stringBuffer) {
        int i = 0;
        while (i < this.pageWidth) {
            if (i % this.tabLength == 0) {
                stringBuffer.append('+');
            } else {
                stringBuffer.append('-');
            }
            ++i;
        }
        stringBuffer.append(this.lineSeparator);
        i = 0;
        while (i < this.pageWidth / this.tabLength) {
            stringBuffer.append(i);
            stringBuffer.append('\t');
            ++i;
        }
    }

    void redoAlignment(AlignmentException e) {
        if (e.relativeDepth > 0) {
            --e.relativeDepth;
            this.currentAlignment = this.currentAlignment.enclosing;
            throw e;
        }
        this.resetAt(this.currentAlignment.location);
        this.scanner.resetTo(this.currentAlignment.location.inputOffset, this.scanner.eofPosition - 1);
        this.currentAlignment.chunkKind = 0;
    }

    void redoMemberAlignment(AlignmentException e) {
        this.resetAt(this.memberAlignment.location);
        this.scanner.resetTo(this.memberAlignment.location.inputOffset, this.scanner.eofPosition - 1);
        this.memberAlignment.chunkKind = 0;
    }

    public void reset() {
        this.checkLineWrapping = true;
        this.line = 0;
        this.column = 1;
        this.editsIndex = 0;
        this.nlsTagCounter = 0;
    }

    private void resetAt(Location location) {
        this.line = location.outputLine;
        this.column = location.outputColumn;
        this.indentationLevel = location.outputIndentationLevel;
        this.numberOfIndentations = location.numberOfIndentations;
        this.lastNumberOfNewLines = location.lastNumberOfNewLines;
        this.needSpace = location.needSpace;
        this.pendingSpace = location.pendingSpace;
        this.editsIndex = location.editsIndex;
        this.nlsTagCounter = location.nlsTagCounter;
        if (this.editsIndex > 0) {
            this.edits[this.editsIndex - 1] = location.textEdit;
        }
        this.formatter.lastLocalDeclarationSourceStart = location.lastLocalDeclarationSourceStart;
    }

    public void resetScanner(char[] compilationUnitSource) {
        this.scanner.setSource(compilationUnitSource);
        this.scannerEndPosition = compilationUnitSource.length;
        this.scanner.resetTo(0, this.scannerEndPosition - 1);
        this.edits = new OptimizedReplaceEdit[100];
        this.maxLines = this.lineEnds == null ? -1 : this.lineEnds.length - 1;
        this.scanner.lineEnds = this.lineEnds;
        this.scanner.linePtr = this.maxLines;
        this.initFormatterCommentParser();
    }

    private void resize() {
        this.edits = new OptimizedReplaceEdit[this.editsIndex * 2];
        System.arraycopy(this.edits, 0, this.edits, 0, this.editsIndex);
    }

    private void setCommentIndentation(int commentIndentationLevel) {
        if (commentIndentationLevel == 0) {
            this.commentIndentation = null;
        } else {
            int length = COMMENT_INDENTATIONS.length;
            if (commentIndentationLevel > length) {
                String[] stringArray = COMMENT_INDENTATIONS;
                COMMENT_INDENTATIONS = new String[commentIndentationLevel + 10];
                System.arraycopy(stringArray, 0, COMMENT_INDENTATIONS, 0, length);
            }
            this.commentIndentation = COMMENT_INDENTATIONS[commentIndentationLevel - 1];
            if (this.commentIndentation == null) {
                this.tempBuffer.setLength(0);
                int i = 0;
                while (i < commentIndentationLevel) {
                    this.tempBuffer.append(' ');
                    ++i;
                }
                Scribe.COMMENT_INDENTATIONS[commentIndentationLevel - 1] = this.commentIndentation = this.tempBuffer.toString();
            }
        }
    }

    private void setEditsEnabled(int count) {
        int i = 0;
        while (i < count) {
            if (this.disablingTag != null && CharOperation.equals(this.scanner.foundTaskTags[i], this.disablingTag)) {
                this.editsEnabled = false;
            }
            if (this.enablingTag != null && CharOperation.equals(this.scanner.foundTaskTags[i], this.enablingTag)) {
                this.editsEnabled = true;
            }
            ++i;
        }
    }

    void setIncludeComments(boolean on) {
        this.formatComments = on ? (this.formatComments |= 0x1000) : (this.formatComments &= 0xFFFFEFFF);
    }

    void setHeaderComment(int position) {
        this.headerEndPosition = position;
    }

    public void space() {
        if (!this.needSpace) {
            return;
        }
        this.lastNumberOfNewLines = 0;
        this.pendingSpace = true;
        ++this.column;
        this.needSpace = false;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("(page width = " + this.pageWidth + ") - (tabChar = ");
        switch (this.tabChar) {
            case 1: {
                stringBuffer.append("TAB");
                break;
            }
            case 2: {
                stringBuffer.append("SPACE");
                break;
            }
            default: {
                stringBuffer.append("MIXED");
            }
        }
        stringBuffer.append(") - (tabSize = " + this.tabLength + ")").append(this.lineSeparator).append("(line = " + this.line + ") - (column = " + this.column + ") - (identationLevel = " + this.indentationLevel + ")").append(this.lineSeparator).append("(needSpace = " + this.needSpace + ") - (lastNumberOfNewLines = " + this.lastNumberOfNewLines + ") - (checkLineWrapping = " + this.checkLineWrapping + ")").append(this.lineSeparator).append("==================================================================================").append(this.lineSeparator);
        if (this.tabLength > 0) {
            this.printRule(stringBuffer);
        }
        return stringBuffer.toString();
    }

    public void unIndent() {
        this.indentationLevel -= this.indentationSize;
        --this.numberOfIndentations;
    }

    static class LineComment {
        boolean contiguous = false;
        int currentIndentation;
        int indentation;
        int lines;
        char[] leadingSpaces;

        LineComment() {
        }
    }
}

