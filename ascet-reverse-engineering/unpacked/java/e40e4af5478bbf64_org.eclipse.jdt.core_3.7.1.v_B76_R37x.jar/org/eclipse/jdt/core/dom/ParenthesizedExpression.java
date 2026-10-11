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

public class ParenthesizedExpression
extends Expression {
    public static final ChildPropertyDescriptor EXPRESSION_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Expression expression = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz;
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ParenthesizedExpression");
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
        EXPRESSION_PROPERTY = new ChildPropertyDescriptor(clazz2, "expression", clazz, true, true);
        ArrayList propertyList = new ArrayList(2);
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ParenthesizedExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ParenthesizedExpression.createPropertyList(clazz3, propertyList);
        ParenthesizedExpression.addProperty(EXPRESSION_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS = ParenthesizedExpression.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    ParenthesizedExpression(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return ParenthesizedExpression.propertyDescriptors(apiLevel);
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
        return 36;
    }

    ASTNode clone0(AST target) {
        ParenthesizedExpression result = new ParenthesizedExpression(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setExpression((Expression)this.getExpression().clone(target));
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
        if (this.expression == null) {
            ParenthesizedExpression parenthesizedExpression = this;
            synchronized (parenthesizedExpression) {
                if (this.expression == null) {
                    this.preLazyInit();
                    this.expression = new SimpleName(this.ast);
                    this.postLazyInit(this.expression, EXPRESSION_PROPERTY);
                }
            }
        }
        return this.expression;
    }

    public void setExpression(Expression expression) {
        if (expression == null) {
            throw new IllegalArgumentException();
        }
        Expression oldChild = this.expression;
        this.preReplaceChild(oldChild, expression, EXPRESSION_PROPERTY);
        this.expression = expression;
        this.postReplaceChild(oldChild, expression, EXPRESSION_PROPERTY);
    }

    int memSize() {
        return 44;
    }

    int treeSize() {
        return this.memSize() + (this.expression == null ? 0 : this.getExpression().treeSize());
    }
}

