/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeFound;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnKeyword;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnKeyword3
extends SingleNameReference
implements CompletionOnKeyword {
    private char[][] possibleKeywords;

    public CompletionOnKeyword3(char[] token, long pos, char[] possibleKeyword) {
        this(token, pos, new char[][]{possibleKeyword});
    }

    public CompletionOnKeyword3(char[] token, long pos, char[][] possibleKeywords) {
        super(token, pos);
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

    public StringBuffer printExpression(int indent, StringBuffer output) {
        return output.append("<CompleteOnKeyword:").append(this.token).append('>');
    }

    public TypeBinding resolveType(BlockScope scope) {
        throw new CompletionNodeFound(this, scope);
    }
}

