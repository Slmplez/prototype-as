/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTMatcher;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.Comment;

public final class BlockComment
extends Comment {
    private static final List PROPERTY_DESCRIPTORS;
    static /* synthetic */ Class class$0;

    static {
        ArrayList properyList = new ArrayList(1);
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jdt.core.dom.BlockComment");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        BlockComment.createPropertyList(clazz, properyList);
        PROPERTY_DESCRIPTORS = BlockComment.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    BlockComment(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return BlockComment.propertyDescriptors(apiLevel);
    }

    final int getNodeType0() {
        return 64;
    }

    ASTNode clone0(AST target) {
        BlockComment result = new BlockComment(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        visitor.visit(this);
        visitor.endVisit(this);
    }

    int memSize() {
        return super.memSize();
    }

    int treeSize() {
        return this.memSize();
    }
}

