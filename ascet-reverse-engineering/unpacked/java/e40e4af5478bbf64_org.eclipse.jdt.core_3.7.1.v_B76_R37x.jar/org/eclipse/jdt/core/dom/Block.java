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
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.Statement;

public class Block
extends Statement {
    public static final ChildListPropertyDescriptor STATEMENTS_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private ASTNode.NodeList statements = new ASTNode.NodeList(STATEMENTS_PROPERTY);
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz;
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.jdt.core.dom.Block");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$1) == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.jdt.core.dom.Statement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        STATEMENTS_PROPERTY = new ChildListPropertyDescriptor(clazz2, "statements", clazz, true);
        ArrayList properyList = new ArrayList(2);
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.Block");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Block.createPropertyList(clazz3, properyList);
        Block.addProperty(STATEMENTS_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS = Block.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    Block(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return Block.propertyDescriptors(apiLevel);
    }

    final List internalGetChildListProperty(ChildListPropertyDescriptor property) {
        if (property == STATEMENTS_PROPERTY) {
            return this.statements();
        }
        return super.internalGetChildListProperty(property);
    }

    final int getNodeType0() {
        return 8;
    }

    ASTNode clone0(AST target) {
        Block result = new Block(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.copyLeadingComment(this);
        result.statements().addAll(ASTNode.copySubtrees(target, this.statements()));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChildren(visitor, this.statements);
        }
        visitor.endVisit(this);
    }

    public List statements() {
        return this.statements;
    }

    int memSize() {
        return super.memSize() + 4;
    }

    int treeSize() {
        return this.memSize() + this.statements.listSize();
    }
}

