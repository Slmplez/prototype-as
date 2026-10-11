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

public class ConditionalExpression
extends Expression {
    public static final ChildPropertyDescriptor EXPRESSION_PROPERTY;
    public static final ChildPropertyDescriptor THEN_EXPRESSION_PROPERTY;
    public static final ChildPropertyDescriptor ELSE_EXPRESSION_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Expression conditionExpression = null;
    private Expression thenExpression = null;
    private Expression elseExpression = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3;
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ConditionalExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz3 = class$1) == null) {
            try {
                clazz3 = class$1 = Class.forName("org.eclipse.jdt.core.dom.Expression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        EXPRESSION_PROPERTY = new ChildPropertyDescriptor(clazz4, "expression", clazz3, true, true);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ConditionalExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz2 = class$1) == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.jdt.core.dom.Expression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        THEN_EXPRESSION_PROPERTY = new ChildPropertyDescriptor(clazz5, "thenExpression", clazz2, true, true);
        Class<?> clazz6 = class$0;
        if (clazz6 == null) {
            try {
                clazz6 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ConditionalExpression");
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
        ELSE_EXPRESSION_PROPERTY = new ChildPropertyDescriptor(clazz6, "elseExpression", clazz, true, true);
        ArrayList properyList = new ArrayList(4);
        Class<?> clazz7 = class$0;
        if (clazz7 == null) {
            try {
                clazz7 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ConditionalExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ConditionalExpression.createPropertyList(clazz7, properyList);
        ConditionalExpression.addProperty(EXPRESSION_PROPERTY, properyList);
        ConditionalExpression.addProperty(THEN_EXPRESSION_PROPERTY, properyList);
        ConditionalExpression.addProperty(ELSE_EXPRESSION_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS = ConditionalExpression.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    ConditionalExpression(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return ConditionalExpression.propertyDescriptors(apiLevel);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == EXPRESSION_PROPERTY) {
            if (get) {
                return this.getExpression();
            }
            this.setExpression((Expression)child);
            return null;
        }
        if (property == THEN_EXPRESSION_PROPERTY) {
            if (get) {
                return this.getThenExpression();
            }
            this.setThenExpression((Expression)child);
            return null;
        }
        if (property == ELSE_EXPRESSION_PROPERTY) {
            if (get) {
                return this.getElseExpression();
            }
            this.setElseExpression((Expression)child);
            return null;
        }
        return super.internalGetSetChildProperty(property, get, child);
    }

    final int getNodeType0() {
        return 16;
    }

    ASTNode clone0(AST target) {
        ConditionalExpression result = new ConditionalExpression(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setExpression((Expression)this.getExpression().clone(target));
        result.setThenExpression((Expression)this.getThenExpression().clone(target));
        result.setElseExpression((Expression)this.getElseExpression().clone(target));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getExpression());
            this.acceptChild(visitor, this.getThenExpression());
            this.acceptChild(visitor, this.getElseExpression());
        }
        visitor.endVisit(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Expression getExpression() {
        if (this.conditionExpression == null) {
            ConditionalExpression conditionalExpression = this;
            synchronized (conditionalExpression) {
                if (this.conditionExpression == null) {
                    this.preLazyInit();
                    this.conditionExpression = new SimpleName(this.ast);
                    this.postLazyInit(this.conditionExpression, EXPRESSION_PROPERTY);
                }
            }
        }
        return this.conditionExpression;
    }

    public void setExpression(Expression expression) {
        if (expression == null) {
            throw new IllegalArgumentException();
        }
        Expression oldChild = this.conditionExpression;
        this.preReplaceChild(oldChild, expression, EXPRESSION_PROPERTY);
        this.conditionExpression = expression;
        this.postReplaceChild(oldChild, expression, EXPRESSION_PROPERTY);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Expression getThenExpression() {
        if (this.thenExpression == null) {
            ConditionalExpression conditionalExpression = this;
            synchronized (conditionalExpression) {
                if (this.thenExpression == null) {
                    this.preLazyInit();
                    this.thenExpression = new SimpleName(this.ast);
                    this.postLazyInit(this.thenExpression, THEN_EXPRESSION_PROPERTY);
                }
            }
        }
        return this.thenExpression;
    }

    public void setThenExpression(Expression expression) {
        if (expression == null) {
            throw new IllegalArgumentException();
        }
        Expression oldChild = this.thenExpression;
        this.preReplaceChild(oldChild, expression, THEN_EXPRESSION_PROPERTY);
        this.thenExpression = expression;
        this.postReplaceChild(oldChild, expression, THEN_EXPRESSION_PROPERTY);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Expression getElseExpression() {
        if (this.elseExpression == null) {
            ConditionalExpression conditionalExpression = this;
            synchronized (conditionalExpression) {
                if (this.elseExpression == null) {
                    this.preLazyInit();
                    this.elseExpression = new SimpleName(this.ast);
                    this.postLazyInit(this.elseExpression, ELSE_EXPRESSION_PROPERTY);
                }
            }
        }
        return this.elseExpression;
    }

    public void setElseExpression(Expression expression) {
        if (expression == null) {
            throw new IllegalArgumentException();
        }
        Expression oldChild = this.elseExpression;
        this.preReplaceChild(oldChild, expression, ELSE_EXPRESSION_PROPERTY);
        this.elseExpression = expression;
        this.postReplaceChild(oldChild, expression, ELSE_EXPRESSION_PROPERTY);
    }

    int memSize() {
        return 52;
    }

    int treeSize() {
        return this.memSize() + (this.conditionExpression == null ? 0 : this.getExpression().treeSize()) + (this.thenExpression == null ? 0 : this.getThenExpression().treeSize()) + (this.elseExpression == null ? 0 : this.getElseExpression().treeSize());
    }
}

