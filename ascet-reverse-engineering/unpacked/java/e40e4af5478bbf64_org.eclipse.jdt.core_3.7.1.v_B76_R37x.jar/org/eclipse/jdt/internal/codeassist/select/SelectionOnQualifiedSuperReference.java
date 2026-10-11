/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.codeassist.select.SelectionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.QualifiedSuperReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SelectionOnQualifiedSuperReference
extends QualifiedSuperReference {
    public SelectionOnQualifiedSuperReference(TypeReference name, int pos, int sourceEnd) {
        super(name, pos, sourceEnd);
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        output.append("<SelectOnQualifiedSuper:");
        return super.printExpression(0, output).append('>');
    }

    public TypeBinding resolveType(BlockScope scope) {
        TypeBinding binding = super.resolveType(scope);
        if (binding == null || !binding.isValidBinding()) {
            throw new SelectionNodeFound();
        }
        throw new SelectionNodeFound(binding);
    }
}

