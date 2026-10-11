/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.Util;

public class CommentRecorderParser
extends Parser {
    int[] commentStops = new int[10];
    int[] commentStarts = new int[10];
    int commentPtr = -1;
    protected static final int CommentIncrement = 100;

    public CommentRecorderParser(ProblemReporter problemReporter, boolean optimizeStringLiterals) {
        super(problemReporter, optimizeStringLiterals);
    }

    public void checkComment() {
        if (!(this.diet && this.dietInt == 0 || this.scanner.commentPtr < 0)) {
            this.flushCommentsDefinedPriorTo(this.endStatementPosition);
        }
        boolean deprecated = false;
        boolean checkDeprecated = false;
        int lastCommentIndex = -1;
        lastCommentIndex = this.scanner.commentPtr;
        while (lastCommentIndex >= 0) {
            int commentSourceStart = this.scanner.commentStarts[lastCommentIndex];
            if (commentSourceStart >= 0 && (this.modifiersSourceStart == -1 || this.modifiersSourceStart >= commentSourceStart) && this.scanner.commentStops[lastCommentIndex] >= 0) {
                checkDeprecated = true;
                int commentSourceEnd = this.scanner.commentStops[lastCommentIndex] - 1;
                this.javadocParser.reportProblems = this.javadocParser.shouldReportProblems ? this.currentElement == null || commentSourceEnd > this.lastJavadocEnd : false;
                deprecated = this.javadocParser.checkDeprecation(lastCommentIndex);
                this.javadoc = this.javadocParser.docComment;
                if (this.currentElement != null) break;
                this.lastJavadocEnd = commentSourceEnd;
                break;
            }
            --lastCommentIndex;
        }
        if (deprecated) {
            this.checkAndSetModifiers(0x100000);
        }
        if (lastCommentIndex >= 0 && checkDeprecated) {
            this.modifiersSourceStart = this.scanner.commentStarts[lastCommentIndex];
            if (this.modifiersSourceStart < 0) {
                this.modifiersSourceStart = -this.modifiersSourceStart;
            }
        }
    }

    protected void consumeClassHeader() {
        this.pushOnCommentsStack(0, this.scanner.commentPtr);
        super.consumeClassHeader();
    }

    protected void consumeEmptyTypeDeclaration() {
        this.pushOnCommentsStack(0, this.scanner.commentPtr);
        super.consumeEmptyTypeDeclaration();
    }

    protected void consumeInterfaceHeader() {
        this.pushOnCommentsStack(0, this.scanner.commentPtr);
        super.consumeInterfaceHeader();
    }

    protected CompilationUnitDeclaration endParse(int act) {
        CompilationUnitDeclaration unit = super.endParse(act);
        if (unit.comments == null) {
            this.pushOnCommentsStack(0, this.scanner.commentPtr);
            unit.comments = this.getCommentsPositions();
        }
        return unit;
    }

    public int flushCommentsDefinedPriorTo(int position) {
        int lastCommentIndex = this.scanner.commentPtr;
        if (lastCommentIndex < 0) {
            return position;
        }
        int index = lastCommentIndex;
        int validCount = 0;
        while (index >= 0) {
            int commentEnd = this.scanner.commentStops[index];
            if (commentEnd < 0) {
                commentEnd = -commentEnd;
            }
            if (commentEnd <= position) break;
            --index;
            ++validCount;
        }
        if (validCount > 0) {
            int immediateCommentEnd = 0;
            while (index < lastCommentIndex && (immediateCommentEnd = -this.scanner.commentStops[index + 1]) > 0) {
                if (Util.getLineNumber(position, this.scanner.lineEnds, 0, this.scanner.linePtr) != Util.getLineNumber(--immediateCommentEnd, this.scanner.lineEnds, 0, this.scanner.linePtr)) break;
                position = immediateCommentEnd;
                --validCount;
                ++index;
            }
        }
        if (index < 0) {
            return position;
        }
        this.pushOnCommentsStack(0, index);
        switch (validCount) {
            case 0: {
                break;
            }
            case 2: {
                this.scanner.commentStarts[0] = this.scanner.commentStarts[index + 1];
                this.scanner.commentStops[0] = this.scanner.commentStops[index + 1];
                this.scanner.commentTagStarts[0] = this.scanner.commentTagStarts[index + 1];
                this.scanner.commentStarts[1] = this.scanner.commentStarts[index + 2];
                this.scanner.commentStops[1] = this.scanner.commentStops[index + 2];
                this.scanner.commentTagStarts[1] = this.scanner.commentTagStarts[index + 2];
                break;
            }
            case 1: {
                this.scanner.commentStarts[0] = this.scanner.commentStarts[index + 1];
                this.scanner.commentStops[0] = this.scanner.commentStops[index + 1];
                this.scanner.commentTagStarts[0] = this.scanner.commentTagStarts[index + 1];
                break;
            }
            default: {
                System.arraycopy(this.scanner.commentStarts, index + 1, this.scanner.commentStarts, 0, validCount);
                System.arraycopy(this.scanner.commentStops, index + 1, this.scanner.commentStops, 0, validCount);
                System.arraycopy(this.scanner.commentTagStarts, index + 1, this.scanner.commentTagStarts, 0, validCount);
            }
        }
        this.scanner.commentPtr = validCount - 1;
        return position;
    }

    public int[][] getCommentsPositions() {
        int[][] positions = new int[this.commentPtr + 1][2];
        int i = 0;
        int max = this.commentPtr;
        while (i <= max) {
            positions[i][0] = this.commentStarts[i];
            positions[i][1] = this.commentStops[i];
            ++i;
        }
        return positions;
    }

    public void initialize(boolean initializeNLS) {
        super.initialize(initializeNLS);
        this.commentPtr = -1;
    }

    public void initialize() {
        super.initialize();
        this.commentPtr = -1;
    }

    public void initializeScanner() {
        this.scanner = new Scanner(false, false, this.options.getSeverity(256) != 256, this.options.sourceLevel, this.options.taskTags, this.options.taskPriorities, this.options.isTaskCaseSensitive);
    }

    private void pushOnCommentsStack(int start, int end) {
        int i = start;
        while (i <= end) {
            int commentStart;
            int scannerStart;
            int n = scannerStart = this.scanner.commentStarts[i] < 0 ? -this.scanner.commentStarts[i] : this.scanner.commentStarts[i];
            int n2 = this.commentPtr == -1 ? -1 : (commentStart = this.commentStarts[this.commentPtr] < 0 ? -this.commentStarts[this.commentPtr] : this.commentStarts[this.commentPtr]);
            if (commentStart == -1 || scannerStart > commentStart) {
                int stackLength = this.commentStarts.length;
                if (++this.commentPtr >= stackLength) {
                    this.commentStarts = new int[stackLength + 100];
                    System.arraycopy(this.commentStarts, 0, this.commentStarts, 0, stackLength);
                    this.commentStops = new int[stackLength + 100];
                    System.arraycopy(this.commentStops, 0, this.commentStops, 0, stackLength);
                }
                this.commentStarts[this.commentPtr] = this.scanner.commentStarts[i];
                this.commentStops[this.commentPtr] = this.scanner.commentStops[i];
            }
            ++i;
        }
    }

    protected void resetModifiers() {
        this.pushOnCommentsStack(0, this.scanner.commentPtr);
        super.resetModifiers();
    }
}

