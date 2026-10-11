/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.codeassist.complete.CompletionOnKeyword;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;

public class CompletionOnKeyword2
extends ImportReference
implements CompletionOnKeyword {
    private char[] token;
    private char[][] possibleKeywords;

    public CompletionOnKeyword2(char[] token, long pos, char[][] possibleKeywords) {
        super(new char[][]{token}, new long[]{pos}, false, 0);
        this.token = token;
        this.possibleKeywords = possibleKeywords;
    }

    public boolean canCompleteEmptyToken() {
        return false;
    }

    public char[] getToken() {
        return this.token;
    }

    public char[][] getPossibleKeywords() {
        return this.possibleKeywords;
    }

    public StringBuffer print(int indent, StringBuffer output, boolean withOnDemand) {
        return CompletionOnKeyword2.printIndent(indent, output).append("<CompleteOnKeyword:").append(this.token).append('>');
    }
}

