/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.MarkerAnnotation;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnMarkerAnnotationName
extends MarkerAnnotation {
    public CompletionOnMarkerAnnotationName(TypeReference type, int sourceStart) {
        super(type, sourceStart);
    }

    public TypeBinding resolveType(BlockScope scope) {
        if (this.type instanceof QualifiedTypeReference) {
            QualifiedTypeReference qualifiedTypeReference = (QualifiedTypeReference)this.type;
            Binding binding = scope.parent.getTypeOrPackage(qualifiedTypeReference.tokens);
            if (!binding.isValidBinding()) {
                scope.problemReporter().invalidType(this, (TypeBinding)binding);
                throw new CompletionNodeFound();
            }
            throw new CompletionNodeFound((ASTNode)this, binding, scope);
        }
        throw new CompletionNodeFound((ASTNode)this, null, scope);
    }
}

