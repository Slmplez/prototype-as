/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnQualifiedTypeReference
extends QualifiedTypeReference {
    public static final int K_TYPE = 0;
    public static final int K_CLASS = 1;
    public static final int K_INTERFACE = 2;
    public static final int K_EXCEPTION = 3;
    private int kind = 0;
    public char[] completionIdentifier;
    public boolean isConstructorType;

    public CompletionOnQualifiedTypeReference(char[][] previousIdentifiers, char[] completionIdentifier, long[] positions) {
        this(previousIdentifiers, completionIdentifier, positions, 0);
    }

    public CompletionOnQualifiedTypeReference(char[][] previousIdentifiers, char[] completionIdentifier, long[] positions, int kind) {
        super(previousIdentifiers, positions);
        this.completionIdentifier = completionIdentifier;
        this.kind = kind;
    }

    public void aboutToResolve(Scope scope) {
        this.getTypeBinding(scope);
    }

    public TypeReference copyDims(int dim) {
        return this;
    }

    protected TypeBinding getTypeBinding(Scope scope) {
        Binding binding = scope.parent.getTypeOrPackage(this.tokens);
        if (!binding.isValidBinding()) {
            scope.problemReporter().invalidType(this, (TypeBinding)binding);
            if (binding.problemId() == 1) {
                throw new CompletionNodeFound((ASTNode)this, binding, scope);
            }
            throw new CompletionNodeFound();
        }
        throw new CompletionNodeFound((ASTNode)this, binding, scope);
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

    public void setKind(int kind) {
        this.kind = kind;
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
        int i = 0;
        while (i < this.tokens.length) {
            output.append(this.tokens[i]);
            output.append('.');
            ++i;
        }
        output.append(this.completionIdentifier).append('>');
        return output;
    }
}

