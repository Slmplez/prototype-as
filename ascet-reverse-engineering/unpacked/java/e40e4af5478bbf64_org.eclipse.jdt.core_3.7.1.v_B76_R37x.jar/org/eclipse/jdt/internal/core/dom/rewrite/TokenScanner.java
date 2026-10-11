/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.jdt.internal.core.dom.rewrite;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.parser.Scanner;

public class TokenScanner {
    public static final int END_OF_FILE = 20001;
    public static final int LEXICAL_ERROR = 20002;
    public static final int DOCUMENT_ERROR = 20003;
    private final Scanner scanner;
    private final int endPosition;

    public TokenScanner(Scanner scanner) {
        this.scanner = scanner;
        this.endPosition = this.scanner.getSource().length - 1;
    }

    public Scanner getScanner() {
        return this.scanner;
    }

    public void setOffset(int offset) {
        this.scanner.resetTo(offset, this.endPosition);
    }

    public int getCurrentEndOffset() {
        return this.scanner.getCurrentTokenEndPosition() + 1;
    }

    public int getCurrentStartOffset() {
        return this.scanner.getCurrentTokenStartPosition();
    }

    public int getCurrentLength() {
        return this.getCurrentEndOffset() - this.getCurrentStartOffset();
    }

    public int readNext(boolean ignoreComments) throws CoreException {
        int curr = 0;
        do {
            try {
                curr = this.scanner.getNextToken();
                if (curr == 69) {
                    throw new CoreException(TokenScanner.createError(20001, "End Of File", null));
                }
            }
            catch (InvalidInputException e) {
                throw new CoreException(TokenScanner.createError(20002, e.getMessage(), e));
            }
        } while (ignoreComments && TokenScanner.isComment(curr));
        return curr;
    }

    public int readNext(int offset, boolean ignoreComments) throws CoreException {
        this.setOffset(offset);
        return this.readNext(ignoreComments);
    }

    public int getNextStartOffset(int offset, boolean ignoreComments) throws CoreException {
        this.readNext(offset, ignoreComments);
        return this.getCurrentStartOffset();
    }

    public int getNextEndOffset(int offset, boolean ignoreComments) throws CoreException {
        this.readNext(offset, ignoreComments);
        return this.getCurrentEndOffset();
    }

    public void readToToken(int tok) throws CoreException {
        int curr = 0;
        while ((curr = this.readNext(false)) != tok) {
        }
    }

    public void readToToken(int tok, int offset) throws CoreException {
        this.setOffset(offset);
        this.readToToken(tok);
    }

    public int getTokenStartOffset(int token, int startOffset) throws CoreException {
        this.readToToken(token, startOffset);
        return this.getCurrentStartOffset();
    }

    public int getTokenEndOffset(int token, int startOffset) throws CoreException {
        this.readToToken(token, startOffset);
        return this.getCurrentEndOffset();
    }

    public int getPreviousTokenEndOffset(int token, int startOffset) throws CoreException {
        this.setOffset(startOffset);
        int res = startOffset;
        int curr = this.readNext(false);
        while (curr != token) {
            res = this.getCurrentEndOffset();
            curr = this.readNext(false);
        }
        return res;
    }

    public static boolean isComment(int token) {
        return token == 1002 || token == 1003 || token == 1001;
    }

    public static boolean isModifier(int token) {
        switch (token) {
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
                return true;
            }
        }
        return false;
    }

    public static IStatus createError(int code, String message, Throwable throwable) {
        return new Status(4, "org.eclipse.jdt.core", code, message, throwable);
    }
}

