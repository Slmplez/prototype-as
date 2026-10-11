/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.codeassist.select.SelectionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.SuperReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SelectionOnSuperReference
extends SuperReference {
    public SelectionOnSuperReference(int pos, int sourceEnd) {
        super(pos, sourceEnd);
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        output.append("<SelectOnSuper:");
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

