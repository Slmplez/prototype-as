/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.codeassist.complete.InvalidCursorLocation;
import org.eclipse.jdt.internal.compiler.parser.Scanner;

public class CompletionScanner
extends Scanner {
    public char[] completionIdentifier;
    public int cursorLocation;
    public int endOfEmptyToken = -1;
    public int completedIdentifierStart = 0;
    public int completedIdentifierEnd = -1;
    public int unicodeCharSize;
    public static final char[] EmptyCompletionIdentifier = new char[0];

    public CompletionScanner(long sourceLevel) {
        super(false, false, false, sourceLevel, null, null, true);
    }

    public char[] getCurrentIdentifierSource() {
        if (this.completionIdentifier == null) {
            if (this.cursorLocation < this.startPosition && this.currentPosition == this.startPosition) {
                this.completedIdentifierStart = this.startPosition;
                this.completedIdentifierEnd = this.completedIdentifierStart - 1;
                this.completionIdentifier = EmptyCompletionIdentifier;
                return EmptyCompletionIdentifier;
            }
            if (this.cursorLocation + 1 >= this.startPosition && this.cursorLocation < this.currentPosition) {
                this.completedIdentifierStart = this.startPosition;
                this.completedIdentifierEnd = this.currentPosition - 1;
                if (this.withoutUnicodePtr != 0) {
                    int length = this.cursorLocation + 1 - this.startPosition - this.unicodeCharSize;
                    this.completionIdentifier = new char[length];
                    System.arraycopy(this.withoutUnicodeBuffer, 1, this.completionIdentifier, 0, length);
                } else {
                    int length = this.cursorLocation + 1 - this.startPosition;
                    this.completionIdentifier = new char[length];
                    System.arraycopy(this.source, this.startPosition, this.completionIdentifier, 0, length);
                }
                return this.completionIdentifier;
            }
        }
        return super.getCurrentIdentifierSource();
    }

    public char[] getCurrentTokenSourceString() {
        if (this.completionIdentifier == null && this.cursorLocation + 1 >= this.startPosition && this.cursorLocation < this.currentPosition) {
            this.completedIdentifierStart = this.startPosition;
            this.completedIdentifierEnd = this.currentPosition - 1;
            if (this.withoutUnicodePtr != 0) {
                int length = this.cursorLocation - this.startPosition - this.unicodeCharSize;
                this.completionIdentifier = new char[length];
                System.arraycopy(this.withoutUnicodeBuffer, 2, this.completionIdentifier, 0, length);
            } else {
                int length = this.cursorLocation - this.startPosition;
                this.completionIdentifier = new char[length];
                System.arraycopy(this.source, this.startPosition + 1, this.completionIdentifier, 0, length);
            }
            return this.completionIdentifier;
        }
        return super.getCurrentTokenSourceString();
    }

    /*
     * Exception decompiling
     */
    public int getNextToken() throws InvalidInputException {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [0[TRYBLOCK]], but top level block is 88[DOLOOP]
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

    public final void getNextUnicodeChar() throws InvalidInputException {
        int temp = this.currentPosition;
        super.getNextUnicodeChar();
        if (this.cursorLocation > temp) {
            this.unicodeCharSize += this.currentPosition - temp;
        }
        if (temp < this.cursorLocation && this.cursorLocation < this.currentPosition - 1) {
            throw new InvalidCursorLocation("No Completion Inside Unicode");
        }
    }

    protected boolean isFirstTag() {
        return this.getNextChar('d') && this.getNextChar('e') && this.getNextChar('p') && this.getNextChar('r') && this.getNextChar('e') && this.getNextChar('c') && this.getNextChar('a') && this.getNextChar('t') && this.getNextChar('e') && this.getNextChar('d');
    }

    public final void jumpOverBlock() {
        this.jumpOverMethodBody();
    }

    public int scanIdentifierOrKeyword() {
        int id = super.scanIdentifierOrKeyword();
        if (this.startPosition <= this.cursorLocation + 1 && this.cursorLocation < this.currentPosition) {
            if (this.cursorLocation + 1 == this.eofPosition) {
                int temp = this.eofPosition;
                this.eofPosition = this.source.length;
                while (this.getNextCharAsJavaIdentifierPart()) {
                }
                this.eofPosition = temp;
            }
            return 26;
        }
        return id;
    }

    public int scanNumber(boolean dotPrefix) throws InvalidInputException {
        int token = super.scanNumber(dotPrefix);
        if (this.startPosition <= this.cursorLocation && this.cursorLocation < this.currentPosition) {
            throw new InvalidCursorLocation("No Completion Inside Number");
        }
        return token;
    }
}

