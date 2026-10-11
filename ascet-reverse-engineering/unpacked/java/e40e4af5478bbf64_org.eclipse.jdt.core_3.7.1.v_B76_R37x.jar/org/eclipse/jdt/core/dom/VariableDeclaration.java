/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.IVariableBinding;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;

public abstract class VariableDeclaration
extends ASTNode {
    abstract SimplePropertyDescriptor internalExtraDimensionsProperty();

    public final SimplePropertyDescriptor getExtraDimensionsProperty() {
        return this.internalExtraDimensionsProperty();
    }

    abstract ChildPropertyDescriptor internalInitializerProperty();

    public final ChildPropertyDescriptor getInitializerProperty() {
        return this.internalInitializerProperty();
    }

    abstract ChildPropertyDescriptor internalNameProperty();

    public final ChildPropertyDescriptor getNameProperty() {
        return this.internalNameProperty();
    }

    VariableDeclaration(AST ast) {
        super(ast);
    }

    public abstract SimpleName getName();

    public abstract void setName(SimpleName var1);

    public abstract int getExtraDimensions();

    public abstract void setExtraDimensions(int var1);

    public abstract Expression getInitializer();

    public abstract void setInitializer(Expression var1);

    public IVariableBinding resolveBinding() {
        return this.ast.getBindingResolver().resolveVariable(this);
    }
}

