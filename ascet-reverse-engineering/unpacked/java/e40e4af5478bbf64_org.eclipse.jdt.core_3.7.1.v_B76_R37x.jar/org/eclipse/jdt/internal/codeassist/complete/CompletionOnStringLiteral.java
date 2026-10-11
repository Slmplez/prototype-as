/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.StringLiteral;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnStringLiteral
extends StringLiteral {
    public int contentStart;
    public int contentEnd;

    public CompletionOnStringLiteral(char[] token, int s, int e, int cs, int ce, int lineNumber) {
        super(token, s, e, lineNumber);
        this.contentStart = cs;
        this.contentEnd = ce;
    }

    public CompletionOnStringLiteral(int s, int e, int cs, int ce) {
        super(s, e);
        this.contentStart = cs;
        this.contentEnd = ce;
    }

    public TypeBinding resolveType(ClassScope scope) {
        throw new CompletionNodeFound((ASTNode)this, null, scope);
    }

    public TypeBinding resolveType(BlockScope scope) {
        throw new CompletionNodeFound((ASTNode)this, null, scope);
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        output.append("<CompletionOnString:");
        output = super.printExpression(indent, output);
        return output.append('>');
    }
}

