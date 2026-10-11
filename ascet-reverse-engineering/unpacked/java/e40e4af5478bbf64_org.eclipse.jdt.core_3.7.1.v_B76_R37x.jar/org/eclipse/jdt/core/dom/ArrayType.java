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
import org.eclipse.jdt.core.dom.SimpleType;
import org.eclipse.jdt.core.dom.Type;

public class ArrayType
extends Type {
    public static final ChildPropertyDescriptor COMPONENT_TYPE_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Type componentType = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz;
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ArrayType");
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
        COMPONENT_TYPE_PROPERTY = new ChildPropertyDescriptor(clazz2, "componentType", clazz, true, true);
        ArrayList properyList = new ArrayList(2);
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ArrayType");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ArrayType.createPropertyList(clazz3, properyList);
        ArrayType.addProperty(COMPONENT_TYPE_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS = ArrayType.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    ArrayType(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return ArrayType.propertyDescriptors(apiLevel);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == COMPONENT_TYPE_PROPERTY) {
            if (get) {
                return this.getComponentType();
            }
            this.setComponentType((Type)child);
            return null;
        }
        return super.internalGetSetChildProperty(property, get, child);
    }

    final int getNodeType0() {
        return 5;
    }

    ASTNode clone0(AST target) {
        ArrayType result = new ArrayType(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setComponentType((Type)this.getComponentType().clone(target));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getComponentType());
        }
        visitor.endVisit(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Type getComponentType() {
        if (this.componentType == null) {
            ArrayType arrayType = this;
            synchronized (arrayType) {
                if (this.componentType == null) {
                    this.preLazyInit();
                    this.componentType = new SimpleType(this.ast);
                    this.postLazyInit(this.componentType, COMPONENT_TYPE_PROPERTY);
                }
            }
        }
        return this.componentType;
    }

    public void setComponentType(Type componentType) {
        if (componentType == null) {
            throw new IllegalArgumentException();
        }
        Type oldChild = this.componentType;
        this.preReplaceChild(oldChild, componentType, COMPONENT_TYPE_PROPERTY);
        this.componentType = componentType;
        this.postReplaceChild(oldChild, componentType, COMPONENT_TYPE_PROPERTY);
    }

    public Type getElementType() {
        Type t = this.getComponentType();
        while (t.isArrayType()) {
            t = ((ArrayType)t).getComponentType();
        }
        return t;
    }

    public int getDimensions() {
        Type t = this.getComponentType();
        int dimensions = 1;
        while (t.isArrayType()) {
            ++dimensions;
            t = ((ArrayType)t).getComponentType();
        }
        return dimensions;
    }

    int memSize() {
        return 44;
    }

    int treeSize() {
        return this.memSize() + (this.componentType == null ? 0 : this.getComponentType().treeSize());
    }
}

