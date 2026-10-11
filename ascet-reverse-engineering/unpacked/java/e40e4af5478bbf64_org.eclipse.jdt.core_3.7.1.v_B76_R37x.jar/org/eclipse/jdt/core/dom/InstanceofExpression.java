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
import org.eclipse.jdt.core.dom.SimpleType;
import org.eclipse.jdt.core.dom.Type;

public class InstanceofExpression
extends Expression {
    public static final ChildPropertyDescriptor LEFT_OPERAND_PROPERTY;
    public static final ChildPropertyDescriptor RIGHT_OPERAND_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Expression leftOperand = null;
    private Type rightOperand = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.InstanceofExpression");
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
        LEFT_OPERAND_PROPERTY = new ChildPropertyDescriptor(clazz3, "leftOperand", clazz2, true, true);
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.InstanceofExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$2) == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.jdt.core.dom.Type");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        RIGHT_OPERAND_PROPERTY = new ChildPropertyDescriptor(clazz4, "rightOperand", clazz, true, true);
        ArrayList properyList = new ArrayList(3);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.InstanceofExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        InstanceofExpression.createPropertyList(clazz5, properyList);
        InstanceofExpression.addProperty(LEFT_OPERAND_PROPERTY, properyList);
        InstanceofExpression.addProperty(RIGHT_OPERAND_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS = InstanceofExpression.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    InstanceofExpression(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return InstanceofExpression.propertyDescriptors(apiLevel);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == LEFT_OPERAND_PROPERTY) {
            if (get) {
                return this.getLeftOperand();
            }
            this.setLeftOperand((Expression)child);
            return null;
        }
        if (property == RIGHT_OPERAND_PROPERTY) {
            if (get) {
                return this.getRightOperand();
            }
            this.setRightOperand((Type)child);
            return null;
        }
        return super.internalGetSetChildProperty(property, get, child);
    }

    final int getNodeType0() {
        return 62;
    }

    ASTNode clone0(AST target) {
        InstanceofExpression result = new InstanceofExpression(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setLeftOperand((Expression)this.getLeftOperand().clone(target));
        result.setRightOperand((Type)this.getRightOperand().clone(target));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getLeftOperand());
            this.acceptChild(visitor, this.getRightOperand());
        }
        visitor.endVisit(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Expression getLeftOperand() {
        if (this.leftOperand == null) {
            InstanceofExpression instanceofExpression = this;
            synchronized (instanceofExpression) {
                if (this.leftOperand == null) {
                    this.preLazyInit();
                    this.leftOperand = new SimpleName(this.ast);
                    this.postLazyInit(this.leftOperand, LEFT_OPERAND_PROPERTY);
                }
            }
        }
        return this.leftOperand;
    }

    public void setLeftOperand(Expression expression) {
        if (expression == null) {
            throw new IllegalArgumentException();
        }
        Expression oldChild = this.leftOperand;
        this.preReplaceChild(oldChild, expression, LEFT_OPERAND_PROPERTY);
        this.leftOperand = expression;
        this.postReplaceChild(oldChild, expression, LEFT_OPERAND_PROPERTY);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Type getRightOperand() {
        if (this.rightOperand == null) {
            InstanceofExpression instanceofExpression = this;
            synchronized (instanceofExpression) {
                if (this.rightOperand == null) {
                    this.preLazyInit();
                    this.rightOperand = new SimpleType(this.ast);
                    this.postLazyInit(this.rightOperand, RIGHT_OPERAND_PROPERTY);
                }
            }
        }
        return this.rightOperand;
    }

    public void setRightOperand(Type referenceType) {
        if (referenceType == null) {
            throw new IllegalArgumentException();
        }
        Type oldChild = this.rightOperand;
        this.preReplaceChild(oldChild, referenceType, RIGHT_OPERAND_PROPERTY);
        this.rightOperand = referenceType;
        this.postReplaceChild(oldChild, referenceType, RIGHT_OPERAND_PROPERTY);
    }

    int memSize() {
        return 48;
    }

    int treeSize() {
        return this.memSize() + (this.leftOperand == null ? 0 : this.getLeftOperand().treeSize()) + (this.rightOperand == null ? 0 : this.getRightOperand().treeSize());
    }
}

