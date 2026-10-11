/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.codeassist.select.SelectionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SelectionOnParameterizedSingleTypeReference
extends ParameterizedSingleTypeReference {
    public SelectionOnParameterizedSingleTypeReference(char[] name, TypeReference[] typeArguments, long pos) {
        super(name, typeArguments, 0, pos);
    }

    public TypeBinding resolveType(BlockScope scope, boolean checkBounds) {
        super.resolveType(scope, checkBounds);
        throw new SelectionNodeFound(this.resolvedType);
    }

    public TypeBinding resolveType(ClassScope scope) {
        super.resolveType(scope);
        throw new SelectionNodeFound(this.resolvedType);
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        output.append("<SelectOnType:");
        output.append(this.token);
        output.append('<');
        int max = this.typeArguments.length - 1;
        int i = 0;
        while (i < max) {
            this.typeArguments[i].print(0, output);
            output.append(", ");
            ++i;
        }
        this.typeArguments[max].print(0, output);
        output.append('>');
        output.append('>');
        return output;
    }
}

