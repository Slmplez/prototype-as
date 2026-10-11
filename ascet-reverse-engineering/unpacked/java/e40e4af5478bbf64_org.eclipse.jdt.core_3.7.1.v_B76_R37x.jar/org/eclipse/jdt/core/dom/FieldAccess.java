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
import org.eclipse.jdt.core.dom.IVariableBinding;
import org.eclipse.jdt.core.dom.SimpleName;

public class FieldAccess
extends Expression {
    public static final ChildPropertyDescriptor EXPRESSION_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Expression expression = null;
    private SimpleName fieldName = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.FieldAccess");
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
        EXPRESSION_PROPERTY = new ChildPropertyDescriptor(clazz3, "expression", clazz2, true, true);
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.FieldAccess");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$2) == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.jdt.core.dom.SimpleName");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NAME_PROPERTY = new ChildPropertyDescriptor(clazz4, "name", clazz, true, false);
        ArrayList properyList = new ArrayList(3);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.FieldAccess");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        FieldAccess.createPropertyList(clazz5, properyList);
        FieldAccess.addProperty(EXPRESSION_PROPERTY, properyList);
        FieldAccess.addProperty(NAME_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS = FieldAccess.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    FieldAccess(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return FieldAccess.propertyDescriptors(apiLevel);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == EXPRESSION_PROPERTY) {
            if (get) {
                return this.getExpression();
            }
            this.setExpression((Expression)child);
            return null;
        }
        if (property == NAME_PROPERTY) {
            if (get) {
                return this.getName();
            }
            this.setName((SimpleName)child);
            return null;
        }
        return super.internalGetSetChildProperty(property, get, child);
    }

    final int getNodeType0() {
        return 22;
    }

    ASTNode clone0(AST target) {
        FieldAccess result = new FieldAccess(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setExpression((Expression)this.getExpression().clone(target));
        result.setName((SimpleName)this.getName().clone(target));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getExpression());
            this.acceptChild(visitor, this.getName());
        }
        visitor.endVisit(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Expression getExpression() {
        if (this.expression == null) {
            FieldAccess fieldAccess = this;
            synchronized (fieldAccess) {
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

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public SimpleName getName() {
        if (this.fieldName == null) {
            FieldAccess fieldAccess = this;
            synchronized (fieldAccess) {
                if (this.fieldName == null) {
                    this.preLazyInit();
                    this.fieldName = new SimpleName(this.ast);
                    this.postLazyInit(this.fieldName, NAME_PROPERTY);
                }
            }
        }
        return this.fieldName;
    }

    public void setName(SimpleName fieldName) {
        if (fieldName == null) {
            throw new IllegalArgumentException();
        }
        SimpleName oldChild = this.fieldName;
        this.preReplaceChild(oldChild, fieldName, NAME_PROPERTY);
        this.fieldName = fieldName;
        this.postReplaceChild(oldChild, fieldName, NAME_PROPERTY);
    }

    int memSize() {
        return 48;
    }

    public IVariableBinding resolveFieldBinding() {
        return this.ast.getBindingResolver().resolveField(this);
    }

    int treeSize() {
        return this.memSize() + (this.expression == null ? 0 : this.getExpression().treeSize()) + (this.fieldName == null ? 0 : this.getName().treeSize());
    }
}

