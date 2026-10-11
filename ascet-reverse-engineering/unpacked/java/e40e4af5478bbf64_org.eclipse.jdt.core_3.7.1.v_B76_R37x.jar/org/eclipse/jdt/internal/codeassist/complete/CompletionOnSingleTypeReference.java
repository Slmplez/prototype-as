/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeFound;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnFieldType;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnSingleTypeReference
extends SingleTypeReference {
    public static final int K_TYPE = 0;
    public static final int K_CLASS = 1;
    public static final int K_INTERFACE = 2;
    public static final int K_EXCEPTION = 3;
    private int kind = 0;
    public boolean isCompletionNode = true;
    public boolean isConstructorType;
    public CompletionOnFieldType fieldTypeCompletionNode;

    public CompletionOnSingleTypeReference(char[] source, long pos) {
        this(source, pos, 0);
    }

    public CompletionOnSingleTypeReference(char[] source, long pos, int kind) {
        super(source, pos);
        this.kind = kind;
    }

    public void aboutToResolve(Scope scope) {
        this.getTypeBinding(scope);
    }

    public TypeReference copyDims(int dim) {
        return this;
    }

    protected TypeBinding getTypeBinding(Scope scope) {
        if (this.fieldTypeCompletionNode != null) {
            throw new CompletionNodeFound(this.fieldTypeCompletionNode, scope);
        }
        if (this.isCompletionNode) {
            throw new CompletionNodeFound(this, scope);
        }
        return super.getTypeBinding(scope);
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
        return output.append(this.token).append('>');
    }

    public TypeBinding resolveTypeEnclosing(BlockScope scope, ReferenceBinding enclosingType) {
        if (this.fieldTypeCompletionNode != null) {
            throw new CompletionNodeFound(this.fieldTypeCompletionNode, scope);
        }
        if (this.isCompletionNode) {
            throw new CompletionNodeFound((ASTNode)this, enclosingType, scope);
        }
        return super.resolveTypeEnclosing(scope, enclosingType);
    }

    public void setKind(int kind) {
        this.kind = kind;
    }
}

