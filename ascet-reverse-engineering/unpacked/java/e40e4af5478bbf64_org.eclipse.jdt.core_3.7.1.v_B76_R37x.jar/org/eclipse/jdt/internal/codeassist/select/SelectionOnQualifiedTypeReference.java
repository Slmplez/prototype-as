/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.select.SelectionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SelectionOnQualifiedTypeReference
extends QualifiedTypeReference {
    public SelectionOnQualifiedTypeReference(char[][] previousIdentifiers, char[] selectionIdentifier, long[] positions) {
        super(CharOperation.arrayConcat(previousIdentifiers, selectionIdentifier), positions);
    }

    public void aboutToResolve(Scope scope) {
        this.getTypeBinding(scope.parent);
    }

    protected TypeBinding getTypeBinding(Scope scope) {
        Binding binding = scope.getTypeOrPackage(this.tokens);
        if (!binding.isValidBinding()) {
            if (binding.problemId() == 2) {
                throw new SelectionNodeFound(binding);
            }
            if (binding instanceof TypeBinding) {
                scope.problemReporter().invalidType(this, (TypeBinding)binding);
            } else if (binding instanceof PackageBinding) {
                ProblemReferenceBinding problemBinding = new ProblemReferenceBinding(((PackageBinding)binding).compoundName, null, binding.problemId());
                scope.problemReporter().invalidType(this, problemBinding);
            }
            throw new SelectionNodeFound();
        }
        throw new SelectionNodeFound(binding);
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        output.append("<SelectOnType:");
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
}

