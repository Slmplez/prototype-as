/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.IBinding;
import org.eclipse.jdt.core.dom.IDocElement;
import org.eclipse.jdt.core.dom.QualifiedName;
import org.eclipse.jdt.core.dom.SimpleName;

public abstract class Name
extends Expression
implements IDocElement {
    static final int BASE_NAME_NODE_SIZE = 44;
    int index;

    Name(AST ast) {
        super(ast);
    }

    public final boolean isSimpleName() {
        return this instanceof SimpleName;
    }

    public final boolean isQualifiedName() {
        return this instanceof QualifiedName;
    }

    public final IBinding resolveBinding() {
        return this.ast.getBindingResolver().resolveName(this);
    }

    public final String getFullyQualifiedName() {
        if (this.isSimpleName()) {
            return ((SimpleName)this).getIdentifier();
        }
        StringBuffer buffer = new StringBuffer(50);
        this.appendName(buffer);
        return new String(buffer);
    }

    abstract void appendName(StringBuffer var1);
}

