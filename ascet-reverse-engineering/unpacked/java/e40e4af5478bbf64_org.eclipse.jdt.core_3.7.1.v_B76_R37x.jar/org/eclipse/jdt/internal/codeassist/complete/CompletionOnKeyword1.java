/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeFound;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnKeyword;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnKeyword1
extends SingleTypeReference
implements CompletionOnKeyword {
    private char[][] possibleKeywords;
    public boolean canCompleteEmptyToken;

    public CompletionOnKeyword1(char[] token, long pos, char[] possibleKeyword) {
        this(token, pos, new char[][]{possibleKeyword});
    }

    public CompletionOnKeyword1(char[] token, long pos, char[][] possibleKeywords) {
        super(token, pos);
        this.possibleKeywords = possibleKeywords;
    }

    public boolean canCompleteEmptyToken() {
        return this.canCompleteEmptyToken;
    }

    public char[] getToken() {
        return this.token;
    }

    public char[][] getPossibleKeywords() {
        return this.possibleKeywords;
    }

    public void aboutToResolve(Scope scope) {
        this.getTypeBinding(scope);
    }

    protected TypeBinding getTypeBinding(Scope scope) {
        throw new CompletionNodeFound(this, scope);
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        return output.append("<CompleteOnKeyword:").append(this.token).append('>');
    }
}

