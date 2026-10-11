/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.parser;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.parser.NLSTag;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.compiler.parser.TerminalTokens;
import org.eclipse.jdt.internal.compiler.util.Util;

public class Scanner
implements TerminalTokens {
    public long sourceLevel;
    public long complianceLevel;
    public boolean useAssertAsAnIndentifier = false;
    public boolean containsAssertKeyword = false;
    public boolean useEnumAsAnIndentifier = false;
    public boolean recordLineSeparator = false;
    public char currentCharacter;
    public int startPosition;
    public int currentPosition;
    public int initialPosition;
    public int eofPosition;
    public boolean skipComments = false;
    public boolean tokenizeComments = false;
    public boolean tokenizeWhiteSpace = false;
    public char[] source;
    public char[] withoutUnicodeBuffer;
    public int withoutUnicodePtr;
    public boolean unicodeAsBackSlash = false;
    public boolean scanningFloatLiteral = false;
    public static final int COMMENT_ARRAYS_SIZE = 30;
    public int[] commentStops = new int[30];
    public int[] commentStarts = new int[30];
    public int[] commentTagStarts = new int[30];
    public int commentPtr = -1;
    protected int lastCommentLinePosition = -1;
    public char[][] foundTaskTags = null;
    public char[][] foundTaskMessages;
    public char[][] foundTaskPriorities = null;
    public int[][] foundTaskPositions;
    public int foundTaskCount = 0;
    public char[][] taskTags = null;
    public char[][] taskPriorities = null;
    public boolean isTaskCaseSensitive = true;
    public boolean diet = false;
    public int[] lineEnds = new int[250];
    public int linePtr = -1;
    public boolean wasAcr = false;
    public static final String END_OF_SOURCE = "End_Of_Source";
    public static final String INVALID_HEXA = "Invalid_Hexa_Literal";
    public static final String INVALID_OCTAL = "Invalid_Octal_Literal";
    public static final String INVALID_CHARACTER_CONSTANT = "Invalid_Character_Constant";
    public static final String INVALID_ESCAPE = "Invalid_Escape";
    public static final String INVALID_INPUT = "Invalid_Input";
    public static final String INVALID_UNICODE_ESCAPE = "Invalid_Unicode_Escape";
    public static final String INVALID_FLOAT = "Invalid_Float_Literal";
    public static final String INVALID_LOW_SURROGATE = "Invalid_Low_Surrogate";
    public static final String INVALID_HIGH_SURROGATE = "Invalid_High_Surrogate";
    public static final String NULL_SOURCE_STRING = "Null_Source_String";
    public static final String UNTERMINATED_STRING = "Unterminated_String";
    public static final String UNTERMINATED_COMMENT = "Unterminated_Comment";
    public static final String INVALID_CHAR_IN_STRING = "Invalid_Char_In_String";
    public static final String INVALID_DIGIT = "Invalid_Digit";
    private static final int[] EMPTY_LINE_ENDS = Util.EMPTY_INT_ARRAY;
    public static final String INVALID_BINARY = "Invalid_Binary_Literal";
    public static final String BINARY_LITERAL_NOT_BELOW_17 = "Binary_Literal_Not_Below_17";
    public static final String ILLEGAL_HEXA_LITERAL = "Illegal_Hexa_Literal";
    public static final String INVALID_UNDERSCORE = "Invalid_Underscore";
    public static final String UNDERSCORES_IN_LITERALS_NOT_BELOW_17 = "Underscores_In_Literals_Not_Below_17";
    static final char[] charArray_a = new char[]{'a'};
    static final char[] charArray_b = new char[]{'b'};
    static final char[] charArray_c = new char[]{'c'};
    static final char[] charArray_d = new char[]{'d'};
    static final char[] charArray_e = new char[]{'e'};
    static final char[] charArray_f = new char[]{'f'};
    static final char[] charArray_g = new char[]{'g'};
    static final char[] charArray_h = new char[]{'h'};
    static final char[] charArray_i = new char[]{'i'};
    static final char[] charArray_j = new char[]{'j'};
    static final char[] charArray_k = new char[]{'k'};
    static final char[] charArray_l = new char[]{'l'};
    static final char[] charArray_m = new char[]{'m'};
    static final char[] charArray_n = new char[]{'n'};
    static final char[] charArray_o = new char[]{'o'};
    static final char[] charArray_p = new char[]{'p'};
    static final char[] charArray_q = new char[]{'q'};
    static final char[] charArray_r = new char[]{'r'};
    static final char[] charArray_s = new char[]{'s'};
    static final char[] charArray_t = new char[]{'t'};
    static final char[] charArray_u = new char[]{'u'};
    static final char[] charArray_v = new char[]{'v'};
    static final char[] charArray_w = new char[]{'w'};
    static final char[] charArray_x = new char[]{'x'};
    static final char[] charArray_y = new char[]{'y'};
    static final char[] charArray_z = new char[]{'z'};
    static final char[] initCharArray = new char[6];
    static final int TableSize = 30;
    static final int InternalTableSize = 6;
    public static final int OptimizedLength = 7;
    public final char[][][][] charArray_length = new char[7][30][6][];
    public static final char[] TAG_PREFIX = "//$NON-NLS-".toCharArray();
    public static final int TAG_PREFIX_LENGTH = TAG_PREFIX.length;
    public static final char TAG_POSTFIX = '$';
    public static final int TAG_POSTFIX_LENGTH = 1;
    private NLSTag[] nlsTags = null;
    protected int nlsTagsPtr;
    public boolean checkNonExternalizedStringLiterals;
    protected int lastPosition;
    public boolean returnOnlyGreater = false;
    int newEntry2;
    int newEntry3;
    int newEntry4;
    int newEntry5;
    int newEntry6;
    public boolean insideRecovery;
    public static final int RoundBracket = 0;
    public static final int SquareBracket = 1;
    public static final int CurlyBracket = 2;
    public static final int BracketKinds = 3;
    public static final int LOW_SURROGATE_MIN_VALUE = 56320;
    public static final int HIGH_SURROGATE_MIN_VALUE = 55296;
    public static final int HIGH_SURROGATE_MAX_VALUE = 56319;
    public static final int LOW_SURROGATE_MAX_VALUE = 57343;

    public Scanner() {
        this(false, false, false, 0x2F0000L, null, null, true);
    }

    public Scanner(boolean tokenizeComments, boolean tokenizeWhiteSpace, boolean checkNonExternalizedStringLiterals, long sourceLevel, long complianceLevel, char[][] taskTags, char[][] taskPriorities, boolean isTaskCaseSensitive) {
        int i = 0;
        while (i < 6) {
            int j = 0;
            while (j < 30) {
                int k = 0;
                while (k < 6) {
                    this.charArray_length[i][j][k] = initCharArray;
                    ++k;
                }
                ++j;
            }
            ++i;
        }
        this.newEntry2 = 0;
        this.newEntry3 = 0;
        this.newEntry4 = 0;
        this.newEntry5 = 0;
        this.newEntry6 = 0;
        this.insideRecovery = false;
        this.eofPosition = Integer.MAX_VALUE;
        this.tokenizeComments = tokenizeComments;
        this.tokenizeWhiteSpace = tokenizeWhiteSpace;
        this.sourceLevel = sourceLevel;
        this.complianceLevel = complianceLevel;
        this.checkNonExternalizedStringLiterals = checkNonExternalizedStringLiterals;
        if (taskTags != null) {
            int taskTagsLength;
            int length = taskTagsLength = ((char[][])taskTags).length;
            if (taskPriorities != null) {
                int taskPrioritiesLength = ((char[][])taskPriorities).length;
                if (taskPrioritiesLength != taskTagsLength) {
                    if (taskPrioritiesLength > taskTagsLength) {
                        char[][] cArray = taskPriorities;
                        char[][] cArrayArray = new char[taskTagsLength][];
                        taskPriorities = cArrayArray;
                        System.arraycopy(cArray, 0, cArrayArray, 0, taskTagsLength);
                    } else {
                        char[][] cArray = taskTags;
                        char[][] cArrayArray = new char[taskPrioritiesLength][];
                        taskTags = cArrayArray;
                        System.arraycopy(cArray, 0, cArrayArray, 0, taskPrioritiesLength);
                        length = taskPrioritiesLength;
                    }
                }
                int[] initialIndexes = new int[length];
                int i2 = 0;
                while (i2 < length) {
                    initialIndexes[i2] = i2;
                    ++i2;
                }
                Util.reverseQuickSort(taskTags, 0, length - 1, initialIndexes);
                char[][] temp = new char[length][];
                int i3 = 0;
                while (i3 < length) {
                    temp[i3] = taskPriorities[initialIndexes[i3]];
                    ++i3;
                }
                this.taskPriorities = temp;
            } else {
                Util.reverseQuickSort(taskTags, 0, length - 1);
            }
            this.taskTags = taskTags;
            this.isTaskCaseSensitive = isTaskCaseSensitive;
        }
    }

    public Scanner(boolean tokenizeComments, boolean tokenizeWhiteSpace, boolean checkNonExternalizedStringLiterals, long sourceLevel, char[][] taskTags, char[][] taskPriorities, boolean isTaskCaseSensitive) {
        this(tokenizeComments, tokenizeWhiteSpace, checkNonExternalizedStringLiterals, sourceLevel, sourceLevel, taskTags, taskPriorities, isTaskCaseSensitive);
    }

    public final boolean atEnd() {
        return this.eofPosition <= this.currentPosition;
    }

    /*
     * Unable to fully structure code
     */
    public void checkTaskTag(int commentStart, int commentEnd) throws InvalidInputException {
        src = this.source;
        if (this.foundTaskCount > 0 && this.foundTaskPositions[this.foundTaskCount - 1][0] >= commentStart) {
            return;
        }
        foundTaskIndex = this.foundTaskCount;
        previous = src[commentStart + 1];
        i = commentStart + 2;
        while (i < commentEnd && i < this.eofPosition) {
            tag = null;
            priority = null;
            if (previous != '@') {
                itag = 0;
                while (itag < this.taskTags.length) {
                    block25: {
                        tag = this.taskTags[itag];
                        tagLength = tag.length;
                        if (!(tagLength == 0 || ScannerHelper.isJavaIdentifierStart(this.complianceLevel, tag[0]) && ScannerHelper.isJavaIdentifierPart(this.complianceLevel, previous))) {
                            t = 0;
                            while (t < tagLength) {
                                x = i + t;
                                if (x < this.eofPosition && x < commentEnd && ((sc = src[i + t]) == (tc = tag[t]) || !this.isTaskCaseSensitive && ScannerHelper.toLowerCase(sc) == ScannerHelper.toLowerCase(tc))) {
                                    ++t;
                                    continue;
                                }
                                break block25;
                            }
                            if (i + tagLength >= commentEnd || !ScannerHelper.isJavaIdentifierPart(this.complianceLevel, src[i + tagLength - 1]) || !ScannerHelper.isJavaIdentifierPart(this.complianceLevel, src[i + tagLength])) {
                                if (this.foundTaskTags == null) {
                                    this.foundTaskTags = new char[5][];
                                    this.foundTaskMessages = new char[5][];
                                    this.foundTaskPriorities = new char[5][];
                                    this.foundTaskPositions = new int[5][];
                                } else if (this.foundTaskCount == this.foundTaskTags.length) {
                                    v0 = new char[this.foundTaskCount * 2][];
                                    this.foundTaskTags = v0;
                                    System.arraycopy(this.foundTaskTags, 0, v0, 0, this.foundTaskCount);
                                    v1 = new char[this.foundTaskCount * 2][];
                                    this.foundTaskMessages = v1;
                                    System.arraycopy(this.foundTaskMessages, 0, v1, 0, this.foundTaskCount);
                                    v2 = new char[this.foundTaskCount * 2][];
                                    this.foundTaskPriorities = v2;
                                    System.arraycopy(this.foundTaskPriorities, 0, v2, 0, this.foundTaskCount);
                                    v3 = new int[this.foundTaskCount * 2][];
                                    this.foundTaskPositions = v3;
                                    System.arraycopy(this.foundTaskPositions, 0, v3, 0, this.foundTaskCount);
                                }
                                priority = this.taskPriorities != null && itag < this.taskPriorities.length ? this.taskPriorities[itag] : null;
                                this.foundTaskTags[this.foundTaskCount] = tag;
                                this.foundTaskPriorities[this.foundTaskCount] = priority;
                                this.foundTaskPositions[this.foundTaskCount] = new int[]{i, i + tagLength - 1};
                                this.foundTaskMessages[this.foundTaskCount] = CharOperation.NO_CHAR;
                                ++this.foundTaskCount;
                                i += tagLength - 1;
                                break;
                            }
                        }
                    }
                    ++itag;
                }
            }
            previous = src[i];
            ++i;
        }
        containsEmptyTask = false;
        i = foundTaskIndex;
        while (i < this.foundTaskCount) {
            block26: {
                msgStart = this.foundTaskPositions[i][0] + this.foundTaskTags[i].length;
                v4 = max_value = i + 1 < this.foundTaskCount ? this.foundTaskPositions[i + 1][0] - 1 : commentEnd - 1;
                if (max_value < msgStart) {
                    max_value = msgStart;
                }
                end = -1;
                j = msgStart;
                while (j < max_value) {
                    c = src[j];
                    if (c == '\n' || c == '\r') {
                        end = j - 1;
                        break;
                    }
                    ++j;
                }
                if (end == -1) {
                    j = max_value;
                    while (j > msgStart) {
                        c = src[j];
                        if (c == '*') {
                            end = j - 1;
                            break;
                        }
                        --j;
                    }
                    if (end == -1) {
                        end = max_value;
                    }
                }
                if (msgStart != end) ** GOTO lbl88
                containsEmptyTask = true;
                break block26;
lbl-1000:
                // 1 sources

                {
                    --end;
lbl88:
                    // 2 sources

                    ** while (CharOperation.isWhitespace((char)src[end]) && msgStart <= end)
                }
lbl89:
                // 1 sources

                this.foundTaskPositions[i][1] = end;
                messageLength = end - msgStart + 1;
                message = new char[messageLength];
                System.arraycopy(src, msgStart, message, 0, messageLength);
                this.foundTaskMessages[i] = message;
            }
            ++i;
        }
        if (containsEmptyTask) {
            i = foundTaskIndex;
            max = this.foundTaskCount;
            while (i < max) {
                if (this.foundTaskMessages[i].length == 0) {
                    j = i + 1;
                    while (j < max) {
                        if (this.foundTaskMessages[j].length != 0) {
                            this.foundTaskMessages[i] = this.foundTaskMessages[j];
                            this.foundTaskPositions[i][1] = this.foundTaskPositions[j][1];
                            break;
                        }
                        ++j;
                    }
                }
                ++i;
            }
        }
    }

    public char[] getCurrentIdentifierSource() {
        if (this.withoutUnicodePtr != 0) {
            char[] result = new char[this.withoutUnicodePtr];
            System.arraycopy(this.withoutUnicodeBuffer, 1, result, 0, this.withoutUnicodePtr);
            return result;
        }
        int length = this.currentPosition - this.startPosition;
        if (length == this.eofPosition) {
            return this.source;
        }
        switch (length) {
            case 1: {
                return this.optimizedCurrentTokenSource1();
            }
            case 2: {
                return this.optimizedCurrentTokenSource2();
            }
            case 3: {
                return this.optimizedCurrentTokenSource3();
            }
            case 4: {
                return this.optimizedCurrentTokenSource4();
            }
            case 5: {
                return this.optimizedCurrentTokenSource5();
            }
            case 6: {
                return this.optimizedCurrentTokenSource6();
            }
        }
        char[] result = new char[length];
        System.arraycopy(this.source, this.startPosition, result, 0, length);
        return result;
    }

    public int getCurrentTokenEndPosition() {
        return this.currentPosition - 1;
    }

    public char[] getCurrentTokenSource() {
        char[] result;
        if (this.withoutUnicodePtr != 0) {
            result = new char[this.withoutUnicodePtr];
            System.arraycopy(this.withoutUnicodeBuffer, 1, result, 0, this.withoutUnicodePtr);
        } else {
            int length = this.currentPosition - this.startPosition;
            result = new char[length];
            System.arraycopy(this.source, this.startPosition, result, 0, length);
        }
        return result;
    }

    public final String getCurrentTokenString() {
        if (this.withoutUnicodePtr != 0) {
            return new String(this.withoutUnicodeBuffer, 1, this.withoutUnicodePtr);
        }
        return new String(this.source, this.startPosition, this.currentPosition - this.startPosition);
    }

    public char[] getCurrentTokenSourceString() {
        char[] result;
        if (this.withoutUnicodePtr != 0) {
            result = new char[this.withoutUnicodePtr - 2];
            System.arraycopy(this.withoutUnicodeBuffer, 2, result, 0, this.withoutUnicodePtr - 2);
        } else {
            int length = this.currentPosition - this.startPosition - 2;
            result = new char[length];
            System.arraycopy(this.source, this.startPosition + 1, result, 0, length);
        }
        return result;
    }

    public final String getCurrentStringLiteral() {
        if (this.withoutUnicodePtr != 0) {
            return new String(this.withoutUnicodeBuffer, 2, this.withoutUnicodePtr - 2);
        }
        return new String(this.source, this.startPosition + 1, this.currentPosition - this.startPosition - 2);
    }

    public final char[] getRawTokenSource() {
        int length = this.currentPosition - this.startPosition;
        char[] tokenSource = new char[length];
        System.arraycopy(this.source, this.startPosition, tokenSource, 0, length);
        return tokenSource;
    }

    public final char[] getRawTokenSourceEnd() {
        int length = this.eofPosition - this.currentPosition - 1;
        char[] sourceEnd = new char[length];
        System.arraycopy(this.source, this.currentPosition, sourceEnd, 0, length);
        return sourceEnd;
    }

    public int getCurrentTokenStartPosition() {
        return this.startPosition;
    }

    public final int getLineEnd(int lineNumber) {
        if (this.lineEnds == null || this.linePtr == -1) {
            return -1;
        }
        if (lineNumber > this.lineEnds.length + 1) {
            return -1;
        }
        if (lineNumber <= 0) {
            return -1;
        }
        if (lineNumber == this.lineEnds.length + 1) {
            return this.eofPosition;
        }
        return this.lineEnds[lineNumber - 1];
    }

    public final int[] getLineEnds() {
        if (this.linePtr == -1) {
            return EMPTY_LINE_ENDS;
        }
        int[] copy = new int[this.linePtr + 1];
        System.arraycopy(this.lineEnds, 0, copy, 0, this.linePtr + 1);
        return copy;
    }

    public final int getLineStart(int lineNumber) {
        if (this.lineEnds == null || this.linePtr == -1) {
            return -1;
        }
        if (lineNumber > this.lineEnds.length + 1) {
            return -1;
        }
        if (lineNumber <= 0) {
            return -1;
        }
        if (lineNumber == 1) {
            return this.initialPosition;
        }
        return this.lineEnds[lineNumber - 2] + 1;
    }

    public final int getNextChar() {
        try {
            this.currentCharacter = this.source[this.currentPosition++];
            if (this.currentCharacter == '\\' && this.source[this.currentPosition] == 'u') {
                this.getNextUnicodeChar();
            } else {
                this.unicodeAsBackSlash = false;
                if (this.withoutUnicodePtr != 0) {
                    this.unicodeStore();
                }
            }
            return this.currentCharacter;
        }
        catch (IndexOutOfBoundsException indexOutOfBoundsException) {
            return -1;
        }
        catch (InvalidInputException invalidInputException) {
            return -1;
        }
    }

    public final int getNextCharWithBoundChecks() {
        if (this.currentPosition >= this.eofPosition) {
            return -1;
        }
        this.currentCharacter = this.source[this.currentPosition++];
        if (this.currentPosition >= this.eofPosition) {
            this.unicodeAsBackSlash = false;
            if (this.withoutUnicodePtr != 0) {
                this.unicodeStore();
            }
            return this.currentCharacter;
        }
        if (this.currentCharacter == '\\' && this.source[this.currentPosition] == 'u') {
            try {
                this.getNextUnicodeChar();
            }
            catch (InvalidInputException invalidInputException) {
                return -1;
            }
        } else {
            this.unicodeAsBackSlash = false;
            if (this.withoutUnicodePtr != 0) {
                this.unicodeStore();
            }
        }
        return this.currentCharacter;
    }

    public final boolean getNextChar(char testedChar) {
        int temp;
        block9: {
            block8: {
                if (this.currentPosition >= this.eofPosition) {
                    this.unicodeAsBackSlash = false;
                    return false;
                }
                temp = this.currentPosition;
                this.currentCharacter = this.source[this.currentPosition++];
                if (this.currentCharacter != '\\' || this.source[this.currentPosition] != 'u') break block8;
                this.getNextUnicodeChar();
                if (this.currentCharacter != testedChar) {
                    this.currentPosition = temp;
                    --this.withoutUnicodePtr;
                    return false;
                }
                return true;
            }
            if (this.currentCharacter == testedChar) break block9;
            this.currentPosition = temp;
            return false;
        }
        try {
            this.unicodeAsBackSlash = false;
            if (this.withoutUnicodePtr != 0) {
                this.unicodeStore();
            }
            return true;
        }
        catch (IndexOutOfBoundsException indexOutOfBoundsException) {
            this.unicodeAsBackSlash = false;
            this.currentPosition = temp;
            return false;
        }
        catch (InvalidInputException invalidInputException) {
            this.unicodeAsBackSlash = false;
            this.currentPosition = temp;
            return false;
        }
    }

    public final int getNextChar(char testedChar1, char testedChar2) {
        int result;
        int temp;
        block13: {
            if (this.currentPosition >= this.eofPosition) {
                return -1;
            }
            temp = this.currentPosition;
            this.currentCharacter = this.source[this.currentPosition++];
            if (this.currentCharacter == '\\' && this.source[this.currentPosition] == 'u') {
                int result2;
                this.getNextUnicodeChar();
                if (this.currentCharacter == testedChar1) {
                    result2 = 0;
                } else if (this.currentCharacter == testedChar2) {
                    result2 = 1;
                } else {
                    this.currentPosition = temp;
                    --this.withoutUnicodePtr;
                    result2 = -1;
                }
                return result2;
            }
            if (this.currentCharacter == testedChar1) {
                result = 0;
                break block13;
            }
            if (this.currentCharacter == testedChar2) {
                result = 1;
                break block13;
            }
            this.currentPosition = temp;
            return -1;
        }
        try {
            if (this.withoutUnicodePtr != 0) {
                this.unicodeStore();
            }
            return result;
        }
        catch (IndexOutOfBoundsException indexOutOfBoundsException) {
            this.currentPosition = temp;
            return -1;
        }
        catch (InvalidInputException invalidInputException) {
            this.currentPosition = temp;
            return -1;
        }
    }

    private final void consumeDigits(int radix) throws InvalidInputException {
        this.consumeDigits(radix, false);
    }

    private final void consumeDigits(int radix, boolean expectingDigitFirst) throws InvalidInputException {
        switch (this.consumeDigits0(radix, 1, 2, expectingDigitFirst)) {
            case 1: {
                if (this.sourceLevel >= 0x330000L) break;
                throw new InvalidInputException(UNDERSCORES_IN_LITERALS_NOT_BELOW_17);
            }
            case 2: {
                if (this.sourceLevel < 0x330000L) {
                    throw new InvalidInputException(UNDERSCORES_IN_LITERALS_NOT_BELOW_17);
                }
                throw new InvalidInputException(INVALID_UNDERSCORE);
            }
        }
    }

    private final int consumeDigits0(int radix, int usingUnderscore, int invalidPosition, boolean expectingDigitFirst) throws InvalidInputException {
        int kind = 0;
        if (this.getNextChar('_')) {
            if (expectingDigitFirst) {
                return invalidPosition;
            }
            kind = usingUnderscore;
            while (this.getNextChar('_')) {
            }
        }
        if (this.getNextCharAsDigit(radix)) {
            while (this.getNextCharAsDigit(radix)) {
            }
            int kind2 = this.consumeDigits0(radix, usingUnderscore, invalidPosition, false);
            if (kind2 == 0) {
                return kind;
            }
            return kind2;
        }
        if (kind == usingUnderscore) {
            return invalidPosition;
        }
        return kind;
    }

    public final boolean getNextCharAsDigit() throws InvalidInputException {
        int temp;
        block9: {
            block8: {
                if (this.currentPosition >= this.eofPosition) {
                    return false;
                }
                temp = this.currentPosition;
                this.currentCharacter = this.source[this.currentPosition++];
                if (this.currentCharacter != '\\' || this.source[this.currentPosition] != 'u') break block8;
                this.getNextUnicodeChar();
                if (!ScannerHelper.isDigit(this.currentCharacter)) {
                    this.currentPosition = temp;
                    --this.withoutUnicodePtr;
                    return false;
                }
                return true;
            }
            if (ScannerHelper.isDigit(this.currentCharacter)) break block9;
            this.currentPosition = temp;
            return false;
        }
        try {
            if (this.withoutUnicodePtr != 0) {
                this.unicodeStore();
            }
            return true;
        }
        catch (IndexOutOfBoundsException indexOutOfBoundsException) {
            this.currentPosition = temp;
            return false;
        }
        catch (InvalidInputException invalidInputException) {
            this.currentPosition = temp;
            return false;
        }
    }

    public final boolean getNextCharAsDigit(int radix) {
        int temp;
        block9: {
            block8: {
                if (this.currentPosition >= this.eofPosition) {
                    return false;
                }
                temp = this.currentPosition;
                this.currentCharacter = this.source[this.currentPosition++];
                if (this.currentCharacter != '\\' || this.source[this.currentPosition] != 'u') break block8;
                this.getNextUnicodeChar();
                if (ScannerHelper.digit(this.currentCharacter, radix) == -1) {
                    this.currentPosition = temp;
                    --this.withoutUnicodePtr;
                    return false;
                }
                return true;
            }
            if (ScannerHelper.digit(this.currentCharacter, radix) != -1) break block9;
            this.currentPosition = temp;
            return false;
        }
        try {
            if (this.withoutUnicodePtr != 0) {
                this.unicodeStore();
            }
            return true;
        }
        catch (IndexOutOfBoundsException indexOutOfBoundsException) {
            this.currentPosition = temp;
            return false;
        }
        catch (InvalidInputException invalidInputException) {
            this.currentPosition = temp;
            return false;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public boolean getNextCharAsJavaIdentifierPartWithBoundCheck() {
        int pos = this.currentPosition;
        if (pos >= this.eofPosition) {
            return false;
        }
        int temp2 = this.withoutUnicodePtr;
        try {
            boolean unicode = false;
            this.currentCharacter = this.source[this.currentPosition++];
            if (this.currentPosition < this.eofPosition && this.currentCharacter == '\\' && this.source[this.currentPosition] == 'u') {
                this.getNextUnicodeChar();
                unicode = true;
            }
            char c = this.currentCharacter;
            boolean isJavaIdentifierPart = false;
            if (c >= '\ud800' && c <= '\udbff') {
                if (this.complianceLevel < 0x310000L) {
                    this.currentPosition = pos;
                    this.withoutUnicodePtr = temp2;
                    return false;
                }
                char low = (char)this.getNextCharWithBoundChecks();
                if (low < '\udc00' || low > '\udfff') {
                    this.currentPosition = pos;
                    this.withoutUnicodePtr = temp2;
                    return false;
                }
                isJavaIdentifierPart = ScannerHelper.isJavaIdentifierPart(this.complianceLevel, c, low);
            } else {
                if (c >= '\udc00' && c <= '\udfff') {
                    this.currentPosition = pos;
                    this.withoutUnicodePtr = temp2;
                    return false;
                }
                isJavaIdentifierPart = ScannerHelper.isJavaIdentifierPart(this.complianceLevel, c);
            }
            if (unicode) {
                if (!isJavaIdentifierPart) {
                    this.currentPosition = pos;
                    this.withoutUnicodePtr = temp2;
                    return false;
                }
                return true;
            }
            if (!isJavaIdentifierPart) {
                this.currentPosition = pos;
                return false;
            }
            if (this.withoutUnicodePtr != 0) {
                this.unicodeStore();
            }
            return true;
        }
        catch (InvalidInputException invalidInputException) {
            this.currentPosition = pos;
            this.withoutUnicodePtr = temp2;
            return false;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public boolean getNextCharAsJavaIdentifierPart() {
        int pos = this.currentPosition;
        if (pos >= this.eofPosition) {
            return false;
        }
        int temp2 = this.withoutUnicodePtr;
        try {
            boolean unicode = false;
            this.currentCharacter = this.source[this.currentPosition++];
            if (this.currentCharacter == '\\' && this.source[this.currentPosition] == 'u') {
                this.getNextUnicodeChar();
                unicode = true;
            }
            char c = this.currentCharacter;
            boolean isJavaIdentifierPart = false;
            if (c >= '\ud800' && c <= '\udbff') {
                if (this.complianceLevel < 0x310000L) {
                    this.currentPosition = pos;
                    this.withoutUnicodePtr = temp2;
                    return false;
                }
                char low = (char)this.getNextChar();
                if (low < '\udc00' || low > '\udfff') {
                    this.currentPosition = pos;
                    this.withoutUnicodePtr = temp2;
                    return false;
                }
                isJavaIdentifierPart = ScannerHelper.isJavaIdentifierPart(this.complianceLevel, c, low);
            } else {
                if (c >= '\udc00' && c <= '\udfff') {
                    this.currentPosition = pos;
                    this.withoutUnicodePtr = temp2;
                    return false;
                }
                isJavaIdentifierPart = ScannerHelper.isJavaIdentifierPart(this.complianceLevel, c);
            }
            if (unicode) {
                if (!isJavaIdentifierPart) {
                    this.currentPosition = pos;
                    this.withoutUnicodePtr = temp2;
                    return false;
                }
                return true;
            }
            if (!isJavaIdentifierPart) {
                this.currentPosition = pos;
                return false;
            }
            if (this.withoutUnicodePtr != 0) {
                this.unicodeStore();
            }
            return true;
        }
        catch (IndexOutOfBoundsException indexOutOfBoundsException) {
            this.currentPosition = pos;
            this.withoutUnicodePtr = temp2;
            return false;
        }
        catch (InvalidInputException invalidInputException) {
            this.currentPosition = pos;
            this.withoutUnicodePtr = temp2;
            return false;
        }
    }

    public int scanIdentifier() throws InvalidInputException {
        boolean isJavaIdStart;
        char c;
        int offset;
        int unicodePtr;
        boolean isWhiteSpace;
        int whiteStart = 0;
        this.withoutUnicodePtr = 0;
        whiteStart = this.currentPosition;
        boolean hasWhiteSpaces = false;
        boolean checkIfUnicode = false;
        do {
            unicodePtr = this.withoutUnicodePtr;
            offset = this.currentPosition;
            this.startPosition = this.currentPosition;
            if (this.currentPosition >= this.eofPosition) {
                if (this.tokenizeWhiteSpace && whiteStart != this.currentPosition - 1) {
                    --this.currentPosition;
                    this.startPosition = whiteStart;
                    return 1000;
                }
                return 69;
            }
            this.currentCharacter = this.source[this.currentPosition++];
            checkIfUnicode = this.currentPosition < this.eofPosition && this.currentCharacter == '\\' && this.source[this.currentPosition] == 'u';
            if (checkIfUnicode) {
                isWhiteSpace = this.jumpOverUnicodeWhiteSpace();
                offset = this.currentPosition - offset;
            } else {
                offset = this.currentPosition - offset;
                switch (this.currentCharacter) {
                    case '\t': 
                    case '\n': 
                    case '\f': 
                    case '\r': 
                    case ' ': {
                        isWhiteSpace = true;
                        break;
                    }
                    default: {
                        isWhiteSpace = false;
                    }
                }
            }
            if (!isWhiteSpace) continue;
            hasWhiteSpaces = true;
        } while (isWhiteSpace);
        if (hasWhiteSpaces) {
            if (this.tokenizeWhiteSpace) {
                this.currentPosition -= offset;
                this.startPosition = whiteStart;
                if (checkIfUnicode) {
                    this.withoutUnicodePtr = unicodePtr;
                }
                return 1000;
            }
            if (checkIfUnicode) {
                this.withoutUnicodePtr = 0;
                this.unicodeStore();
            } else {
                this.withoutUnicodePtr = 0;
            }
        }
        if ((c = this.currentCharacter) < '\u0080') {
            if ((ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[c] & 0x40) != 0) {
                return this.scanIdentifierOrKeywordWithBoundCheck();
            }
            return 110;
        }
        if (c >= '\ud800' && c <= '\udbff') {
            if (this.complianceLevel < 0x310000L) {
                throw new InvalidInputException(INVALID_UNICODE_ESCAPE);
            }
            char low = (char)this.getNextCharWithBoundChecks();
            if (low < '\udc00' || low > '\udfff') {
                throw new InvalidInputException(INVALID_LOW_SURROGATE);
            }
            isJavaIdStart = ScannerHelper.isJavaIdentifierStart(this.complianceLevel, c, low);
        } else {
            if (c >= '\udc00' && c <= '\udfff') {
                if (this.complianceLevel < 0x310000L) {
                    throw new InvalidInputException(INVALID_UNICODE_ESCAPE);
                }
                throw new InvalidInputException(INVALID_HIGH_SURROGATE);
            }
            isJavaIdStart = ScannerHelper.isJavaIdentifierStart(this.complianceLevel, c);
        }
        if (isJavaIdStart) {
            return this.scanIdentifierOrKeywordWithBoundCheck();
        }
        return 110;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public int getNextToken() throws InvalidInputException {
        this.wasAcr = false;
        if (this.diet) {
            this.jumpOverMethodBody();
            this.diet = false;
            if (this.currentPosition <= this.eofPosition) return 31;
            return 69;
        }
        whiteStart = 0;
        try {
            block50: while (true) lbl-1000:
            // 4 sources

            {
                this.withoutUnicodePtr = 0;
                whiteStart = ++this.currentPosition;
                hasWhiteSpaces = false;
                checkIfUnicode = false;
                do {
                    block158: {
                        unicodePtr = this.withoutUnicodePtr;
                        offset = this.currentPosition;
                        this.startPosition = this.currentPosition;
                        try {
                            this.currentCharacter = this.source[this.currentPosition++];
                            checkIfUnicode = this.currentCharacter == '\\' && this.source[this.currentPosition] == 'u';
                        }
                        catch (IndexOutOfBoundsException v0) {
                            if (this.tokenizeWhiteSpace && whiteStart != this.currentPosition - 1) {
                                --this.currentPosition;
                                this.startPosition = whiteStart;
                                return 1000;
                            }
                            if (this.currentPosition <= this.eofPosition) break block158;
                            return 69;
                        }
                    }
                    if (this.currentPosition > this.eofPosition) {
                        if (this.tokenizeWhiteSpace == false) return 69;
                        if (whiteStart == this.currentPosition - 1) return 69;
                        --this.currentPosition;
                        this.startPosition = whiteStart;
                        return 1000;
                    }
                    if (checkIfUnicode) {
                        isWhiteSpace = this.jumpOverUnicodeWhiteSpace();
                        offset = this.currentPosition - offset;
                    } else {
                        offset = this.currentPosition - offset;
                        if ((this.currentCharacter == '\r' || this.currentCharacter == '\n') && this.recordLineSeparator) {
                            this.pushLineSeparator();
                        }
                        switch (this.currentCharacter) {
                            case '\t': 
                            case '\n': 
                            case '\f': 
                            case '\r': 
                            case ' ': {
                                isWhiteSpace = true;
                                break;
                            }
                            default: {
                                isWhiteSpace = false;
                            }
                        }
                    }
                    if (!isWhiteSpace) continue;
                    hasWhiteSpaces = true;
                } while (isWhiteSpace);
                if (hasWhiteSpaces) {
                    if (this.tokenizeWhiteSpace) {
                        this.currentPosition -= offset;
                        this.startPosition = whiteStart;
                        if (checkIfUnicode == false) return 1000;
                        this.withoutUnicodePtr = unicodePtr;
                        return 1000;
                    }
                    if (checkIfUnicode) {
                        this.withoutUnicodePtr = 0;
                        this.unicodeStore();
                    } else {
                        this.withoutUnicodePtr = 0;
                    }
                }
                switch (this.currentCharacter) {
                    case '@': {
                        return 53;
                    }
                    case '(': {
                        return 29;
                    }
                    case ')': {
                        return 28;
                    }
                    case '{': {
                        return 68;
                    }
                    case '}': {
                        return 31;
                    }
                    case '[': {
                        return 16;
                    }
                    case ']': {
                        return 70;
                    }
                    case ';': {
                        return 27;
                    }
                    case ',': {
                        return 30;
                    }
                    case '.': {
                        if (this.getNextCharAsDigit()) {
                            return this.scanNumber(true);
                        }
                        temp = this.currentPosition;
                        if (!this.getNextChar('.')) {
                            this.currentPosition = temp;
                            return 3;
                        }
                        if (this.getNextChar('.')) {
                            return 107;
                        }
                        this.currentPosition = temp;
                        return 3;
                    }
                    case '+': {
                        test = this.getNextChar('+', '=');
                        if (test == 0) {
                            return 8;
                        }
                        if (test <= 0) return 1;
                        return 84;
                    }
                    case '-': {
                        test = this.getNextChar('-', '=');
                        if (test == 0) {
                            return 9;
                        }
                        if (test <= 0) return 2;
                        return 85;
                    }
                    case '~': {
                        return 67;
                    }
                    case '!': {
                        if (this.getNextChar('=') == false) return 66;
                        return 19;
                    }
                    case '*': {
                        if (this.getNextChar('=') == false) return 4;
                        return 86;
                    }
                    case '%': {
                        if (this.getNextChar('=') == false) return 5;
                        return 91;
                    }
                    case '<': {
                        test = this.getNextChar('=', '<');
                        if (test == 0) {
                            return 14;
                        }
                        if (test <= 0) return 7;
                        if (this.getNextChar('=') == false) return 17;
                        return 92;
                    }
                    case '>': {
                        if (this.returnOnlyGreater) {
                            return 11;
                        }
                        test = this.getNextChar('=', '>');
                        if (test == 0) {
                            return 15;
                        }
                        if (test <= 0) return 11;
                        test = this.getNextChar('=', '>');
                        if (test == 0) {
                            return 93;
                        }
                        if (test <= 0) return 10;
                        if (this.getNextChar('=') == false) return 12;
                        return 94;
                    }
                    case '=': {
                        if (this.getNextChar('=') == false) return 71;
                        return 18;
                    }
                    case '&': {
                        test = this.getNextChar('&', '=');
                        if (test == 0) {
                            return 24;
                        }
                        if (test <= 0) return 20;
                        return 88;
                    }
                    case '|': {
                        test = this.getNextChar('|', '=');
                        if (test == 0) {
                            return 25;
                        }
                        if (test <= 0) return 22;
                        return 89;
                    }
                    case '^': {
                        if (this.getNextChar('=') == false) return 21;
                        return 90;
                    }
                    case '?': {
                        return 23;
                    }
                    case ':': {
                        return 65;
                    }
                    case '\'': {
                        test = this.getNextChar('\n', '\r');
                        if (test == 0) {
                            throw new InvalidInputException("Invalid_Character_Constant");
                        }
                        if (test <= 0) ** GOTO lbl166
                        lookAhead = 0;
                        if (true) ** GOTO lbl437
lbl166:
                        // 1 sources

                        if (!this.getNextChar('\'')) ** GOTO lbl169
                        lookAhead = 0;
                        if (true) ** GOTO lbl448
lbl169:
                        // 1 sources

                        if (!this.getNextChar('\\')) ** GOTO lbl181
                        if (!this.unicodeAsBackSlash) ** GOTO lbl178
                        this.unicodeAsBackSlash = false;
                        if ((this.currentCharacter = this.source[this.currentPosition++]) == '\\' && this.source[this.currentPosition] == 'u') {
                            this.getNextUnicodeChar();
                        } else if (this.withoutUnicodePtr != 0) {
                            this.unicodeStore();
                        }
                        ** GOTO lbl179
lbl178:
                        // 1 sources

                        this.currentCharacter = this.source[this.currentPosition++];
lbl179:
                        // 3 sources

                        this.scanEscapeCharacter();
                        ** GOTO lbl195
lbl181:
                        // 1 sources

                        this.unicodeAsBackSlash = false;
                        checkIfUnicode = false;
                        try {
                            this.currentCharacter = this.source[this.currentPosition++];
                            checkIfUnicode = this.currentCharacter == '\\' && this.source[this.currentPosition] == 'u';
                        }
                        catch (IndexOutOfBoundsException v1) {
                            --this.currentPosition;
                            throw new InvalidInputException("Invalid_Character_Constant");
                        }
                        if (checkIfUnicode) {
                            this.getNextUnicodeChar();
                        } else if (this.withoutUnicodePtr != 0) {
                            this.unicodeStore();
                        }
lbl195:
                        // 5 sources

                        if (this.getNextChar('\'')) {
                            return 51;
                        }
                        lookAhead = 0;
                        while (true) {
                            if (lookAhead >= 20) {
                                throw new InvalidInputException("Invalid_Character_Constant");
                            }
                            if (this.currentPosition + lookAhead == this.eofPosition) {
                                throw new InvalidInputException("Invalid_Character_Constant");
                            }
                            if (this.source[this.currentPosition + lookAhead] == '\n') {
                                throw new InvalidInputException("Invalid_Character_Constant");
                            }
                            if (this.source[this.currentPosition + lookAhead] == '\'') {
                                this.currentPosition += lookAhead + 1;
                                throw new InvalidInputException("Invalid_Character_Constant");
                            }
                            ++lookAhead;
                        }
                    }
                    case '\"': {
                        try {
                            this.unicodeAsBackSlash = false;
                            isUnicode = false;
                            this.currentCharacter = this.source[this.currentPosition++];
                            if (this.currentCharacter == '\\' && this.source[this.currentPosition] == 'u') {
                                this.getNextUnicodeChar();
                                isUnicode = true;
                            } else if (this.withoutUnicodePtr != 0) {
                                this.unicodeStore();
                            }
                            while (true) {
                                if (this.currentCharacter == '\"') {
                                    return 52;
                                }
                                if (this.currentPosition >= this.eofPosition) {
                                    throw new InvalidInputException("Unterminated_String");
                                }
                                if (this.currentCharacter != '\n' && this.currentCharacter != '\r') ** GOTO lbl233
                                if (!isUnicode) {
                                    --this.currentPosition;
                                    throw new InvalidInputException("Invalid_Char_In_String");
                                }
                                start = this.currentPosition;
                                lookAhead = 0;
                                if (true) ** GOTO lbl465
lbl233:
                                // 1 sources

                                if (this.currentCharacter != '\\') ** GOTO lbl251
                                if (!this.unicodeAsBackSlash) ** GOTO lbl244
                                --this.withoutUnicodePtr;
                                this.unicodeAsBackSlash = false;
                                if ((this.currentCharacter = this.source[this.currentPosition++]) == '\\' && this.source[this.currentPosition] == 'u') {
                                    this.getNextUnicodeChar();
                                    isUnicode = true;
                                    --this.withoutUnicodePtr;
                                } else {
                                    isUnicode = false;
                                }
                                ** GOTO lbl248
lbl244:
                                // 1 sources

                                if (this.withoutUnicodePtr == 0) {
                                    this.unicodeInitializeBuffer(this.currentPosition - this.startPosition);
                                }
                                --this.withoutUnicodePtr;
                                this.currentCharacter = this.source[this.currentPosition++];
lbl248:
                                // 3 sources

                                this.scanEscapeCharacter();
                                if (this.withoutUnicodePtr != 0) {
                                    this.unicodeStore();
                                }
lbl251:
                                // 4 sources

                                this.unicodeAsBackSlash = false;
                                if ((this.currentCharacter = this.source[this.currentPosition++]) == '\\' && this.source[this.currentPosition] == 'u') {
                                    this.getNextUnicodeChar();
                                    isUnicode = true;
                                    continue;
                                }
                                isUnicode = false;
                                if (this.withoutUnicodePtr == 0) continue;
                                this.unicodeStore();
                            }
                        }
                        catch (IndexOutOfBoundsException v2) {
                            --this.currentPosition;
                            throw new InvalidInputException("Unterminated_String");
                        }
                        catch (InvalidInputException e) {
                            if (e.getMessage().equals("Invalid_Escape") == false) throw e;
                            lookAhead = 0;
                            if (true) ** GOTO lbl476
                        }
                    }
                    case '/': {
                        if (this.skipComments) ** GOTO lbl393
                        test = this.getNextChar('/', '*');
                        if (test != 0) ** GOTO lbl321
                        this.lastCommentLinePosition = this.currentPosition--;
                        try {
                            this.currentCharacter = this.source[this.currentPosition++];
                            if (this.currentCharacter == '\\' && this.source[this.currentPosition] == 'u') {
                                this.getNextUnicodeChar();
                            }
                            if (this.currentCharacter == '\\' && this.source[this.currentPosition] == '\\') {
                                ++this.currentPosition;
                            }
                            isUnicode = false;
                            while (true) {
                                if (this.currentCharacter != '\r' && this.currentCharacter != '\n') ** GOTO lbl286
                                if (this.currentCharacter == '\r' && this.eofPosition > this.currentPosition) {
                                    if (this.source[this.currentPosition] != '\n') break;
                                    ++this.currentPosition;
                                    this.currentCharacter = (char)10;
                                }
                                ** GOTO lbl300
lbl286:
                                // 1 sources

                                if (this.currentPosition >= this.eofPosition) {
                                    this.lastCommentLinePosition = this.currentPosition++;
                                    throw new IndexOutOfBoundsException();
                                }
                                this.lastCommentLinePosition = this.currentPosition;
                                isUnicode = false;
                                if ((this.currentCharacter = this.source[this.currentPosition++]) == '\\' && this.source[this.currentPosition] == 'u') {
                                    this.getNextUnicodeChar();
                                    isUnicode = true;
                                }
                                if (this.currentCharacter != '\\' || this.source[this.currentPosition] != '\\') continue;
                                ++this.currentPosition;
                            }
                            if (this.source[this.currentPosition] == '\\' && this.source[this.currentPosition + 1] == 'u') {
                                this.getNextUnicodeChar();
                                isUnicode = true;
                            }
lbl300:
                            // 4 sources

                            this.recordComment(1001);
                            if (this.taskTags != null) {
                                this.checkTaskTag(this.startPosition, this.currentPosition);
                            }
                            if (this.currentCharacter == '\r' || this.currentCharacter == '\n') {
                                if (this.checkNonExternalizedStringLiterals && this.lastPosition < this.currentPosition) {
                                    this.parseTags();
                                }
                                if (this.recordLineSeparator) {
                                    if (isUnicode) {
                                        this.pushUnicodeLineSeparator();
                                    } else {
                                        this.pushLineSeparator();
                                    }
                                }
                            }
                            if (!this.tokenizeComments) ** GOTO lbl-1000
                            return 1001;
                        }
                        catch (IndexOutOfBoundsException v3) {
                            this.recordComment(1001);
                            if (this.taskTags != null) {
                                this.checkTaskTag(this.startPosition, this.currentPosition);
                            }
                            if (this.checkNonExternalizedStringLiterals && this.lastPosition < this.currentPosition) {
                                this.parseTags();
                            }
                            if (!this.tokenizeComments) ** GOTO lbl-1000
                            return 1001;
                        }
lbl321:
                        // 1 sources

                        if (test <= 0) ** GOTO lbl393
                        try {
                            isJavadoc = false;
                            star = false;
                            isUnicode = false;
                            this.unicodeAsBackSlash = false;
                            this.currentCharacter = this.source[this.currentPosition++];
                            if (this.currentCharacter == '\\' && this.source[this.currentPosition] == 'u') {
                                this.getNextUnicodeChar();
                                isUnicode = true;
                            } else {
                                isUnicode = false;
                                if (this.withoutUnicodePtr != 0) {
                                    this.unicodeStore();
                                }
                            }
                            if (this.currentCharacter == '*') {
                                isJavadoc = true;
                                star = true;
                            }
                            if ((this.currentCharacter == '\r' || this.currentCharacter == '\n') && this.recordLineSeparator) {
                                if (isUnicode) {
                                    this.pushUnicodeLineSeparator();
                                } else {
                                    this.pushLineSeparator();
                                }
                            }
                            isUnicode = false;
                            previous = this.currentPosition;
                            if ((this.currentCharacter = this.source[this.currentPosition++]) == '\\' && this.source[this.currentPosition] == 'u') {
                                this.getNextUnicodeChar();
                                isUnicode = true;
                            } else {
                                isUnicode = false;
                            }
                            if (this.currentCharacter == '\\' && this.source[this.currentPosition] == '\\') {
                                ++this.currentPosition;
                            }
                            if (this.currentCharacter == '/') {
                                isJavadoc = false;
                            }
                            firstTag = 0;
                            while (true) {
                                if (this.currentCharacter != '/' || !star) ** GOTO lbl357
lbl357:
                                // 1 sources

                                if (this.currentPosition >= this.eofPosition) {
                                    throw new InvalidInputException("Unterminated_Comment");
                                }
                                if ((this.currentCharacter == '\r' || this.currentCharacter == '\n') && this.recordLineSeparator) {
                                    if (isUnicode) {
                                        this.pushUnicodeLineSeparator();
                                    } else {
                                        this.pushLineSeparator();
                                    }
                                }
                                switch (this.currentCharacter) {
                                    case '*': {
                                        star = true;
                                        break;
                                    }
                                    case '@': {
                                        if (firstTag == 0 && this.isFirstTag()) {
                                            firstTag = previous;
                                        }
                                    }
                                    default: {
                                        star = false;
                                    }
                                }
                                previous = this.currentPosition;
                                this.currentCharacter = this.source[this.currentPosition++];
                                if (this.currentCharacter == '\\' && this.source[this.currentPosition] == 'u') {
                                    this.getNextUnicodeChar();
                                    isUnicode = true;
                                } else {
                                    isUnicode = false;
                                }
                                if (this.currentCharacter != '\\' || this.source[this.currentPosition] != '\\') continue;
                                ++this.currentPosition;
                            }
                            token = isJavadoc != false ? 1003 : 1002;
                            this.recordComment(token);
                            this.commentTagStarts[this.commentPtr] = firstTag;
                            if (this.taskTags == null) continue block50;
                            this.checkTaskTag(this.startPosition, this.currentPosition);
                            if (!this.tokenizeComments) continue block50;
                            return token;
                        }
                        catch (IndexOutOfBoundsException v4) {
                            --this.currentPosition;
                            throw new InvalidInputException("Unterminated_Comment");
                        }
lbl393:
                        // 2 sources

                        if (this.getNextChar('=') == false) return 6;
                        return 87;
                    }
                    case '\u001a': {
                        if (this.atEnd() == false) throw new InvalidInputException("Ctrl-Z");
                        return 69;
                    }
                    default: {
                        c = this.currentCharacter;
                        if (c < '\u0080') {
                            if ((ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[c] & 64) != 0) {
                                return this.scanIdentifierOrKeyword();
                            }
                            if ((ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[c] & 4) == 0) return 110;
                            return this.scanNumber(false);
                        }
                        if (c >= '\ud800' && c <= '\udbff') {
                            if (this.complianceLevel < 0x310000L) {
                                throw new InvalidInputException("Invalid_Unicode_Escape");
                            }
                            low = (char)this.getNextChar();
                            if (low < '\udc00') throw new InvalidInputException("Invalid_Low_Surrogate");
                            if (low > '\udfff') {
                                throw new InvalidInputException("Invalid_Low_Surrogate");
                            }
                            isJavaIdStart = ScannerHelper.isJavaIdentifierStart(this.complianceLevel, c, low);
                        } else {
                            if (c >= '\udc00' && c <= '\udfff') {
                                if (this.complianceLevel >= 0x310000L) throw new InvalidInputException("Invalid_High_Surrogate");
                                throw new InvalidInputException("Invalid_Unicode_Escape");
                            }
                            isJavaIdStart = ScannerHelper.isJavaIdentifierStart(this.complianceLevel, c);
                        }
                        if (isJavaIdStart) {
                            return this.scanIdentifierOrKeyword();
                        }
                        if (ScannerHelper.isDigit(this.currentCharacter) == false) return 110;
                        return this.scanNumber(false);
                    }
                }
                break;
            }
        }
        catch (IndexOutOfBoundsException v5) {
            if (this.tokenizeWhiteSpace == false) return 69;
            if (whiteStart == this.currentPosition - 1) return 69;
            --this.currentPosition;
            this.startPosition = whiteStart;
            return 1000;
        }
        do {
            if (this.currentPosition + lookAhead == this.eofPosition) {
                throw new InvalidInputException("Invalid_Character_Constant");
            }
            if (this.source[this.currentPosition + lookAhead] == '\n') {
                throw new InvalidInputException("Invalid_Character_Constant");
            }
            if (this.source[this.currentPosition + lookAhead] == '\'') {
                this.currentPosition += lookAhead + 1;
                throw new InvalidInputException("Invalid_Character_Constant");
            }
            ++lookAhead;
lbl437:
            // 2 sources

        } while (lookAhead < 3);
        throw new InvalidInputException("Invalid_Character_Constant");
        do {
            if (this.currentPosition + lookAhead == this.eofPosition) {
                throw new InvalidInputException("Invalid_Character_Constant");
            }
            if (this.source[this.currentPosition + lookAhead] == '\n') {
                throw new InvalidInputException("Invalid_Character_Constant");
            }
            if (this.source[this.currentPosition + lookAhead] == '\'') {
                this.currentPosition += lookAhead + 1;
                throw new InvalidInputException("Invalid_Character_Constant");
            }
            ++lookAhead;
lbl448:
            // 2 sources

        } while (lookAhead < 3);
        throw new InvalidInputException("Invalid_Character_Constant");
        do {
            if (this.currentPosition >= this.eofPosition) {
                this.currentPosition = start;
                throw new InvalidInputException("Invalid_Char_In_String");
            }
            if ((this.currentCharacter = this.source[this.currentPosition++]) == '\\' && this.source[this.currentPosition] == 'u') {
                isUnicode = true;
                this.getNextUnicodeChar();
            } else {
                isUnicode = false;
            }
            if (!isUnicode && this.currentCharacter == '\n') {
                --this.currentPosition;
                throw new InvalidInputException("Invalid_Char_In_String");
            }
            if (this.currentCharacter == '\"') {
                throw new InvalidInputException("Invalid_Char_In_String");
            }
            ++lookAhead;
lbl465:
            // 2 sources

        } while (lookAhead < 50);
        throw new InvalidInputException("Invalid_Char_In_String");
        do {
            if (this.currentPosition + lookAhead == this.eofPosition) {
                throw e;
            }
            if (this.source[this.currentPosition + lookAhead] == '\n') {
                throw e;
            }
            if (this.source[this.currentPosition + lookAhead] == '\"') {
                this.currentPosition += lookAhead + 1;
                throw e;
            }
            ++lookAhead;
lbl476:
            // 2 sources

        } while (lookAhead < 50);
        throw e;
    }

    public void getNextUnicodeChar() throws InvalidInputException {
        int c1 = 0;
        int c2 = 0;
        int c3 = 0;
        int c4 = 0;
        int unicodeSize = 6;
        ++this.currentPosition;
        if (this.currentPosition < this.eofPosition) {
            while (this.source[this.currentPosition] == 'u') {
                ++this.currentPosition;
                if (this.currentPosition >= this.eofPosition) {
                    --this.currentPosition;
                    throw new InvalidInputException(INVALID_UNICODE_ESCAPE);
                }
                ++unicodeSize;
            }
        } else {
            --this.currentPosition;
            throw new InvalidInputException(INVALID_UNICODE_ESCAPE);
        }
        if (this.currentPosition + 4 > this.eofPosition) {
            this.currentPosition += this.eofPosition - this.currentPosition;
            throw new InvalidInputException(INVALID_UNICODE_ESCAPE);
        }
        if ((c1 = ScannerHelper.getNumericValue(this.source[this.currentPosition++])) > 15 || c1 < 0 || (c2 = ScannerHelper.getNumericValue(this.source[this.currentPosition++])) > 15 || c2 < 0 || (c3 = ScannerHelper.getNumericValue(this.source[this.currentPosition++])) > 15 || c3 < 0 || (c4 = ScannerHelper.getNumericValue(this.source[this.currentPosition++])) > 15 || c4 < 0) {
            throw new InvalidInputException(INVALID_UNICODE_ESCAPE);
        }
        this.currentCharacter = (char)(((c1 * 16 + c2) * 16 + c3) * 16 + c4);
        if (this.withoutUnicodePtr == 0) {
            this.unicodeInitializeBuffer(this.currentPosition - unicodeSize - this.startPosition);
        }
        this.unicodeStore();
        this.unicodeAsBackSlash = this.currentCharacter == '\\';
    }

    public NLSTag[] getNLSTags() {
        int length = this.nlsTagsPtr;
        if (length != 0) {
            NLSTag[] result = new NLSTag[length];
            System.arraycopy(this.nlsTags, 0, result, 0, length);
            this.nlsTagsPtr = 0;
            return result;
        }
        return null;
    }

    public char[] getSource() {
        return this.source;
    }

    protected boolean isFirstTag() {
        return true;
    }

    /*
     * Loose catch block
     */
    public final void jumpOverMethodBody() {
        block97: {
            this.wasAcr = false;
            int found = 1;
            while (true) {
                block33: while (true) {
                    boolean isWhiteSpace;
                    this.withoutUnicodePtr = 0;
                    do {
                        this.startPosition = ++this.currentPosition;
                        if ((this.currentCharacter = this.source[this.currentPosition++]) == '\\' && this.source[this.currentPosition] == 'u') {
                            isWhiteSpace = this.jumpOverUnicodeWhiteSpace();
                            continue;
                        }
                        if (this.recordLineSeparator && (this.currentCharacter == '\r' || this.currentCharacter == '\n')) {
                            this.pushLineSeparator();
                        }
                        isWhiteSpace = CharOperation.isWhitespace(this.currentCharacter);
                    } while (isWhiteSpace);
                    switch (this.currentCharacter) {
                        case '{': {
                            ++found;
                            continue block33;
                        }
                        case '}': {
                            if (--found != 0) continue block33;
                            return;
                        }
                        case '\'': {
                            int test = this.getNextChar('\\');
                            if (test != 0) {
                                try {
                                    if (this.unicodeAsBackSlash) {
                                        this.unicodeAsBackSlash = false;
                                        if ((this.currentCharacter = this.source[this.currentPosition++]) == '\\' && this.source[this.currentPosition] == 'u') {
                                            this.getNextUnicodeChar();
                                        } else if (this.withoutUnicodePtr != 0) {
                                            this.unicodeStore();
                                        }
                                    } else {
                                        this.currentCharacter = this.source[this.currentPosition++];
                                    }
                                    this.scanEscapeCharacter();
                                }
                                catch (InvalidInputException invalidInputException) {}
                            } else {
                                try {
                                    this.unicodeAsBackSlash = false;
                                    this.currentCharacter = this.source[this.currentPosition++];
                                    if (this.currentCharacter == '\\' && this.source[this.currentPosition] == 'u') {
                                        this.getNextUnicodeChar();
                                    } else if (this.withoutUnicodePtr != 0) {
                                        this.unicodeStore();
                                    }
                                }
                                catch (InvalidInputException invalidInputException) {}
                            }
                            this.getNextChar('\'');
                            continue block33;
                        }
                        case '\"': {
                            try {
                                try {
                                    this.unicodeAsBackSlash = false;
                                    this.currentCharacter = this.source[this.currentPosition++];
                                    if (this.currentCharacter == '\\' && this.source[this.currentPosition] == 'u') {
                                        this.getNextUnicodeChar();
                                    } else if (this.withoutUnicodePtr != 0) {
                                        this.unicodeStore();
                                    }
                                }
                                catch (InvalidInputException invalidInputException) {}
                                while (true) {
                                    if (this.currentCharacter == '\"') continue block33;
                                    if (this.currentPosition >= this.eofPosition) {
                                        return;
                                    }
                                    if (this.currentCharacter == '\r') {
                                        if (this.source[this.currentPosition] != '\n') continue block33;
                                        continue block33;
                                    }
                                    if (this.currentCharacter == '\n') continue block33;
                                    if (this.currentCharacter == '\\') {
                                        try {
                                            if (this.unicodeAsBackSlash) {
                                                this.unicodeAsBackSlash = false;
                                                if ((this.currentCharacter = this.source[this.currentPosition++]) == '\\' && this.source[this.currentPosition] == 'u') {
                                                    this.getNextUnicodeChar();
                                                } else if (this.withoutUnicodePtr != 0) {
                                                    this.unicodeStore();
                                                }
                                            } else {
                                                this.currentCharacter = this.source[this.currentPosition++];
                                            }
                                            this.scanEscapeCharacter();
                                        }
                                        catch (InvalidInputException invalidInputException) {}
                                    }
                                    try {
                                        this.unicodeAsBackSlash = false;
                                        this.currentCharacter = this.source[this.currentPosition++];
                                        if (this.currentCharacter == '\\' && this.source[this.currentPosition] == 'u') {
                                            this.getNextUnicodeChar();
                                            continue;
                                        }
                                        if (this.withoutUnicodePtr == 0) continue;
                                        this.unicodeStore();
                                    }
                                    catch (InvalidInputException invalidInputException) {}
                                }
                            }
                            catch (IndexOutOfBoundsException indexOutOfBoundsException) {
                                return;
                            }
                        }
                        case '/': {
                            int test = this.getNextChar('/', '*');
                            if (test == 0) {
                                try {
                                    this.lastCommentLinePosition = this.currentPosition;
                                    this.currentCharacter = this.source[this.currentPosition++];
                                    if (this.currentCharacter == '\\' && this.source[this.currentPosition] == 'u') {
                                        this.getNextUnicodeChar();
                                    }
                                    if (this.currentCharacter == '\\' && this.source[this.currentPosition] == '\\') {
                                        ++this.currentPosition;
                                    }
                                    boolean isUnicode = false;
                                    while (this.currentCharacter != '\r' && this.currentCharacter != '\n') {
                                        if (this.currentPosition >= this.eofPosition) {
                                            this.lastCommentLinePosition = this.currentPosition++;
                                            throw new IndexOutOfBoundsException();
                                        }
                                        this.lastCommentLinePosition = this.currentPosition;
                                        isUnicode = false;
                                        if ((this.currentCharacter = this.source[this.currentPosition++]) == '\\' && this.source[this.currentPosition] == 'u') {
                                            isUnicode = true;
                                            this.getNextUnicodeChar();
                                        }
                                        if (this.currentCharacter != '\\' || this.source[this.currentPosition] != '\\') continue;
                                        ++this.currentPosition;
                                    }
                                    if (this.currentCharacter == '\r' && this.eofPosition > this.currentPosition) {
                                        if (this.source[this.currentPosition] == '\n') {
                                            ++this.currentPosition;
                                            this.currentCharacter = (char)10;
                                        } else if (this.source[this.currentPosition] == '\\' && this.source[this.currentPosition + 1] == 'u') {
                                            isUnicode = true;
                                            this.getNextUnicodeChar();
                                        }
                                    }
                                    this.recordComment(1001);
                                    if (!this.recordLineSeparator || this.currentCharacter != '\r' && this.currentCharacter != '\n') continue block33;
                                    if (this.checkNonExternalizedStringLiterals && this.lastPosition < this.currentPosition) {
                                        this.parseTags();
                                    }
                                    if (!this.recordLineSeparator) continue block33;
                                    if (isUnicode) {
                                        this.pushUnicodeLineSeparator();
                                        continue block33;
                                    }
                                    this.pushLineSeparator();
                                }
                                catch (IndexOutOfBoundsException indexOutOfBoundsException) {
                                    --this.currentPosition;
                                    this.recordComment(1001);
                                    if (this.checkNonExternalizedStringLiterals && this.lastPosition < this.currentPosition) {
                                        this.parseTags();
                                    }
                                    if (this.tokenizeComments) continue block33;
                                    ++this.currentPosition;
                                }
                                continue block33;
                            }
                            if (test <= 0) continue block33;
                            boolean isJavadoc = false;
                            try {
                                boolean star = false;
                                boolean isUnicode = false;
                                this.unicodeAsBackSlash = false;
                                this.currentCharacter = this.source[this.currentPosition++];
                                if (this.currentCharacter == '\\' && this.source[this.currentPosition] == 'u') {
                                    this.getNextUnicodeChar();
                                    isUnicode = true;
                                } else {
                                    isUnicode = false;
                                    if (this.withoutUnicodePtr != 0) {
                                        this.unicodeStore();
                                    }
                                }
                                if (this.currentCharacter == '*') {
                                    isJavadoc = true;
                                    star = true;
                                }
                                if ((this.currentCharacter == '\r' || this.currentCharacter == '\n') && this.recordLineSeparator) {
                                    if (isUnicode) {
                                        this.pushUnicodeLineSeparator();
                                    } else {
                                        this.pushLineSeparator();
                                    }
                                }
                                isUnicode = false;
                                int previous = this.currentPosition;
                                if ((this.currentCharacter = this.source[this.currentPosition++]) == '\\' && this.source[this.currentPosition] == 'u') {
                                    this.getNextUnicodeChar();
                                    isUnicode = true;
                                } else {
                                    isUnicode = false;
                                }
                                if (this.currentCharacter == '\\' && this.source[this.currentPosition] == '\\') {
                                    ++this.currentPosition;
                                }
                                if (this.currentCharacter == '/') {
                                    isJavadoc = false;
                                }
                                int firstTag = 0;
                                while (this.currentCharacter != '/' || !star) {
                                    if (this.currentPosition >= this.eofPosition) {
                                        return;
                                    }
                                    if ((this.currentCharacter == '\r' || this.currentCharacter == '\n') && this.recordLineSeparator) {
                                        if (isUnicode) {
                                            this.pushUnicodeLineSeparator();
                                        } else {
                                            this.pushLineSeparator();
                                        }
                                    }
                                    switch (this.currentCharacter) {
                                        case '*': {
                                            star = true;
                                            break;
                                        }
                                        case '@': {
                                            if (firstTag == 0 && this.isFirstTag()) {
                                                firstTag = previous;
                                            }
                                        }
                                        default: {
                                            star = false;
                                        }
                                    }
                                    previous = this.currentPosition;
                                    this.currentCharacter = this.source[this.currentPosition++];
                                    if (this.currentCharacter == '\\' && this.source[this.currentPosition] == 'u') {
                                        this.getNextUnicodeChar();
                                        isUnicode = true;
                                    } else {
                                        isUnicode = false;
                                    }
                                    if (this.currentCharacter != '\\' || this.source[this.currentPosition] != '\\') continue;
                                    ++this.currentPosition;
                                }
                                this.recordComment(isJavadoc ? 1003 : 1002);
                                this.commentTagStarts[this.commentPtr] = firstTag;
                                continue block33;
                            }
                            catch (IndexOutOfBoundsException indexOutOfBoundsException) {
                                return;
                            }
                        }
                    }
                    try {
                        boolean isJavaIdStart;
                        char c = this.currentCharacter;
                        if (c < '\u0080') {
                            if ((ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[c] & 0x40) != 0) {
                                this.scanIdentifierOrKeyword();
                                continue;
                            }
                            if ((ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[c] & 4) == 0) continue;
                            this.scanNumber(false);
                            continue;
                        }
                        if (c >= '\ud800' && c <= '\udbff') {
                            if (this.complianceLevel < 0x310000L) {
                                throw new InvalidInputException(INVALID_UNICODE_ESCAPE);
                            }
                            char low = (char)this.getNextChar();
                            if (low < '\udc00' || low > '\udfff') continue;
                            isJavaIdStart = ScannerHelper.isJavaIdentifierStart(this.complianceLevel, c, low);
                        } else {
                            if (c >= '\udc00' && c <= '\udfff') continue;
                            isJavaIdStart = ScannerHelper.isJavaIdentifierStart(this.complianceLevel, c);
                        }
                        if (!isJavaIdStart) continue;
                        this.scanIdentifierOrKeyword();
                    }
                    catch (InvalidInputException invalidInputException) {}
                }
                break;
            }
            catch (IndexOutOfBoundsException indexOutOfBoundsException) {
                break block97;
            }
            catch (InvalidInputException invalidInputException) {}
        }
    }

    public final boolean jumpOverUnicodeWhiteSpace() throws InvalidInputException {
        this.wasAcr = false;
        this.getNextUnicodeChar();
        return CharOperation.isWhitespace(this.currentCharacter);
    }

    final char[] optimizedCurrentTokenSource1() {
        char charOne = this.source[this.startPosition];
        switch (charOne) {
            case 'a': {
                return charArray_a;
            }
            case 'b': {
                return charArray_b;
            }
            case 'c': {
                return charArray_c;
            }
            case 'd': {
                return charArray_d;
            }
            case 'e': {
                return charArray_e;
            }
            case 'f': {
                return charArray_f;
            }
            case 'g': {
                return charArray_g;
            }
            case 'h': {
                return charArray_h;
            }
            case 'i': {
                return charArray_i;
            }
            case 'j': {
                return charArray_j;
            }
            case 'k': {
                return charArray_k;
            }
            case 'l': {
                return charArray_l;
            }
            case 'm': {
                return charArray_m;
            }
            case 'n': {
                return charArray_n;
            }
            case 'o': {
                return charArray_o;
            }
            case 'p': {
                return charArray_p;
            }
            case 'q': {
                return charArray_q;
            }
            case 'r': {
                return charArray_r;
            }
            case 's': {
                return charArray_s;
            }
            case 't': {
                return charArray_t;
            }
            case 'u': {
                return charArray_u;
            }
            case 'v': {
                return charArray_v;
            }
            case 'w': {
                return charArray_w;
            }
            case 'x': {
                return charArray_x;
            }
            case 'y': {
                return charArray_y;
            }
            case 'z': {
                return charArray_z;
            }
        }
        return new char[]{charOne};
    }

    final char[] optimizedCurrentTokenSource2() {
        char[] src = this.source;
        int start = this.startPosition;
        char c0 = src[start];
        char c1 = src[start + 1];
        int hash = ((c0 << 6) + c1) % 30;
        char[][] table = this.charArray_length[0][hash];
        int i = this.newEntry2;
        while (++i < 6) {
            char[] charArray = table[i];
            if (c0 != charArray[0] || c1 != charArray[1]) continue;
            return charArray;
        }
        i = -1;
        int max = this.newEntry2;
        while (++i <= max) {
            char[] charArray = table[i];
            if (c0 != charArray[0] || c1 != charArray[1]) continue;
            return charArray;
        }
        if (++max >= 6) {
            max = 0;
        }
        char[] r = new char[2];
        System.arraycopy(src, start, r, 0, 2);
        this.newEntry2 = max;
        table[this.newEntry2] = r;
        return r;
    }

    final char[] optimizedCurrentTokenSource3() {
        char[] src = this.source;
        int start = this.startPosition;
        char c1 = src[start + 1];
        char c0 = src[start];
        char c2 = src[start + 2];
        int hash = ((c0 << 6) + c2) % 30;
        char[][] table = this.charArray_length[1][hash];
        int i = this.newEntry3;
        while (++i < 6) {
            char[] charArray = table[i];
            if (c0 != charArray[0] || c1 != charArray[1] || c2 != charArray[2]) continue;
            return charArray;
        }
        i = -1;
        int max = this.newEntry3;
        while (++i <= max) {
            char[] charArray = table[i];
            if (c0 != charArray[0] || c1 != charArray[1] || c2 != charArray[2]) continue;
            return charArray;
        }
        if (++max >= 6) {
            max = 0;
        }
        char[] r = new char[3];
        System.arraycopy(src, start, r, 0, 3);
        this.newEntry3 = max;
        table[this.newEntry3] = r;
        return r;
    }

    final char[] optimizedCurrentTokenSource4() {
        char[] src = this.source;
        int start = this.startPosition;
        char c1 = src[start + 1];
        char c3 = src[start + 3];
        char c0 = src[start];
        char c2 = src[start + 2];
        int hash = ((c0 << 6) + c2) % 30;
        char[][] table = this.charArray_length[2][hash];
        int i = this.newEntry4;
        while (++i < 6) {
            char[] charArray = table[i];
            if (c0 != charArray[0] || c1 != charArray[1] || c2 != charArray[2] || c3 != charArray[3]) continue;
            return charArray;
        }
        i = -1;
        int max = this.newEntry4;
        while (++i <= max) {
            char[] charArray = table[i];
            if (c0 != charArray[0] || c1 != charArray[1] || c2 != charArray[2] || c3 != charArray[3]) continue;
            return charArray;
        }
        if (++max >= 6) {
            max = 0;
        }
        char[] r = new char[4];
        System.arraycopy(src, start, r, 0, 4);
        this.newEntry4 = max;
        table[this.newEntry4] = r;
        return r;
    }

    final char[] optimizedCurrentTokenSource5() {
        char[] src = this.source;
        int start = this.startPosition;
        char c1 = src[start + 1];
        char c3 = src[start + 3];
        char c0 = src[start];
        char c2 = src[start + 2];
        char c4 = src[start + 4];
        int hash = ((c0 << 12) + (c2 << 6) + c4) % 30;
        char[][] table = this.charArray_length[3][hash];
        int i = this.newEntry5;
        while (++i < 6) {
            char[] charArray = table[i];
            if (c0 != charArray[0] || c1 != charArray[1] || c2 != charArray[2] || c3 != charArray[3] || c4 != charArray[4]) continue;
            return charArray;
        }
        i = -1;
        int max = this.newEntry5;
        while (++i <= max) {
            char[] charArray = table[i];
            if (c0 != charArray[0] || c1 != charArray[1] || c2 != charArray[2] || c3 != charArray[3] || c4 != charArray[4]) continue;
            return charArray;
        }
        if (++max >= 6) {
            max = 0;
        }
        char[] r = new char[5];
        System.arraycopy(src, start, r, 0, 5);
        this.newEntry5 = max;
        table[this.newEntry5] = r;
        return r;
    }

    final char[] optimizedCurrentTokenSource6() {
        char[] src = this.source;
        int start = this.startPosition;
        char c1 = src[start + 1];
        char c3 = src[start + 3];
        char c5 = src[start + 5];
        char c0 = src[start];
        char c2 = src[start + 2];
        char c4 = src[start + 4];
        int hash = ((c0 << 12) + (c2 << 6) + c4) % 30;
        char[][] table = this.charArray_length[4][hash];
        int i = this.newEntry6;
        while (++i < 6) {
            char[] charArray = table[i];
            if (c0 != charArray[0] || c1 != charArray[1] || c2 != charArray[2] || c3 != charArray[3] || c4 != charArray[4] || c5 != charArray[5]) continue;
            return charArray;
        }
        i = -1;
        int max = this.newEntry6;
        while (++i <= max) {
            char[] charArray = table[i];
            if (c0 != charArray[0] || c1 != charArray[1] || c2 != charArray[2] || c3 != charArray[3] || c4 != charArray[4] || c5 != charArray[5]) continue;
            return charArray;
        }
        if (++max >= 6) {
            max = 0;
        }
        char[] r = new char[6];
        System.arraycopy(src, start, r, 0, 6);
        this.newEntry6 = max;
        table[this.newEntry6] = r;
        return r;
    }

    private void parseTags() {
        int position = 0;
        int currentStartPosition = this.startPosition;
        int currentLinePtr = this.linePtr;
        if (currentLinePtr >= 0) {
            position = this.lineEnds[currentLinePtr] + 1;
        }
        while (ScannerHelper.isWhitespace(this.source[position])) {
            ++position;
        }
        if (currentStartPosition == position) {
            return;
        }
        char[] s = null;
        int sourceEnd = this.currentPosition;
        int sourceStart = currentStartPosition;
        int sourceDelta = 0;
        if (this.withoutUnicodePtr != 0) {
            s = new char[this.withoutUnicodePtr];
            System.arraycopy(this.withoutUnicodeBuffer, 1, s, 0, this.withoutUnicodePtr);
            sourceEnd = this.withoutUnicodePtr;
            sourceStart = 1;
            sourceDelta = currentStartPosition;
        } else {
            s = this.source;
        }
        int pos = CharOperation.indexOf(TAG_PREFIX, s, true, sourceStart, sourceEnd);
        if (pos != -1) {
            if (this.nlsTags == null) {
                this.nlsTags = new NLSTag[10];
                this.nlsTagsPtr = 0;
            }
            while (pos != -1) {
                int start = pos + TAG_PREFIX_LENGTH;
                int end = CharOperation.indexOf('$', s, start, sourceEnd);
                if (end != -1) {
                    NLSTag currentTag = null;
                    int currentLine = currentLinePtr + 1;
                    try {
                        currentTag = new NLSTag(pos + sourceDelta, end + sourceDelta, currentLine, this.extractInt(s, start, end));
                    }
                    catch (NumberFormatException numberFormatException) {
                        currentTag = new NLSTag(pos + sourceDelta, end + sourceDelta, currentLine, -1);
                    }
                    if (this.nlsTagsPtr == this.nlsTags.length) {
                        this.nlsTags = new NLSTag[this.nlsTagsPtr + 10];
                        System.arraycopy(this.nlsTags, 0, this.nlsTags, 0, this.nlsTagsPtr);
                    }
                    this.nlsTags[this.nlsTagsPtr++] = currentTag;
                } else {
                    end = start;
                }
                pos = CharOperation.indexOf(TAG_PREFIX, s, true, end, sourceEnd);
            }
        }
    }

    private int extractInt(char[] array, int start, int end) {
        int value = 0;
        int i = start;
        while (i < end) {
            char currentChar = array[i];
            int digit = 0;
            switch (currentChar) {
                case '0': {
                    digit = 0;
                    break;
                }
                case '1': {
                    digit = 1;
                    break;
                }
                case '2': {
                    digit = 2;
                    break;
                }
                case '3': {
                    digit = 3;
                    break;
                }
                case '4': {
                    digit = 4;
                    break;
                }
                case '5': {
                    digit = 5;
                    break;
                }
                case '6': {
                    digit = 6;
                    break;
                }
                case '7': {
                    digit = 7;
                    break;
                }
                case '8': {
                    digit = 8;
                    break;
                }
                case '9': {
                    digit = 9;
                    break;
                }
                default: {
                    throw new NumberFormatException();
                }
            }
            value *= 10;
            if (digit < 0) {
                throw new NumberFormatException();
            }
            value += digit;
            ++i;
        }
        return value;
    }

    public final void pushLineSeparator() {
        block12: {
            if (this.currentCharacter == '\r') {
                int separatorPos = this.currentPosition - 1;
                if (this.linePtr >= 0 && this.lineEnds[this.linePtr] >= separatorPos) {
                    return;
                }
                int length = this.lineEnds.length;
                if (++this.linePtr >= length) {
                    this.lineEnds = new int[length + 250];
                    System.arraycopy(this.lineEnds, 0, this.lineEnds, 0, length);
                }
                this.lineEnds[this.linePtr] = separatorPos;
                try {
                    if (this.source[this.currentPosition] == '\n') {
                        this.lineEnds[this.linePtr] = this.currentPosition++;
                        this.wasAcr = false;
                        break block12;
                    }
                    this.wasAcr = true;
                }
                catch (IndexOutOfBoundsException indexOutOfBoundsException) {
                    this.wasAcr = true;
                }
            } else if (this.currentCharacter == '\n') {
                if (this.wasAcr && this.lineEnds[this.linePtr] == this.currentPosition - 2) {
                    this.lineEnds[this.linePtr] = this.currentPosition - 1;
                } else {
                    int separatorPos = this.currentPosition - 1;
                    if (this.linePtr >= 0 && this.lineEnds[this.linePtr] >= separatorPos) {
                        return;
                    }
                    int length = this.lineEnds.length;
                    if (++this.linePtr >= length) {
                        this.lineEnds = new int[length + 250];
                        System.arraycopy(this.lineEnds, 0, this.lineEnds, 0, length);
                    }
                    this.lineEnds[this.linePtr] = separatorPos;
                }
                this.wasAcr = false;
            }
        }
    }

    public final void pushUnicodeLineSeparator() {
        if (this.currentCharacter == '\r') {
            this.wasAcr = this.source[this.currentPosition] != '\n';
        } else if (this.currentCharacter == '\n') {
            this.wasAcr = false;
        }
    }

    public void recordComment(int token) {
        int commentStart = this.startPosition;
        int stopPosition = this.currentPosition;
        switch (token) {
            case 1001: {
                commentStart = -this.startPosition;
                stopPosition = -this.lastCommentLinePosition;
                break;
            }
            case 1002: {
                stopPosition = -this.currentPosition;
            }
        }
        int length = this.commentStops.length;
        if (++this.commentPtr >= length) {
            int newLength = length + 300;
            this.commentStops = new int[newLength];
            System.arraycopy(this.commentStops, 0, this.commentStops, 0, length);
            this.commentStarts = new int[newLength];
            System.arraycopy(this.commentStarts, 0, this.commentStarts, 0, length);
            this.commentTagStarts = new int[newLength];
            System.arraycopy(this.commentTagStarts, 0, this.commentTagStarts, 0, length);
        }
        this.commentStops[this.commentPtr] = stopPosition;
        this.commentStarts[this.commentPtr] = commentStart;
    }

    public void resetTo(int begin, int end) {
        this.diet = false;
        this.startPosition = this.currentPosition = begin;
        this.initialPosition = this.currentPosition;
        this.eofPosition = this.source != null && this.source.length < end ? this.source.length : (end < Integer.MAX_VALUE ? end + 1 : end);
        this.commentPtr = -1;
        this.foundTaskCount = 0;
    }

    protected final void scanEscapeCharacter() throws InvalidInputException {
        switch (this.currentCharacter) {
            case 'b': {
                this.currentCharacter = (char)8;
                break;
            }
            case 't': {
                this.currentCharacter = (char)9;
                break;
            }
            case 'n': {
                this.currentCharacter = (char)10;
                break;
            }
            case 'f': {
                this.currentCharacter = (char)12;
                break;
            }
            case 'r': {
                this.currentCharacter = (char)13;
                break;
            }
            case '\"': {
                this.currentCharacter = (char)34;
                break;
            }
            case '\'': {
                this.currentCharacter = (char)39;
                break;
            }
            case '\\': {
                this.currentCharacter = (char)92;
                break;
            }
            default: {
                int number = ScannerHelper.getNumericValue(this.currentCharacter);
                if (number >= 0 && number <= 7) {
                    boolean zeroToThreeNot = number > 3;
                    if (ScannerHelper.isDigit(this.currentCharacter = this.source[this.currentPosition++])) {
                        int digit = ScannerHelper.getNumericValue(this.currentCharacter);
                        if (digit >= 0 && digit <= 7) {
                            number = number * 8 + digit;
                            if (ScannerHelper.isDigit(this.currentCharacter = this.source[this.currentPosition++])) {
                                if (zeroToThreeNot) {
                                    --this.currentPosition;
                                } else {
                                    digit = ScannerHelper.getNumericValue(this.currentCharacter);
                                    if (digit >= 0 && digit <= 7) {
                                        number = number * 8 + digit;
                                    } else {
                                        --this.currentPosition;
                                    }
                                }
                            } else {
                                --this.currentPosition;
                            }
                        } else {
                            --this.currentPosition;
                        }
                    } else {
                        --this.currentPosition;
                    }
                    if (number > 255) {
                        throw new InvalidInputException(INVALID_ESCAPE);
                    }
                    this.currentCharacter = (char)number;
                    break;
                }
                throw new InvalidInputException(INVALID_ESCAPE);
            }
        }
    }

    public int scanIdentifierOrKeywordWithBoundCheck() {
        int index;
        char[] data;
        int length;
        int pos;
        this.useAssertAsAnIndentifier = false;
        this.useEnumAsAnIndentifier = false;
        char[] src = this.source;
        int srcLength = this.eofPosition;
        while ((pos = ++this.currentPosition) < srcLength) {
            char c = src[pos];
            if (c < '\u0080') {
                if ((ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[c] & 0x3C) != 0) {
                    if (this.withoutUnicodePtr != 0) {
                        this.currentCharacter = c;
                        this.unicodeStore();
                    }
                    continue;
                }
                if ((ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[c] & 0x102) != 0) {
                    this.currentCharacter = c;
                    break;
                }
                while (this.getNextCharAsJavaIdentifierPartWithBoundCheck()) {
                }
                break;
            }
            while (this.getNextCharAsJavaIdentifierPartWithBoundCheck()) {
            }
            break block0;
        }
        if (this.withoutUnicodePtr == 0) {
            length = this.currentPosition - this.startPosition;
            if (length == 1) {
                return 26;
            }
            data = this.source;
            index = this.startPosition;
        } else {
            length = this.withoutUnicodePtr;
            if (length == 1) {
                return 26;
            }
            data = this.withoutUnicodeBuffer;
            index = 1;
        }
        return this.internalScanIdentifierOrKeyword(index, length, data);
    }

    public int scanIdentifierOrKeyword() {
        int index;
        char[] data;
        int length;
        int pos;
        this.useAssertAsAnIndentifier = false;
        this.useEnumAsAnIndentifier = false;
        char[] src = this.source;
        int srcLength = this.eofPosition;
        while ((pos = ++this.currentPosition) < srcLength) {
            char c = src[pos];
            if (c < '\u0080') {
                if ((ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[c] & 0x3C) != 0) {
                    if (this.withoutUnicodePtr != 0) {
                        this.currentCharacter = c;
                        this.unicodeStore();
                    }
                    continue;
                }
                if ((ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[c] & 0x102) != 0) {
                    this.currentCharacter = c;
                    break;
                }
                while (this.getNextCharAsJavaIdentifierPart()) {
                }
                break;
            }
            while (this.getNextCharAsJavaIdentifierPart()) {
            }
            break block0;
        }
        if (this.withoutUnicodePtr == 0) {
            length = this.currentPosition - this.startPosition;
            if (length == 1) {
                return 26;
            }
            data = this.source;
            index = this.startPosition;
        } else {
            length = this.withoutUnicodePtr;
            if (length == 1) {
                return 26;
            }
            data = this.withoutUnicodeBuffer;
            index = 1;
        }
        return this.internalScanIdentifierOrKeyword(index, length, data);
    }

    private int internalScanIdentifierOrKeyword(int index, int length, char[] data) {
        switch (data[index]) {
            case 'a': {
                switch (length) {
                    case 8: {
                        if (data[++index] == 'b' && data[++index] == 's' && data[++index] == 't' && data[++index] == 'r' && data[++index] == 'a' && data[++index] == 'c' && data[++index] == 't') {
                            return 56;
                        }
                        return 26;
                    }
                    case 6: {
                        if (data[++index] == 's' && data[++index] == 's' && data[++index] == 'e' && data[++index] == 'r' && data[++index] == 't') {
                            if (this.sourceLevel >= 0x300000L) {
                                this.containsAssertKeyword = true;
                                return 74;
                            }
                            this.useAssertAsAnIndentifier = true;
                            return 26;
                        }
                        return 26;
                    }
                }
                return 26;
            }
            case 'b': {
                switch (length) {
                    case 4: {
                        if (data[++index] == 'y' && data[++index] == 't' && data[++index] == 'e') {
                            return 33;
                        }
                        return 26;
                    }
                    case 5: {
                        if (data[++index] == 'r' && data[++index] == 'e' && data[++index] == 'a' && data[++index] == 'k') {
                            return 75;
                        }
                        return 26;
                    }
                    case 7: {
                        if (data[++index] == 'o' && data[++index] == 'o' && data[++index] == 'l' && data[++index] == 'e' && data[++index] == 'a' && data[++index] == 'n') {
                            return 32;
                        }
                        return 26;
                    }
                }
                return 26;
            }
            case 'c': {
                switch (length) {
                    case 4: {
                        if (data[++index] == 'a') {
                            if (data[++index] == 's' && data[++index] == 'e') {
                                return 102;
                            }
                            return 26;
                        }
                        if (data[index] == 'h' && data[++index] == 'a' && data[++index] == 'r') {
                            return 34;
                        }
                        return 26;
                    }
                    case 5: {
                        if (data[++index] == 'a') {
                            if (data[++index] == 't' && data[++index] == 'c' && data[++index] == 'h') {
                                return 100;
                            }
                            return 26;
                        }
                        if (data[index] == 'l') {
                            if (data[++index] == 'a' && data[++index] == 's' && data[++index] == 's') {
                                return 72;
                            }
                            return 26;
                        }
                        if (data[index] == 'o' && data[++index] == 'n' && data[++index] == 's' && data[++index] == 't') {
                            return 108;
                        }
                        return 26;
                    }
                    case 8: {
                        if (data[++index] == 'o' && data[++index] == 'n' && data[++index] == 't' && data[++index] == 'i' && data[++index] == 'n' && data[++index] == 'u' && data[++index] == 'e') {
                            return 76;
                        }
                        return 26;
                    }
                }
                return 26;
            }
            case 'd': {
                switch (length) {
                    case 2: {
                        if (data[++index] == 'o') {
                            return 77;
                        }
                        return 26;
                    }
                    case 6: {
                        if (data[++index] == 'o' && data[++index] == 'u' && data[++index] == 'b' && data[++index] == 'l' && data[++index] == 'e') {
                            return 35;
                        }
                        return 26;
                    }
                    case 7: {
                        if (data[++index] == 'e' && data[++index] == 'f' && data[++index] == 'a' && data[++index] == 'u' && data[++index] == 'l' && data[++index] == 't') {
                            return 97;
                        }
                        return 26;
                    }
                }
                return 26;
            }
            case 'e': {
                switch (length) {
                    case 4: {
                        if (data[++index] == 'l') {
                            if (data[++index] == 's' && data[++index] == 'e') {
                                return 104;
                            }
                            return 26;
                        }
                        if (data[index] == 'n' && data[++index] == 'u' && data[++index] == 'm') {
                            if (this.sourceLevel >= 0x310000L) {
                                return 98;
                            }
                            this.useEnumAsAnIndentifier = true;
                            return 26;
                        }
                        return 26;
                    }
                    case 7: {
                        if (data[++index] == 'x' && data[++index] == 't' && data[++index] == 'e' && data[++index] == 'n' && data[++index] == 'd' && data[++index] == 's') {
                            return 99;
                        }
                        return 26;
                    }
                }
                return 26;
            }
            case 'f': {
                switch (length) {
                    case 3: {
                        if (data[++index] == 'o' && data[++index] == 'r') {
                            return 78;
                        }
                        return 26;
                    }
                    case 5: {
                        if (data[++index] == 'i') {
                            if (data[++index] == 'n' && data[++index] == 'a' && data[++index] == 'l') {
                                return 57;
                            }
                            return 26;
                        }
                        if (data[index] == 'l') {
                            if (data[++index] == 'o' && data[++index] == 'a' && data[++index] == 't') {
                                return 36;
                            }
                            return 26;
                        }
                        if (data[index] == 'a' && data[++index] == 'l' && data[++index] == 's' && data[++index] == 'e') {
                            return 44;
                        }
                        return 26;
                    }
                    case 7: {
                        if (data[++index] == 'i' && data[++index] == 'n' && data[++index] == 'a' && data[++index] == 'l' && data[++index] == 'l' && data[++index] == 'y') {
                            return 103;
                        }
                        return 26;
                    }
                }
                return 26;
            }
            case 'g': {
                if (length == 4 && data[++index] == 'o' && data[++index] == 't' && data[++index] == 'o') {
                    return 109;
                }
                return 26;
            }
            case 'i': {
                switch (length) {
                    case 2: {
                        if (data[++index] == 'f') {
                            return 79;
                        }
                        return 26;
                    }
                    case 3: {
                        if (data[++index] == 'n' && data[++index] == 't') {
                            return 37;
                        }
                        return 26;
                    }
                    case 6: {
                        if (data[++index] == 'm' && data[++index] == 'p' && data[++index] == 'o' && data[++index] == 'r' && data[++index] == 't') {
                            return 101;
                        }
                        return 26;
                    }
                    case 9: {
                        if (data[++index] == 'n' && data[++index] == 't' && data[++index] == 'e' && data[++index] == 'r' && data[++index] == 'f' && data[++index] == 'a' && data[++index] == 'c' && data[++index] == 'e') {
                            return 95;
                        }
                        return 26;
                    }
                    case 10: {
                        if (data[++index] == 'm') {
                            if (data[++index] == 'p' && data[++index] == 'l' && data[++index] == 'e' && data[++index] == 'm' && data[++index] == 'e' && data[++index] == 'n' && data[++index] == 't' && data[++index] == 's') {
                                return 106;
                            }
                            return 26;
                        }
                        if (data[index] == 'n' && data[++index] == 's' && data[++index] == 't' && data[++index] == 'a' && data[++index] == 'n' && data[++index] == 'c' && data[++index] == 'e' && data[++index] == 'o' && data[++index] == 'f') {
                            return 13;
                        }
                        return 26;
                    }
                }
                return 26;
            }
            case 'l': {
                if (length == 4 && data[++index] == 'o' && data[++index] == 'n' && data[++index] == 'g') {
                    return 38;
                }
                return 26;
            }
            case 'n': {
                switch (length) {
                    case 3: {
                        if (data[++index] == 'e' && data[++index] == 'w') {
                            return 43;
                        }
                        return 26;
                    }
                    case 4: {
                        if (data[++index] == 'u' && data[++index] == 'l' && data[++index] == 'l') {
                            return 45;
                        }
                        return 26;
                    }
                    case 6: {
                        if (data[++index] == 'a' && data[++index] == 't' && data[++index] == 'i' && data[++index] == 'v' && data[++index] == 'e') {
                            return 58;
                        }
                        return 26;
                    }
                }
                return 26;
            }
            case 'p': {
                switch (length) {
                    case 6: {
                        if (data[++index] == 'u' && data[++index] == 'b' && data[++index] == 'l' && data[++index] == 'i' && data[++index] == 'c') {
                            return 61;
                        }
                        return 26;
                    }
                    case 7: {
                        if (data[++index] == 'a') {
                            if (data[++index] == 'c' && data[++index] == 'k' && data[++index] == 'a' && data[++index] == 'g' && data[++index] == 'e') {
                                return 96;
                            }
                            return 26;
                        }
                        if (data[index] == 'r' && data[++index] == 'i' && data[++index] == 'v' && data[++index] == 'a' && data[++index] == 't' && data[++index] == 'e') {
                            return 59;
                        }
                        return 26;
                    }
                    case 9: {
                        if (data[++index] == 'r' && data[++index] == 'o' && data[++index] == 't' && data[++index] == 'e' && data[++index] == 'c' && data[++index] == 't' && data[++index] == 'e' && data[++index] == 'd') {
                            return 60;
                        }
                        return 26;
                    }
                }
                return 26;
            }
            case 'r': {
                if (length == 6 && data[++index] == 'e' && data[++index] == 't' && data[++index] == 'u' && data[++index] == 'r' && data[++index] == 'n') {
                    return 80;
                }
                return 26;
            }
            case 's': {
                switch (length) {
                    case 5: {
                        if (data[++index] == 'h') {
                            if (data[++index] == 'o' && data[++index] == 'r' && data[++index] == 't') {
                                return 39;
                            }
                            return 26;
                        }
                        if (data[index] == 'u' && data[++index] == 'p' && data[++index] == 'e' && data[++index] == 'r') {
                            return 41;
                        }
                        return 26;
                    }
                    case 6: {
                        if (data[++index] == 't') {
                            if (data[++index] == 'a' && data[++index] == 't' && data[++index] == 'i' && data[++index] == 'c') {
                                return 54;
                            }
                            return 26;
                        }
                        if (data[index] == 'w' && data[++index] == 'i' && data[++index] == 't' && data[++index] == 'c' && data[++index] == 'h') {
                            return 81;
                        }
                        return 26;
                    }
                    case 8: {
                        if (data[++index] == 't' && data[++index] == 'r' && data[++index] == 'i' && data[++index] == 'c' && data[++index] == 't' && data[++index] == 'f' && data[++index] == 'p') {
                            return 62;
                        }
                        return 26;
                    }
                    case 12: {
                        if (data[++index] == 'y' && data[++index] == 'n' && data[++index] == 'c' && data[++index] == 'h' && data[++index] == 'r' && data[++index] == 'o' && data[++index] == 'n' && data[++index] == 'i' && data[++index] == 'z' && data[++index] == 'e' && data[++index] == 'd') {
                            return 55;
                        }
                        return 26;
                    }
                }
                return 26;
            }
            case 't': {
                switch (length) {
                    case 3: {
                        if (data[++index] == 'r' && data[++index] == 'y') {
                            return 83;
                        }
                        return 26;
                    }
                    case 4: {
                        if (data[++index] == 'h') {
                            if (data[++index] == 'i' && data[++index] == 's') {
                                return 42;
                            }
                            return 26;
                        }
                        if (data[index] == 'r' && data[++index] == 'u' && data[++index] == 'e') {
                            return 46;
                        }
                        return 26;
                    }
                    case 5: {
                        if (data[++index] == 'h' && data[++index] == 'r' && data[++index] == 'o' && data[++index] == 'w') {
                            return 82;
                        }
                        return 26;
                    }
                    case 6: {
                        if (data[++index] == 'h' && data[++index] == 'r' && data[++index] == 'o' && data[++index] == 'w' && data[++index] == 's') {
                            return 105;
                        }
                        return 26;
                    }
                    case 9: {
                        if (data[++index] == 'r' && data[++index] == 'a' && data[++index] == 'n' && data[++index] == 's' && data[++index] == 'i' && data[++index] == 'e' && data[++index] == 'n' && data[++index] == 't') {
                            return 63;
                        }
                        return 26;
                    }
                }
                return 26;
            }
            case 'v': {
                switch (length) {
                    case 4: {
                        if (data[++index] == 'o' && data[++index] == 'i' && data[++index] == 'd') {
                            return 40;
                        }
                        return 26;
                    }
                    case 8: {
                        if (data[++index] == 'o' && data[++index] == 'l' && data[++index] == 'a' && data[++index] == 't' && data[++index] == 'i' && data[++index] == 'l' && data[++index] == 'e') {
                            return 64;
                        }
                        return 26;
                    }
                }
                return 26;
            }
            case 'w': {
                switch (length) {
                    case 5: {
                        if (data[++index] == 'h' && data[++index] == 'i' && data[++index] == 'l' && data[++index] == 'e') {
                            return 73;
                        }
                        return 26;
                    }
                }
                return 26;
            }
        }
        return 26;
    }

    public int scanNumber(boolean dotPrefix) throws InvalidInputException {
        boolean floating = dotPrefix;
        if (!dotPrefix && this.currentCharacter == '0') {
            if (this.getNextChar('x', 'X') >= 0) {
                int start = this.currentPosition;
                this.consumeDigits(16, true);
                int end = this.currentPosition;
                if (this.getNextChar('l', 'L') >= 0) {
                    if (end == start) {
                        throw new InvalidInputException(INVALID_HEXA);
                    }
                    return 48;
                }
                if (this.getNextChar('.')) {
                    boolean hasNoDigitsBeforeDot = end == start;
                    start = this.currentPosition;
                    this.consumeDigits(16, true);
                    end = this.currentPosition;
                    if (hasNoDigitsBeforeDot && end == start) {
                        if (this.sourceLevel < 0x310000L) {
                            throw new InvalidInputException(ILLEGAL_HEXA_LITERAL);
                        }
                        throw new InvalidInputException(INVALID_HEXA);
                    }
                    if (this.getNextChar('p', 'P') >= 0) {
                        this.unicodeAsBackSlash = false;
                        if ((this.currentCharacter = this.source[this.currentPosition++]) == '\\' && this.source[this.currentPosition] == 'u') {
                            this.getNextUnicodeChar();
                        } else if (this.withoutUnicodePtr != 0) {
                            this.unicodeStore();
                        }
                        if (this.currentCharacter == '-' || this.currentCharacter == '+') {
                            this.unicodeAsBackSlash = false;
                            if ((this.currentCharacter = this.source[this.currentPosition++]) == '\\' && this.source[this.currentPosition] == 'u') {
                                this.getNextUnicodeChar();
                            } else if (this.withoutUnicodePtr != 0) {
                                this.unicodeStore();
                            }
                        }
                        if (!ScannerHelper.isDigit(this.currentCharacter)) {
                            if (this.sourceLevel < 0x310000L) {
                                throw new InvalidInputException(ILLEGAL_HEXA_LITERAL);
                            }
                            if (this.currentCharacter == '_') {
                                this.consumeDigits(10);
                                throw new InvalidInputException(INVALID_UNDERSCORE);
                            }
                            throw new InvalidInputException(INVALID_HEXA);
                        }
                        this.consumeDigits(10);
                        if (this.getNextChar('f', 'F') >= 0) {
                            if (this.sourceLevel < 0x310000L) {
                                throw new InvalidInputException(ILLEGAL_HEXA_LITERAL);
                            }
                            return 49;
                        }
                        if (this.getNextChar('d', 'D') >= 0) {
                            if (this.sourceLevel < 0x310000L) {
                                throw new InvalidInputException(ILLEGAL_HEXA_LITERAL);
                            }
                            return 50;
                        }
                        if (this.getNextChar('l', 'L') >= 0) {
                            if (this.sourceLevel < 0x310000L) {
                                throw new InvalidInputException(ILLEGAL_HEXA_LITERAL);
                            }
                            throw new InvalidInputException(INVALID_HEXA);
                        }
                        if (this.sourceLevel < 0x310000L) {
                            throw new InvalidInputException(ILLEGAL_HEXA_LITERAL);
                        }
                        return 50;
                    }
                    if (this.sourceLevel < 0x310000L) {
                        throw new InvalidInputException(ILLEGAL_HEXA_LITERAL);
                    }
                    throw new InvalidInputException(INVALID_HEXA);
                }
                if (this.getNextChar('p', 'P') >= 0) {
                    this.unicodeAsBackSlash = false;
                    if ((this.currentCharacter = this.source[this.currentPosition++]) == '\\' && this.source[this.currentPosition] == 'u') {
                        this.getNextUnicodeChar();
                    } else if (this.withoutUnicodePtr != 0) {
                        this.unicodeStore();
                    }
                    if (this.currentCharacter == '-' || this.currentCharacter == '+') {
                        this.unicodeAsBackSlash = false;
                        if ((this.currentCharacter = this.source[this.currentPosition++]) == '\\' && this.source[this.currentPosition] == 'u') {
                            this.getNextUnicodeChar();
                        } else if (this.withoutUnicodePtr != 0) {
                            this.unicodeStore();
                        }
                    }
                    if (!ScannerHelper.isDigit(this.currentCharacter)) {
                        if (this.sourceLevel < 0x310000L) {
                            throw new InvalidInputException(ILLEGAL_HEXA_LITERAL);
                        }
                        if (this.currentCharacter == '_') {
                            this.consumeDigits(10);
                            throw new InvalidInputException(INVALID_UNDERSCORE);
                        }
                        throw new InvalidInputException(INVALID_FLOAT);
                    }
                    this.consumeDigits(10);
                    if (this.getNextChar('f', 'F') >= 0) {
                        if (this.sourceLevel < 0x310000L) {
                            throw new InvalidInputException(ILLEGAL_HEXA_LITERAL);
                        }
                        return 49;
                    }
                    if (this.getNextChar('d', 'D') >= 0) {
                        if (this.sourceLevel < 0x310000L) {
                            throw new InvalidInputException(ILLEGAL_HEXA_LITERAL);
                        }
                        return 50;
                    }
                    if (this.getNextChar('l', 'L') >= 0) {
                        if (this.sourceLevel < 0x310000L) {
                            throw new InvalidInputException(ILLEGAL_HEXA_LITERAL);
                        }
                        throw new InvalidInputException(INVALID_HEXA);
                    }
                    if (this.sourceLevel < 0x310000L) {
                        throw new InvalidInputException(ILLEGAL_HEXA_LITERAL);
                    }
                    return 50;
                }
                if (end == start) {
                    throw new InvalidInputException(INVALID_HEXA);
                }
                return 47;
            }
            if (this.getNextChar('b', 'B') >= 0) {
                int start = this.currentPosition;
                this.consumeDigits(2, true);
                int end = this.currentPosition;
                if (end == start) {
                    if (this.sourceLevel < 0x330000L) {
                        throw new InvalidInputException(BINARY_LITERAL_NOT_BELOW_17);
                    }
                    throw new InvalidInputException(INVALID_BINARY);
                }
                if (this.getNextChar('l', 'L') >= 0) {
                    if (this.sourceLevel < 0x330000L) {
                        throw new InvalidInputException(BINARY_LITERAL_NOT_BELOW_17);
                    }
                    return 48;
                }
                if (this.sourceLevel < 0x330000L) {
                    throw new InvalidInputException(BINARY_LITERAL_NOT_BELOW_17);
                }
                return 47;
            }
            if (this.getNextCharAsDigit()) {
                this.consumeDigits(10);
                if (this.getNextChar('l', 'L') >= 0) {
                    return 48;
                }
                if (this.getNextChar('f', 'F') >= 0) {
                    return 49;
                }
                if (this.getNextChar('d', 'D') >= 0) {
                    return 50;
                }
                boolean isInteger = true;
                if (this.getNextChar('.')) {
                    isInteger = false;
                    this.consumeDigits(10);
                }
                if (this.getNextChar('e', 'E') >= 0) {
                    isInteger = false;
                    this.unicodeAsBackSlash = false;
                    if ((this.currentCharacter = this.source[this.currentPosition++]) == '\\' && this.source[this.currentPosition] == 'u') {
                        this.getNextUnicodeChar();
                    } else if (this.withoutUnicodePtr != 0) {
                        this.unicodeStore();
                    }
                    if (this.currentCharacter == '-' || this.currentCharacter == '+') {
                        this.unicodeAsBackSlash = false;
                        if ((this.currentCharacter = this.source[this.currentPosition++]) == '\\' && this.source[this.currentPosition] == 'u') {
                            this.getNextUnicodeChar();
                        } else if (this.withoutUnicodePtr != 0) {
                            this.unicodeStore();
                        }
                    }
                    if (!ScannerHelper.isDigit(this.currentCharacter)) {
                        if (this.currentCharacter == '_') {
                            this.consumeDigits(10);
                            throw new InvalidInputException(INVALID_UNDERSCORE);
                        }
                        throw new InvalidInputException(INVALID_FLOAT);
                    }
                    this.consumeDigits(10);
                }
                if (this.getNextChar('f', 'F') >= 0) {
                    return 49;
                }
                if (this.getNextChar('d', 'D') >= 0 || !isInteger) {
                    return 50;
                }
                return 47;
            }
        }
        this.consumeDigits(10);
        if (!dotPrefix && this.getNextChar('l', 'L') >= 0) {
            return 48;
        }
        if (!dotPrefix && this.getNextChar('.')) {
            this.consumeDigits(10, true);
            floating = true;
        }
        if (this.getNextChar('e', 'E') >= 0) {
            floating = true;
            this.unicodeAsBackSlash = false;
            if ((this.currentCharacter = this.source[this.currentPosition++]) == '\\' && this.source[this.currentPosition] == 'u') {
                this.getNextUnicodeChar();
            } else if (this.withoutUnicodePtr != 0) {
                this.unicodeStore();
            }
            if (this.currentCharacter == '-' || this.currentCharacter == '+') {
                this.unicodeAsBackSlash = false;
                if ((this.currentCharacter = this.source[this.currentPosition++]) == '\\' && this.source[this.currentPosition] == 'u') {
                    this.getNextUnicodeChar();
                } else if (this.withoutUnicodePtr != 0) {
                    this.unicodeStore();
                }
            }
            if (!ScannerHelper.isDigit(this.currentCharacter)) {
                if (this.currentCharacter == '_') {
                    this.consumeDigits(10);
                    throw new InvalidInputException(INVALID_UNDERSCORE);
                }
                throw new InvalidInputException(INVALID_FLOAT);
            }
            this.consumeDigits(10);
        }
        if (this.getNextChar('d', 'D') >= 0) {
            return 50;
        }
        if (this.getNextChar('f', 'F') >= 0) {
            return 49;
        }
        return floating ? 50 : 47;
    }

    public final int getLineNumber(int position) {
        return Util.getLineNumber(position, this.lineEnds, 0, this.linePtr);
    }

    public final void setSource(char[] sourceString) {
        int sourceLength;
        if (sourceString == null) {
            this.source = CharOperation.NO_CHAR;
            sourceLength = 0;
        } else {
            this.source = sourceString;
            sourceLength = sourceString.length;
        }
        this.startPosition = -1;
        this.eofPosition = sourceLength;
        this.currentPosition = 0;
        this.initialPosition = 0;
        this.containsAssertKeyword = false;
        this.linePtr = -1;
    }

    public final void setSource(char[] contents, CompilationResult compilationResult) {
        if (contents == null) {
            char[] cuContents = compilationResult.compilationUnit.getContents();
            this.setSource(cuContents);
        } else {
            this.setSource(contents);
        }
        int[] lineSeparatorPositions = compilationResult.lineSeparatorPositions;
        if (lineSeparatorPositions != null) {
            this.lineEnds = lineSeparatorPositions;
            this.linePtr = lineSeparatorPositions.length - 1;
        }
    }

    public final void setSource(CompilationResult compilationResult) {
        this.setSource(null, compilationResult);
    }

    public String toString() {
        if (this.startPosition == this.eofPosition) {
            return "EOF\n\n" + new String(this.source);
        }
        if (this.currentPosition > this.eofPosition) {
            return "behind the EOF\n\n" + new String(this.source);
        }
        if (this.currentPosition <= 0) {
            return "NOT started!\n\n" + new String(this.source);
        }
        StringBuffer buffer = new StringBuffer();
        if (this.startPosition < 1000) {
            buffer.append(this.source, 0, this.startPosition);
        } else {
            buffer.append("<source beginning>\n...\n");
            int line = Util.getLineNumber(this.startPosition - 1000, this.lineEnds, 0, this.linePtr);
            int lineStart = this.getLineStart(line);
            buffer.append(this.source, lineStart, this.startPosition - lineStart);
        }
        buffer.append("\n===============================\nStarts here -->");
        int middleLength = this.currentPosition - 1 - this.startPosition + 1;
        if (middleLength > -1) {
            buffer.append(this.source, this.startPosition, middleLength);
        }
        buffer.append("<-- Ends here\n===============================\n");
        buffer.append(this.source, this.currentPosition - 1 + 1, this.eofPosition - (this.currentPosition - 1) - 1);
        return buffer.toString();
    }

    public String toStringAction(int act) {
        switch (act) {
            case 26: {
                return "Identifier(" + new String(this.getCurrentTokenSource()) + ")";
            }
            case 56: {
                return "abstract";
            }
            case 32: {
                return "boolean";
            }
            case 75: {
                return "break";
            }
            case 33: {
                return "byte";
            }
            case 102: {
                return "case";
            }
            case 100: {
                return "catch";
            }
            case 34: {
                return "char";
            }
            case 72: {
                return "class";
            }
            case 76: {
                return "continue";
            }
            case 97: {
                return "default";
            }
            case 77: {
                return "do";
            }
            case 35: {
                return "double";
            }
            case 104: {
                return "else";
            }
            case 99: {
                return "extends";
            }
            case 44: {
                return "false";
            }
            case 57: {
                return "final";
            }
            case 103: {
                return "finally";
            }
            case 36: {
                return "float";
            }
            case 78: {
                return "for";
            }
            case 79: {
                return "if";
            }
            case 106: {
                return "implements";
            }
            case 101: {
                return "import";
            }
            case 13: {
                return "instanceof";
            }
            case 37: {
                return "int";
            }
            case 95: {
                return "interface";
            }
            case 38: {
                return "long";
            }
            case 58: {
                return "native";
            }
            case 43: {
                return "new";
            }
            case 45: {
                return "null";
            }
            case 96: {
                return "package";
            }
            case 59: {
                return "private";
            }
            case 60: {
                return "protected";
            }
            case 61: {
                return "public";
            }
            case 80: {
                return "return";
            }
            case 39: {
                return "short";
            }
            case 54: {
                return "static";
            }
            case 41: {
                return "super";
            }
            case 81: {
                return "switch";
            }
            case 55: {
                return "synchronized";
            }
            case 42: {
                return "this";
            }
            case 82: {
                return "throw";
            }
            case 105: {
                return "throws";
            }
            case 63: {
                return "transient";
            }
            case 46: {
                return "true";
            }
            case 83: {
                return "try";
            }
            case 40: {
                return "void";
            }
            case 64: {
                return "volatile";
            }
            case 73: {
                return "while";
            }
            case 47: {
                return "Integer(" + new String(this.getCurrentTokenSource()) + ")";
            }
            case 48: {
                return "Long(" + new String(this.getCurrentTokenSource()) + ")";
            }
            case 49: {
                return "Float(" + new String(this.getCurrentTokenSource()) + ")";
            }
            case 50: {
                return "Double(" + new String(this.getCurrentTokenSource()) + ")";
            }
            case 51: {
                return "Char(" + new String(this.getCurrentTokenSource()) + ")";
            }
            case 52: {
                return "String(" + new String(this.getCurrentTokenSource()) + ")";
            }
            case 8: {
                return "++";
            }
            case 9: {
                return "--";
            }
            case 18: {
                return "==";
            }
            case 14: {
                return "<=";
            }
            case 15: {
                return ">=";
            }
            case 19: {
                return "!=";
            }
            case 17: {
                return "<<";
            }
            case 10: {
                return ">>";
            }
            case 12: {
                return ">>>";
            }
            case 84: {
                return "+=";
            }
            case 85: {
                return "-=";
            }
            case 86: {
                return "*=";
            }
            case 87: {
                return "/=";
            }
            case 88: {
                return "&=";
            }
            case 89: {
                return "|=";
            }
            case 90: {
                return "^=";
            }
            case 91: {
                return "%=";
            }
            case 92: {
                return "<<=";
            }
            case 93: {
                return ">>=";
            }
            case 94: {
                return ">>>=";
            }
            case 25: {
                return "||";
            }
            case 24: {
                return "&&";
            }
            case 1: {
                return "+";
            }
            case 2: {
                return "-";
            }
            case 66: {
                return "!";
            }
            case 5: {
                return "%";
            }
            case 21: {
                return "^";
            }
            case 20: {
                return "&";
            }
            case 4: {
                return "*";
            }
            case 22: {
                return "|";
            }
            case 67: {
                return "~";
            }
            case 6: {
                return "/";
            }
            case 11: {
                return ">";
            }
            case 7: {
                return "<";
            }
            case 29: {
                return "(";
            }
            case 28: {
                return ")";
            }
            case 68: {
                return "{";
            }
            case 31: {
                return "}";
            }
            case 16: {
                return "[";
            }
            case 70: {
                return "]";
            }
            case 27: {
                return ";";
            }
            case 23: {
                return "?";
            }
            case 65: {
                return ":";
            }
            case 30: {
                return ",";
            }
            case 3: {
                return ".";
            }
            case 71: {
                return "=";
            }
            case 69: {
                return "EOF";
            }
            case 1000: {
                return "white_space(" + new String(this.getCurrentTokenSource()) + ")";
            }
        }
        return "not-a-token";
    }

    public void unicodeInitializeBuffer(int length) {
        int bLength;
        this.withoutUnicodePtr = length;
        if (this.withoutUnicodeBuffer == null) {
            this.withoutUnicodeBuffer = new char[length + 11];
        }
        if (1 + length >= (bLength = this.withoutUnicodeBuffer.length)) {
            this.withoutUnicodeBuffer = new char[length + 11];
            System.arraycopy(this.withoutUnicodeBuffer, 0, this.withoutUnicodeBuffer, 0, bLength);
        }
        System.arraycopy(this.source, this.startPosition, this.withoutUnicodeBuffer, 1, length);
    }

    public void unicodeStore() {
        int length;
        int pos = ++this.withoutUnicodePtr;
        if (this.withoutUnicodeBuffer == null) {
            this.withoutUnicodeBuffer = new char[10];
        }
        if (pos == (length = this.withoutUnicodeBuffer.length)) {
            this.withoutUnicodeBuffer = new char[length * 2];
            System.arraycopy(this.withoutUnicodeBuffer, 0, this.withoutUnicodeBuffer, 0, length);
        }
        this.withoutUnicodeBuffer[pos] = this.currentCharacter;
    }

    public void unicodeStore(char character) {
        int length;
        int pos = ++this.withoutUnicodePtr;
        if (this.withoutUnicodeBuffer == null) {
            this.withoutUnicodeBuffer = new char[10];
        }
        if (pos == (length = this.withoutUnicodeBuffer.length)) {
            this.withoutUnicodeBuffer = new char[length * 2];
            System.arraycopy(this.withoutUnicodeBuffer, 0, this.withoutUnicodeBuffer, 0, length);
        }
        this.withoutUnicodeBuffer[pos] = character;
    }

    public static boolean isIdentifier(int token) {
        return token == 26;
    }

    public static boolean isLiteral(int token) {
        switch (token) {
            case 47: 
            case 48: 
            case 49: 
            case 50: 
            case 51: 
            case 52: {
                return true;
            }
        }
        return false;
    }

    public static boolean isKeyword(int token) {
        switch (token) {
            case 13: 
            case 32: 
            case 33: 
            case 34: 
            case 35: 
            case 36: 
            case 37: 
            case 38: 
            case 39: 
            case 40: 
            case 41: 
            case 42: 
            case 43: 
            case 44: 
            case 45: 
            case 46: 
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
            case 64: 
            case 72: 
            case 73: 
            case 74: 
            case 75: 
            case 76: 
            case 77: 
            case 78: 
            case 79: 
            case 80: 
            case 81: 
            case 82: 
            case 83: 
            case 95: 
            case 96: 
            case 97: 
            case 99: 
            case 100: 
            case 101: 
            case 102: 
            case 103: 
            case 104: 
            case 105: 
            case 106: {
                return true;
            }
        }
        return false;
    }
}

