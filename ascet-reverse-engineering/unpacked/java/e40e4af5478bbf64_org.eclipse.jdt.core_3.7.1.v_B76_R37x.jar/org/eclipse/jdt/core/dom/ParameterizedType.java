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
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.SimpleType;
import org.eclipse.jdt.core.dom.Type;

public class ParameterizedType
extends Type {
    int index;
    public static final ChildPropertyDescriptor TYPE_PROPERTY;
    public static final ChildListPropertyDescriptor TYPE_ARGUMENTS_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Type type = null;
    private ASTNode.NodeList typeArguments = new ASTNode.NodeList(TYPE_ARGUMENTS_PROPERTY);
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ParameterizedType");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz2 = class$1) == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.jdt.core.dom.Type");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        TYPE_PROPERTY = new ChildPropertyDescriptor(clazz3, "type", clazz2, true, true);
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ParameterizedType");
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
        TYPE_ARGUMENTS_PROPERTY = new ChildListPropertyDescriptor(clazz4, "typeArguments", clazz, true);
        ArrayList propertyList = new ArrayList(3);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ParameterizedType");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ParameterizedType.createPropertyList(clazz5, propertyList);
        ParameterizedType.addProperty(TYPE_PROPERTY, propertyList);
        ParameterizedType.addProperty(TYPE_ARGUMENTS_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS = ParameterizedType.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    ParameterizedType(AST ast) {
        super(ast);
        this.unsupportedIn2();
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return ParameterizedType.propertyDescriptors(apiLevel);
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

    final List internalGetChildListProperty(ChildListPropertyDescriptor property) {
        if (property == TYPE_ARGUMENTS_PROPERTY) {
            return this.typeArguments();
        }
        return super.internalGetChildListProperty(property);
    }

    final int getNodeType0() {
        return 74;
    }

    ASTNode clone0(AST target) {
        ParameterizedType result = new ParameterizedType(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setType((Type)this.getType().clone(target));
        result.typeArguments().addAll(ASTNode.copySubtrees(target, this.typeArguments()));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getType());
            this.acceptChildren(visitor, this.typeArguments);
        }
        visitor.endVisit(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Type getType() {
        if (this.type == null) {
            ParameterizedType parameterizedType = this;
            synchronized (parameterizedType) {
                if (this.type == null) {
                    this.preLazyInit();
                    this.type = new SimpleType(this.ast);
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

    public List typeArguments() {
        return this.typeArguments;
    }

    int memSize() {
        return 52;
    }

    int treeSize() {
        return this.memSize() + (this.type == null ? 0 : this.getType().treeSize()) + this.typeArguments.listSize();
    }
}

