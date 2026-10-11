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

public class ArrayAccess
extends Expression {
    public static final ChildPropertyDescriptor ARRAY_PROPERTY;
    public static final ChildPropertyDescriptor INDEX_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Expression arrayExpression = null;
    private Expression indexExpression = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ArrayAccess");
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
        ARRAY_PROPERTY = new ChildPropertyDescriptor(clazz3, "array", clazz2, true, true);
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ArrayAccess");
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
        INDEX_PROPERTY = new ChildPropertyDescriptor(clazz4, "index", clazz, true, true);
        ArrayList properyList = new ArrayList(3);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ArrayAccess");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ArrayAccess.createPropertyList(clazz5, properyList);
        ArrayAccess.addProperty(ARRAY_PROPERTY, properyList);
        ArrayAccess.addProperty(INDEX_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS = ArrayAccess.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    ArrayAccess(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return ArrayAccess.propertyDescriptors(apiLevel);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == ARRAY_PROPERTY) {
            if (get) {
                return this.getArray();
            }
            this.setArray((Expression)child);
            return null;
        }
        if (property == INDEX_PROPERTY) {
            if (get) {
                return this.getIndex();
            }
            this.setIndex((Expression)child);
            return null;
        }
        return super.internalGetSetChildProperty(property, get, child);
    }

    final int getNodeType0() {
        return 2;
    }

    ASTNode clone0(AST target) {
        ArrayAccess result = new ArrayAccess(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setArray((Expression)this.getArray().clone(target));
        result.setIndex((Expression)this.getIndex().clone(target));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getArray());
            this.acceptChild(visitor, this.getIndex());
        }
        visitor.endVisit(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Expression getArray() {
        if (this.arrayExpression == null) {
            ArrayAccess arrayAccess = this;
            synchronized (arrayAccess) {
                if (this.arrayExpression == null) {
                    this.preLazyInit();
                    this.arrayExpression = new SimpleName(this.ast);
                    this.postLazyInit(this.arrayExpression, ARRAY_PROPERTY);
                }
            }
        }
        return this.arrayExpression;
    }

    public void setArray(Expression expression) {
        if (expression == null) {
            throw new IllegalArgumentException();
        }
        Expression oldChild = this.arrayExpression;
        this.preReplaceChild(oldChild, expression, ARRAY_PROPERTY);
        this.arrayExpression = expression;
        this.postReplaceChild(oldChild, expression, ARRAY_PROPERTY);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Expression getIndex() {
        if (this.indexExpression == null) {
            ArrayAccess arrayAccess = this;
            synchronized (arrayAccess) {
                if (this.indexExpression == null) {
                    this.preLazyInit();
                    this.indexExpression = new SimpleName(this.ast);
                    this.postLazyInit(this.indexExpression, INDEX_PROPERTY);
                }
            }
        }
        return this.indexExpression;
    }

    public void setIndex(Expression expression) {
        if (expression == null) {
            throw new IllegalArgumentException();
        }
        Expression oldChild = this.indexExpression;
        this.preReplaceChild(oldChild, expression, INDEX_PROPERTY);
        this.indexExpression = expression;
        this.postReplaceChild(oldChild, expression, INDEX_PROPERTY);
    }

    int memSize() {
        return 48;
    }

    int treeSize() {
        return this.memSize() + (this.arrayExpression == null ? 0 : this.getArray().treeSize()) + (this.indexExpression == null ? 0 : this.getIndex().treeSize());
    }
}

