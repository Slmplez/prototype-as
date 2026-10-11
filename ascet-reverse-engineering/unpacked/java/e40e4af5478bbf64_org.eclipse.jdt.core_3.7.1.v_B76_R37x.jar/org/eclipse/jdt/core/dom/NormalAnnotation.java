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
import org.eclipse.jdt.core.dom.Annotation;
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.Name;

public final class NormalAnnotation
extends Annotation {
    public static final ChildPropertyDescriptor TYPE_NAME_PROPERTY;
    public static final ChildListPropertyDescriptor VALUES_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private ASTNode.NodeList values = new ASTNode.NodeList(VALUES_PROPERTY);
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz;
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.jdt.core.dom.NormalAnnotation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        TYPE_NAME_PROPERTY = NormalAnnotation.internalTypeNamePropertyFactory(clazz2);
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.NormalAnnotation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$1) == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.jdt.core.dom.MemberValuePair");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        VALUES_PROPERTY = new ChildListPropertyDescriptor(clazz3, "values", clazz, true);
        ArrayList propertyList = new ArrayList(3);
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.NormalAnnotation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NormalAnnotation.createPropertyList(clazz4, propertyList);
        NormalAnnotation.addProperty(TYPE_NAME_PROPERTY, propertyList);
        NormalAnnotation.addProperty(VALUES_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS = NormalAnnotation.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    NormalAnnotation(AST ast) {
        super(ast);
        this.unsupportedIn2();
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return NormalAnnotation.propertyDescriptors(apiLevel);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == TYPE_NAME_PROPERTY) {
            if (get) {
                return this.getTypeName();
            }
            this.setTypeName((Name)child);
            return null;
        }
        return super.internalGetSetChildProperty(property, get, child);
    }

    final List internalGetChildListProperty(ChildListPropertyDescriptor property) {
        if (property == VALUES_PROPERTY) {
            return this.values();
        }
        return super.internalGetChildListProperty(property);
    }

    final ChildPropertyDescriptor internalTypeNameProperty() {
        return TYPE_NAME_PROPERTY;
    }

    final int getNodeType0() {
        return 77;
    }

    ASTNode clone0(AST target) {
        NormalAnnotation result = new NormalAnnotation(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setTypeName((Name)ASTNode.copySubtree(target, this.getTypeName()));
        result.values().addAll(ASTNode.copySubtrees(target, this.values()));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getTypeName());
            this.acceptChildren(visitor, this.values);
        }
        visitor.endVisit(this);
    }

    public List values() {
        return this.values;
    }

    int memSize() {
        return super.memSize() + 4;
    }

    int treeSize() {
        return this.memSize() + (this.typeName == null ? 0 : this.getTypeName().treeSize()) + this.values.listSize();
    }
}

