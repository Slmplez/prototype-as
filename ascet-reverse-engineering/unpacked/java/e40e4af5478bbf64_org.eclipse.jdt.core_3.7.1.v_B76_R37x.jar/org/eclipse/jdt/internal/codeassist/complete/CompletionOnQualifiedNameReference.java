/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.MissingTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnQualifiedNameReference
extends QualifiedNameReference {
    public char[] completionIdentifier;
    public boolean isInsideAnnotationAttribute;

    public CompletionOnQualifiedNameReference(char[][] previousIdentifiers, char[] completionIdentifier, long[] positions, boolean isInsideAnnotationAttribute) {
        super(previousIdentifiers, positions, (int)(positions[0] >>> 32), (int)positions[positions.length - 1]);
        this.completionIdentifier = completionIdentifier;
        this.isInsideAnnotationAttribute = isInsideAnnotationAttribute;
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        output.append("<CompleteOnName:");
        int i = 0;
        while (i < this.tokens.length) {
            output.append(this.tokens[i]);
            output.append('.');
            ++i;
        }
        output.append(this.completionIdentifier).append('>');
        return output;
    }

    public TypeBinding resolveType(BlockScope scope) {
        this.binding = scope.getBinding(this.tokens, this);
        if (!this.binding.isValidBinding()) {
            if (this.binding instanceof ProblemFieldBinding) {
                scope.problemReporter().invalidField(this, (FieldBinding)this.binding);
            } else if (this.binding instanceof ProblemReferenceBinding || this.binding instanceof MissingTypeBinding) {
                scope.problemReporter().invalidType(this, (TypeBinding)this.binding);
            } else {
                scope.problemReporter().unresolvableReference(this, this.binding);
            }
            if (this.binding.problemId() == 1) {
                throw new CompletionNodeFound((ASTNode)this, this.binding, scope);
            }
            throw new CompletionNodeFound();
        }
        throw new CompletionNodeFound((ASTNode)this, this.binding, scope);
    }
}

