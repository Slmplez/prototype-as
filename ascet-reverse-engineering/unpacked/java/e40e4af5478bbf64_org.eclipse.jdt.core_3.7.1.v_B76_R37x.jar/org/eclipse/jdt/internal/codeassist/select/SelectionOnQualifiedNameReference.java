/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.select.SelectionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.MissingTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SelectionOnQualifiedNameReference
extends QualifiedNameReference {
    public SelectionOnQualifiedNameReference(char[][] previousIdentifiers, char[] selectionIdentifier, long[] positions) {
        super(CharOperation.arrayConcat(previousIdentifiers, selectionIdentifier), positions, (int)(positions[0] >>> 32), (int)positions[positions.length - 1]);
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        output.append("<SelectOnName:");
        int i = 0;
        int length = this.tokens.length;
        while (i < length) {
            if (i > 0) {
                output.append('.');
            }
            output.append(this.tokens[i]);
            ++i;
        }
        return output.append('>');
    }

    public TypeBinding resolveType(BlockScope scope) {
        this.binding = scope.getBinding(this.tokens, this);
        if (!this.binding.isValidBinding()) {
            if (this.binding instanceof ProblemFieldBinding) {
                if (this.binding.problemId() == 2 || this.binding.problemId() == 5 || this.binding.problemId() == 6 || this.binding.problemId() == 7) {
                    throw new SelectionNodeFound(this.binding);
                }
                scope.problemReporter().invalidField(this, (FieldBinding)this.binding);
            } else if (this.binding instanceof ProblemReferenceBinding || this.binding instanceof MissingTypeBinding) {
                if (this.binding.problemId() == 2) {
                    throw new SelectionNodeFound(this.binding);
                }
                scope.problemReporter().invalidType(this, (TypeBinding)this.binding);
            } else {
                scope.problemReporter().unresolvableReference(this, this.binding);
            }
            throw new SelectionNodeFound();
        }
        throw new SelectionNodeFound(this.binding);
    }
}

