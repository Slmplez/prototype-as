/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.codeassist.select.SelectionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SelectionOnFieldReference
extends FieldReference {
    public SelectionOnFieldReference(char[] source, long pos) {
        super(source, pos);
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        output.append("<SelectionOnFieldReference:");
        return super.printExpression(0, output).append('>');
    }

    public TypeBinding resolveType(BlockScope scope) {
        super.resolveType(scope);
        if (this.binding == null || !this.binding.isValidBinding() && this.binding.problemId() != 2 && this.binding.problemId() != 5 && this.binding.problemId() != 6 && this.binding.problemId() != 7) {
            throw new SelectionNodeFound();
        }
        throw new SelectionNodeFound(this.binding);
    }
}

