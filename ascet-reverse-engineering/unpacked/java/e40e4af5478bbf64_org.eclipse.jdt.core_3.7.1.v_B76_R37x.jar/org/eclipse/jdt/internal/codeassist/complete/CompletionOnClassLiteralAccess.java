/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.ClassLiteralAccess;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnClassLiteralAccess
extends ClassLiteralAccess {
    public char[] completionIdentifier;
    public int classStart;

    public CompletionOnClassLiteralAccess(long pos, TypeReference t) {
        super((int)pos, t);
        this.classStart = (int)(pos >>> 32);
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        output.append("<CompleteOnClassLiteralAccess:");
        return this.type.print(0, output).append('.').append(this.completionIdentifier).append('>');
    }

    public TypeBinding resolveType(BlockScope scope) {
        if (super.resolveType(scope) == null) {
            throw new CompletionNodeFound();
        }
        throw new CompletionNodeFound((ASTNode)this, this.targetType, scope);
    }
}

