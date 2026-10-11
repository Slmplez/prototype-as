/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnParameterizedQualifiedTypeReference
extends ParameterizedQualifiedTypeReference {
    public static final int K_TYPE = 0;
    public static final int K_CLASS = 1;
    public static final int K_INTERFACE = 2;
    public static final int K_EXCEPTION = 3;
    private int kind = 0;
    public char[] completionIdentifier;

    public CompletionOnParameterizedQualifiedTypeReference(char[][] tokens, TypeReference[][] typeArguments, char[] completionIdentifier, long[] positions) {
        this(tokens, typeArguments, completionIdentifier, positions, 0);
    }

    public CompletionOnParameterizedQualifiedTypeReference(char[][] tokens, TypeReference[][] typeArguments, char[] completionIdentifier, long[] positions, int kind) {
        super(tokens, typeArguments, 0, positions);
        this.completionIdentifier = completionIdentifier;
        this.kind = kind;
    }

    public boolean isClass() {
        return this.kind == 1;
    }

    public boolean isInterface() {
        return this.kind == 2;
    }

    public boolean isException() {
        return this.kind == 3;
    }

    public boolean isSuperType() {
        return this.kind == 1 || this.kind == 2;
    }

    public TypeBinding resolveType(BlockScope scope, boolean checkBounds) {
        super.resolveType(scope, checkBounds);
        throw new CompletionNodeFound((ASTNode)this, this.resolvedType, scope);
    }

    public TypeBinding resolveType(ClassScope scope) {
        super.resolveType(scope);
        throw new CompletionNodeFound((ASTNode)this, this.resolvedType, scope);
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        switch (this.kind) {
            case 1: {
                output.append("<CompleteOnClass:");
                break;
            }
            case 2: {
                output.append("<CompleteOnInterface:");
                break;
            }
            case 3: {
                output.append("<CompleteOnException:");
                break;
            }
            default: {
                output.append("<CompleteOnType:");
            }
        }
        int length = this.tokens.length;
        int i = 0;
        while (i < length - 1) {
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
            output.append('.');
            ++i;
        }
        output.append(this.tokens[length - 1]);
        TypeReference[] typeArgument = this.typeArguments[length - 1];
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
        output.append('.').append(this.completionIdentifier).append('>');
        return output;
    }
}

