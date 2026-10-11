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
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.Statement;

public class SwitchCase
extends Statement {
    public static final ChildPropertyDescriptor EXPRESSION_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Expression optionalExpression = null;
    private boolean expressionInitialized = false;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz;
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SwitchCase");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$1) == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.jdt.core.dom.Expression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        EXPRESSION_PROPERTY = new ChildPropertyDescriptor(clazz2, "expression", clazz, false, true);
        ArrayList propertyList = new ArrayList(2);
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SwitchCase");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        SwitchCase.createPropertyList(clazz3, propertyList);
        SwitchCase.addProperty(EXPRESSION_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS = SwitchCase.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    SwitchCase(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return SwitchCase.propertyDescriptors(apiLevel);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == EXPRESSION_PROPERTY) {
            if (get) {
                return this.getExpression();
            }
            this.setExpression((Expression)child);
            return null;
        }
        return super.internalGetSetChildProperty(property, get, child);
    }

    final int getNodeType0() {
        return 49;
    }

    ASTNode clone0(AST target) {
        SwitchCase result = new SwitchCase(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.copyLeadingComment(this);
        result.setExpression((Expression)ASTNode.copySubtree(target, this.getExpression()));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getExpression());
        }
        visitor.endVisit(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Expression getExpression() {
        if (!this.expressionInitialized) {
            SwitchCase switchCase = this;
            synchronized (switchCase) {
                if (!this.expressionInitialized) {
                    this.preLazyInit();
                    this.optionalExpression = new SimpleName(this.ast);
                    this.expressionInitialized = true;
                    this.postLazyInit(this.optionalExpression, EXPRESSION_PROPERTY);
                }
            }
        }
        return this.optionalExpression;
    }

    public void setExpression(Expression expression) {
        Expression oldChild = this.optionalExpression;
        this.preReplaceChild(oldChild, expression, EXPRESSION_PROPERTY);
        this.optionalExpression = expression;
        this.expressionInitialized = true;
        this.postReplaceChild(oldChild, expression, EXPRESSION_PROPERTY);
    }

    public boolean isDefault() {
        return this.getExpression() == null;
    }

    int memSize() {
        return super.memSize() + 8;
    }

    int treeSize() {
        return this.memSize() + (this.optionalExpression == null ? 0 : this.optionalExpression.treeSize());
    }
}

