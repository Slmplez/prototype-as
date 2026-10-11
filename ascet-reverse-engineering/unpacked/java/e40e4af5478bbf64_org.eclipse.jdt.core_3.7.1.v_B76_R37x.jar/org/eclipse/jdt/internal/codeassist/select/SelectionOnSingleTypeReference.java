/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.codeassist.select.SelectionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SelectionOnSingleTypeReference
extends SingleTypeReference {
    public SelectionOnSingleTypeReference(char[] source, long pos) {
        super(source, pos);
    }

    public void aboutToResolve(Scope scope) {
        this.getTypeBinding(scope.parent);
    }

    protected TypeBinding getTypeBinding(Scope scope) {
        Binding binding = scope.getTypeOrPackage(new char[][]{this.token});
        if (!binding.isValidBinding()) {
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
        return output.append("<SelectOnType:").append(this.token).append('>');
    }

    public TypeBinding resolveTypeEnclosing(BlockScope scope, ReferenceBinding enclosingType) {
        super.resolveTypeEnclosing(scope, enclosingType);
        if (this.resolvedType == null || !this.resolvedType.isValidBinding() && this.resolvedType.problemId() != 2) {
            throw new SelectionNodeFound();
        }
        throw new SelectionNodeFound(this.resolvedType);
    }
}

