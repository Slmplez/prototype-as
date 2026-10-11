/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ArrayType;
import org.eclipse.jdt.core.dom.ITypeBinding;
import org.eclipse.jdt.core.dom.ParameterizedType;
import org.eclipse.jdt.core.dom.PrimitiveType;
import org.eclipse.jdt.core.dom.QualifiedType;
import org.eclipse.jdt.core.dom.SimpleType;
import org.eclipse.jdt.core.dom.UnionType;
import org.eclipse.jdt.core.dom.WildcardType;

public abstract class Type
extends ASTNode {
    Type(AST ast) {
        super(ast);
    }

    public final boolean isPrimitiveType() {
        return this instanceof PrimitiveType;
    }

    public final boolean isSimpleType() {
        return this instanceof SimpleType;
    }

    public final boolean isArrayType() {
        return this instanceof ArrayType;
    }

    public final boolean isParameterizedType() {
        return this instanceof ParameterizedType;
    }

    public final boolean isQualifiedType() {
        return this instanceof QualifiedType;
    }

    public final boolean isUnionType() {
        return this instanceof UnionType;
    }

    public final boolean isWildcardType() {
        return this instanceof WildcardType;
    }

    public final ITypeBinding resolveBinding() {
        return this.ast.getBindingResolver().resolveType(this);
    }
}

