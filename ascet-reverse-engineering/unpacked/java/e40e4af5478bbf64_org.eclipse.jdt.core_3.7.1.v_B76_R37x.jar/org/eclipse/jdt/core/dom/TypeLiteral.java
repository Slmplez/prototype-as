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
import org.eclipse.jdt.core.dom.PrimitiveType;
import org.eclipse.jdt.core.dom.Type;

public class TypeLiteral
extends Expression {
    public static final ChildPropertyDescriptor TYPE_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Type type = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz;
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TypeLiteral");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$1) == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.jdt.core.dom.Type");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        TYPE_PROPERTY = new ChildPropertyDescriptor(clazz2, "type", clazz, true, true);
        ArrayList propertyList = new ArrayList(2);
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TypeLiteral");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        TypeLiteral.createPropertyList(clazz3, propertyList);
        TypeLiteral.addProperty(TYPE_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS = TypeLiteral.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    TypeLiteral(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return TypeLiteral.propertyDescriptors(apiLevel);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == TYPE_PROPERTY) {
            if (get) {
                return this.getType();
            }
            this.setType((Type)child);
            return null;
        }
        return super.internalGetSetChildProperty(property, get, child);
    }

    final int getNodeType0() {
        return 57;
    }

    ASTNode clone0(AST target) {
        TypeLiteral result = new TypeLiteral(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setType((Type)this.getType().clone(target));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getType());
        }
        visitor.endVisit(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Type getType() {
        if (this.type == null) {
            TypeLiteral typeLiteral = this;
            synchronized (typeLiteral) {
                if (this.type == null) {
                    this.preLazyInit();
                    this.type = this.ast.newPrimitiveType(PrimitiveType.INT);
                    this.postLazyInit(this.type, TYPE_PROPERTY);
                }
            }
        }
        return this.type;
    }

    public void setType(Type type) {
        if (type == null) {
            throw new IllegalArgumentException();
        }
        Type oldChild = this.type;
        this.preReplaceChild(oldChild, type, TYPE_PROPERTY);
        this.type = type;
        this.postReplaceChild(oldChild, type, TYPE_PROPERTY);
    }

    int memSize() {
        return 44;
    }

    int treeSize() {
        return this.memSize() + (this.type == null ? 0 : this.getType().treeSize());
    }
}

