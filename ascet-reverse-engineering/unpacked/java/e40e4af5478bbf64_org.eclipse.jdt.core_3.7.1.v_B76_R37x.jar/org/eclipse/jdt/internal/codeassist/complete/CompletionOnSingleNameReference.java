/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnSingleNameReference
extends SingleNameReference {
    public char[][] possibleKeywords;
    public boolean canBeExplicitConstructor;
    public boolean isInsideAnnotationAttribute;
    public boolean isPrecededByModifiers;

    public CompletionOnSingleNameReference(char[] source, long pos, boolean isInsideAnnotationAttribute) {
        this(source, pos, null, false, isInsideAnnotationAttribute);
    }

    public CompletionOnSingleNameReference(char[] source, long pos, char[][] possibleKeywords, boolean canBeExplicitConstructor, boolean isInsideAnnotationAttribute) {
        super(source, pos);
        this.possibleKeywords = possibleKeywords;
        this.canBeExplicitConstructor = canBeExplicitConstructor;
        this.isInsideAnnotationAttribute = isInsideAnnotationAttribute;
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        output.append("<CompleteOnName:");
        return super.printExpression(0, output).append('>');
    }

    public TypeBinding resolveType(BlockScope scope) {
        if (scope instanceof MethodScope) {
            throw new CompletionNodeFound((ASTNode)this, scope, ((MethodScope)scope).insideTypeAnnotation);
        }
        throw new CompletionNodeFound(this, scope);
    }
}

