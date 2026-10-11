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

public final class LineComment
extends Comment {
    private static final List PROPERTY_DESCRIPTORS;
    static /* synthetic */ Class class$0;

    static {
        ArrayList propertyList = new ArrayList(1);
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jdt.core.dom.LineComment");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        LineComment.createPropertyList(clazz, propertyList);
        PROPERTY_DESCRIPTORS = LineComment.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    LineComment(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return LineComment.propertyDescriptors(apiLevel);
    }

    final int getNodeType0() {
        return 63;
    }

    ASTNode clone0(AST target) {
        LineComment result = new LineComment(target);
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

