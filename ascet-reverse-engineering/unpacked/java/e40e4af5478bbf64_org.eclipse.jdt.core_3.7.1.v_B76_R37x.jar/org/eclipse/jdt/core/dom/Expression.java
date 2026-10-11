/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ITypeBinding;

public abstract class Expression
extends ASTNode {
    Expression(AST ast) {
        super(ast);
    }

    public final Object resolveConstantExpressionValue() {
        return this.ast.getBindingResolver().resolveConstantExpressionValue(this);
    }

    public final ITypeBinding resolveTypeBinding() {
        return this.ast.getBindingResolver().resolveExpressionType(this);
    }

    public final boolean resolveBoxing() {
        return this.ast.getBindingResolver().resolveBoxing(this);
    }

    public final boolean resolveUnboxing() {
        return this.ast.getBindingResolver().resolveUnboxing(this);
    }
}

