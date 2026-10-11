/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.codeassist.select.SelectionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.MissingTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SelectionOnSingleNameReference
extends SingleNameReference {
    public SelectionOnSingleNameReference(char[] source, long pos) {
        super(source, pos);
    }

    public TypeBinding resolveType(BlockScope scope) {
        if (this.actualReceiverType != null) {
            this.binding = scope.getField(this.actualReceiverType, this.token, this);
            if (this.binding != null && this.binding.isValidBinding()) {
                throw new SelectionNodeFound(this.binding);
            }
        }
        this.binding = scope.getBinding(this.token, 23, (InvocationSite)this, true);
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

    public StringBuffer printExpression(int indent, StringBuffer output) {
        output.append("<SelectOnName:");
        return super.printExpression(0, output).append('>');
    }
}

