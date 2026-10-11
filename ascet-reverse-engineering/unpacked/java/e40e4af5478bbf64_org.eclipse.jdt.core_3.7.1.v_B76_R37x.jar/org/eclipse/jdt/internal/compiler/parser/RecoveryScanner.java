/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.parser;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.parser.RecoveryScannerData;
import org.eclipse.jdt.internal.compiler.parser.Scanner;

public class RecoveryScanner
extends Scanner {
    public static final char[] FAKE_IDENTIFIER = "$missing$".toCharArray();
    private RecoveryScannerData data;
    private int[] pendingTokens;
    private int pendingTokensPtr = -1;
    private char[] fakeTokenSource = null;
    private boolean isInserted = true;
    private boolean precededByRemoved = false;
    private int skipNextInsertedTokens = -1;
    public boolean record = true;

    public RecoveryScanner(Scanner scanner, RecoveryScannerData data) {
        super(false, scanner.tokenizeWhiteSpace, scanner.checkNonExternalizedStringLiterals, scanner.sourceLevel, scanner.complianceLevel, scanner.taskTags, scanner.taskPriorities, scanner.isTaskCaseSensitive);
        this.setData(data);
    }

    public RecoveryScanner(boolean tokenizeWhiteSpace, boolean checkNonExternalizedStringLiterals, long sourceLevel, long complianceLevel, char[][] taskTags, char[][] taskPriorities, boolean isTaskCaseSensitive, RecoveryScannerData data) {
        super(false, tokenizeWhiteSpace, checkNonExternalizedStringLiterals, sourceLevel, complianceLevel, taskTags, taskPriorities, isTaskCaseSensitive);
        this.setData(data);
    }

    public void insertToken(int token, int completedToken, int position) {
        this.insertTokens(new int[]{token}, completedToken, position);
    }

    private int[] reverse(int[] tokens) {
        int length = tokens.length;
        int i = 0;
        int max = length / 2;
        while (i < max) {
            int tmp = tokens[i];
            tokens[i] = tokens[length - i - 1];
            tokens[length - i - 1] = tmp;
            ++i;
        }
        return tokens;
    }

    public void insertTokens(int[] tokens, int completedToken, int position) {
        if (!this.record) {
            return;
        }
        if (completedToken > -1 && Parser.statements_recovery_filter[completedToken] != '\u0000') {
            return;
        }
        ++this.data.insertedTokensPtr;
        if (this.data.insertedTokens == null) {
            this.data.insertedTokens = new int[10][];
            this.data.insertedTokensPosition = new int[10];
            this.data.insertedTokenUsed = new boolean[10];
        } else if (this.data.insertedTokens.length == this.data.insertedTokensPtr) {
            int length = this.data.insertedTokens.length;
            int[][] nArrayArray = new int[length * 2][];
            this.data.insertedTokens = nArrayArray;
            System.arraycopy(this.data.insertedTokens, 0, nArrayArray, 0, length);
            this.data.insertedTokensPosition = new int[length * 2];
            System.arraycopy(this.data.insertedTokensPosition, 0, this.data.insertedTokensPosition, 0, length);
            this.data.insertedTokenUsed = new boolean[length * 2];
            System.arraycopy(this.data.insertedTokenUsed, 0, this.data.insertedTokenUsed, 0, length);
        }
        this.data.insertedTokens[this.data.insertedTokensPtr] = this.reverse(tokens);
        this.data.insertedTokensPosition[this.data.insertedTokensPtr] = position;
        this.data.insertedTokenUsed[this.data.insertedTokensPtr] = false;
    }

    public void replaceTokens(int token, int start, int end) {
        this.replaceTokens(new int[]{token}, start, end);
    }

    public void replaceTokens(int[] tokens, int start, int end) {
        if (!this.record) {
            return;
        }
        ++this.data.replacedTokensPtr;
        if (this.data.replacedTokensStart == null) {
            this.data.replacedTokens = new int[10][];
            this.data.replacedTokensStart = new int[10];
            this.data.replacedTokensEnd = new int[10];
            this.data.replacedTokenUsed = new boolean[10];
        } else if (this.data.replacedTokensStart.length == this.data.replacedTokensPtr) {
            int length = this.data.replacedTokensStart.length;
            int[][] nArrayArray = new int[length * 2][];
            this.data.replacedTokens = nArrayArray;
            System.arraycopy(this.data.replacedTokens, 0, nArrayArray, 0, length);
            this.data.replacedTokensStart = new int[length * 2];
            System.arraycopy(this.data.replacedTokensStart, 0, this.data.replacedTokensStart, 0, length);
            this.data.replacedTokensEnd = new int[length * 2];
            System.arraycopy(this.data.replacedTokensEnd, 0, this.data.replacedTokensEnd, 0, length);
            this.data.replacedTokenUsed = new boolean[length * 2];
            System.arraycopy(this.data.replacedTokenUsed, 0, this.data.replacedTokenUsed, 0, length);
        }
        this.data.replacedTokens[this.data.replacedTokensPtr] = this.reverse(tokens);
        this.data.replacedTokensStart[this.data.replacedTokensPtr] = start;
        this.data.replacedTokensEnd[this.data.replacedTokensPtr] = end;
        this.data.replacedTokenUsed[this.data.replacedTokensPtr] = false;
    }

    public void removeTokens(int start, int end) {
        if (!this.record) {
            return;
        }
        ++this.data.removedTokensPtr;
        if (this.data.removedTokensStart == null) {
            this.data.removedTokensStart = new int[10];
            this.data.removedTokensEnd = new int[10];
            this.data.removedTokenUsed = new boolean[10];
        } else if (this.data.removedTokensStart.length == this.data.removedTokensPtr) {
            int length = this.data.removedTokensStart.length;
            this.data.removedTokensStart = new int[length * 2];
            System.arraycopy(this.data.removedTokensStart, 0, this.data.removedTokensStart, 0, length);
            this.data.removedTokensEnd = new int[length * 2];
            System.arraycopy(this.data.removedTokensEnd, 0, this.data.removedTokensEnd, 0, length);
            this.data.removedTokenUsed = new boolean[length * 2];
            System.arraycopy(this.data.removedTokenUsed, 0, this.data.removedTokenUsed, 0, length);
        }
        this.data.removedTokensStart[this.data.removedTokensPtr] = start;
        this.data.removedTokensEnd[this.data.removedTokensPtr] = end;
        this.data.removedTokenUsed[this.data.removedTokensPtr] = false;
    }

    public int getNextToken() throws InvalidInputException {
        int i;
        if (this.pendingTokensPtr > -1) {
            int nextToken;
            this.fakeTokenSource = (nextToken = this.pendingTokens[this.pendingTokensPtr--]) == 26 ? FAKE_IDENTIFIER : CharOperation.NO_CHAR;
            return nextToken;
        }
        this.fakeTokenSource = null;
        this.precededByRemoved = false;
        if (this.data.insertedTokens != null) {
            int i2 = 0;
            while (i2 <= this.data.insertedTokensPtr) {
                if (this.data.insertedTokensPosition[i2] == this.currentPosition - 1 && i2 > this.skipNextInsertedTokens) {
                    int nextToken;
                    this.data.insertedTokenUsed[i2] = true;
                    this.pendingTokens = this.data.insertedTokens[i2];
                    this.pendingTokensPtr = this.data.insertedTokens[i2].length - 1;
                    this.isInserted = true;
                    this.startPosition = this.currentPosition;
                    this.skipNextInsertedTokens = i2;
                    this.fakeTokenSource = (nextToken = this.pendingTokens[this.pendingTokensPtr--]) == 26 ? FAKE_IDENTIFIER : CharOperation.NO_CHAR;
                    return nextToken;
                }
                ++i2;
            }
            this.skipNextInsertedTokens = -1;
        }
        int previousLocation = this.currentPosition;
        int currentToken = super.getNextToken();
        if (this.data.replacedTokens != null) {
            i = 0;
            while (i <= this.data.replacedTokensPtr) {
                if (this.data.replacedTokensStart[i] >= previousLocation && this.data.replacedTokensStart[i] <= this.startPosition && this.data.replacedTokensEnd[i] >= this.currentPosition - 1) {
                    int nextToken;
                    this.data.replacedTokenUsed[i] = true;
                    this.pendingTokens = this.data.replacedTokens[i];
                    this.pendingTokensPtr = this.data.replacedTokens[i].length - 1;
                    this.fakeTokenSource = FAKE_IDENTIFIER;
                    this.isInserted = false;
                    this.currentPosition = this.data.replacedTokensEnd[i] + 1;
                    this.fakeTokenSource = (nextToken = this.pendingTokens[this.pendingTokensPtr--]) == 26 ? FAKE_IDENTIFIER : CharOperation.NO_CHAR;
                    return nextToken;
                }
                ++i;
            }
        }
        if (this.data.removedTokensStart != null) {
            i = 0;
            while (i <= this.data.removedTokensPtr) {
                if (this.data.removedTokensStart[i] >= previousLocation && this.data.removedTokensStart[i] <= this.startPosition && this.data.removedTokensEnd[i] >= this.currentPosition - 1) {
                    this.data.removedTokenUsed[i] = true;
                    this.currentPosition = this.data.removedTokensEnd[i] + 1;
                    this.precededByRemoved = false;
                    return this.getNextToken();
                }
                ++i;
            }
        }
        return currentToken;
    }

    public char[] getCurrentIdentifierSource() {
        if (this.fakeTokenSource != null) {
            return this.fakeTokenSource;
        }
        return super.getCurrentIdentifierSource();
    }

    public char[] getCurrentTokenSourceString() {
        if (this.fakeTokenSource != null) {
            return this.fakeTokenSource;
        }
        return super.getCurrentTokenSourceString();
    }

    public char[] getCurrentTokenSource() {
        if (this.fakeTokenSource != null) {
            return this.fakeTokenSource;
        }
        return super.getCurrentTokenSource();
    }

    public RecoveryScannerData getData() {
        return this.data;
    }

    public boolean isFakeToken() {
        return this.fakeTokenSource != null;
    }

    public boolean isInsertedToken() {
        return this.fakeTokenSource != null && this.isInserted;
    }

    public boolean isReplacedToken() {
        return this.fakeTokenSource != null && !this.isInserted;
    }

    public boolean isPrecededByRemovedToken() {
        return this.precededByRemoved;
    }

    public void setData(RecoveryScannerData data) {
        this.data = data == null ? new RecoveryScannerData() : data;
    }

    public void setPendingTokens(int[] pendingTokens) {
        this.pendingTokens = pendingTokens;
        this.pendingTokensPtr = pendingTokens.length - 1;
    }
}

