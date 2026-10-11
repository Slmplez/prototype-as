/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;

public class Wildcard
extends SingleTypeReference {
    public static final int UNBOUND = 0;
    public static final int EXTENDS = 1;
    public static final int SUPER = 2;
    public TypeReference bound;
    public int kind;

    public Wildcard(int kind) {
        super(WILDCARD_NAME, 0L);
        this.kind = kind;
    }

    public char[][] getParameterizedTypeName() {
        switch (this.kind) {
            case 0: {
                return new char[][]{WILDCARD_NAME};
            }
            case 1: {
                return new char[][]{CharOperation.concat(WILDCARD_NAME, WILDCARD_EXTENDS, CharOperation.concatWith(this.bound.getParameterizedTypeName(), '.'))};
            }
        }
        return new char[][]{CharOperation.concat(WILDCARD_NAME, WILDCARD_SUPER, CharOperation.concatWith(this.bound.getParameterizedTypeName(), '.'))};
    }

    public char[][] getTypeName() {
        switch (this.kind) {
            case 0: {
                return new char[][]{WILDCARD_NAME};
            }
            case 1: {
                return new char[][]{CharOperation.concat(WILDCARD_NAME, WILDCARD_EXTENDS, CharOperation.concatWith(this.bound.getTypeName(), '.'))};
            }
        }
        return new char[][]{CharOperation.concat(WILDCARD_NAME, WILDCARD_SUPER, CharOperation.concatWith(this.bound.getTypeName(), '.'))};
    }

    private TypeBinding internalResolveType(Scope scope, ReferenceBinding genericType, int rank) {
        TypeBinding boundType = null;
        if (this.bound != null) {
            TypeBinding typeBinding = boundType = scope.kind == 3 ? this.bound.resolveType((ClassScope)scope) : this.bound.resolveType((BlockScope)scope, true);
            if (boundType == null) {
                return null;
            }
        }
        WildcardBinding wildcard = scope.environment().createWildcard(genericType, rank, boundType, null, this.kind);
        this.resolvedType = wildcard;
        return this.resolvedType;
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        switch (this.kind) {
            case 0: {
                output.append(WILDCARD_NAME);
                break;
            }
            case 1: {
                output.append(WILDCARD_NAME).append(WILDCARD_EXTENDS);
                this.bound.printExpression(0, output);
                break;
            }
            default: {
                output.append(WILDCARD_NAME).append(WILDCARD_SUPER);
                this.bound.printExpression(0, output);
            }
        }
        return output;
    }

    public TypeBinding resolveType(BlockScope scope, boolean checkBounds) {
        if (this.bound != null) {
            this.bound.resolveType(scope, checkBounds);
        }
        return null;
    }

    public TypeBinding resolveType(ClassScope scope) {
        if (this.bound != null) {
            this.bound.resolveType(scope);
        }
        return null;
    }

    public TypeBinding resolveTypeArgument(BlockScope blockScope, ReferenceBinding genericType, int rank) {
        return this.internalResolveType(blockScope, genericType, rank);
    }

    public TypeBinding resolveTypeArgument(ClassScope classScope, ReferenceBinding genericType, int rank) {
        return this.internalResolveType(classScope, genericType, rank);
    }

    public void traverse(ASTVisitor visitor, BlockScope scope) {
        if (visitor.visit(this, scope) && this.bound != null) {
            this.bound.traverse(visitor, scope);
        }
        visitor.endVisit(this, scope);
    }

    public void traverse(ASTVisitor visitor, ClassScope scope) {
        if (visitor.visit(this, scope) && this.bound != null) {
            this.bound.traverse(visitor, scope);
        }
        visitor.endVisit(this, scope);
    }
}

