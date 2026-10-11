/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.BlockComment;
import org.eclipse.jdt.core.dom.Javadoc;
import org.eclipse.jdt.core.dom.LineComment;

public abstract class Comment
extends ASTNode {
    private ASTNode alternateRoot = null;

    Comment(AST ast) {
        super(ast);
    }

    public final boolean isBlockComment() {
        return this instanceof BlockComment;
    }

    public final boolean isLineComment() {
        return this instanceof LineComment;
    }

    public final boolean isDocComment() {
        return this instanceof Javadoc;
    }

    public final ASTNode getAlternateRoot() {
        return this.alternateRoot;
    }

    public final void setAlternateRoot(ASTNode root) {
        this.checkModifiable();
        this.alternateRoot = root;
    }

    int memSize() {
        return 44;
    }
}

