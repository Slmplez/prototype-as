/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.select.SelectionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SelectionOnParameterizedQualifiedTypeReference
extends ParameterizedQualifiedTypeReference {
    public SelectionOnParameterizedQualifiedTypeReference(char[][] previousIdentifiers, char[] selectionIdentifier, TypeReference[][] typeArguments, TypeReference[] assistTypeArguments, long[] positions) {
        super(CharOperation.arrayConcat(previousIdentifiers, selectionIdentifier), typeArguments, 0, positions);
        int length = this.typeArguments.length;
        this.typeArguments = new TypeReference[length + 1][];
        System.arraycopy(this.typeArguments, 0, this.typeArguments, 0, length);
        this.typeArguments[length] = assistTypeArguments;
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
        int length = this.tokens.length;
        int i = 0;
        while (i < length) {
            if (i != 0) {
                output.append('.');
            }
            output.append(this.tokens[i]);
            TypeReference[] typeArgument = this.typeArguments[i];
            if (typeArgument != null) {
                output.append('<');
                int max = typeArgument.length - 1;
                int j = 0;
                while (j < max) {
                    typeArgument[j].print(0, output);
                    output.append(", ");
                    ++j;
                }
                typeArgument[max].print(0, output);
                output.append('>');
            }
            ++i;
        }
        output.append('>');
        return output;
    }
}

