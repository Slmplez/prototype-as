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
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.Name;

public final class MarkerAnnotation
extends Annotation {
    public static final ChildPropertyDescriptor TYPE_NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jdt.core.dom.MarkerAnnotation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        TYPE_NAME_PROPERTY = MarkerAnnotation.internalTypeNamePropertyFactory(clazz);
        ArrayList propertyList = new ArrayList(2);
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MarkerAnnotation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        MarkerAnnotation.createPropertyList(clazz2, propertyList);
        MarkerAnnotation.addProperty(TYPE_NAME_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS = MarkerAnnotation.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    MarkerAnnotation(AST ast) {
        super(ast);
        this.unsupportedIn2();
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return MarkerAnnotation.propertyDescriptors(apiLevel);
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

    final ChildPropertyDescriptor internalTypeNameProperty() {
        return TYPE_NAME_PROPERTY;
    }

    final int getNodeType0() {
        return 78;
    }

    ASTNode clone0(AST target) {
        MarkerAnnotation result = new MarkerAnnotation(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setTypeName((Name)ASTNode.copySubtree(target, this.getTypeName()));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getTypeName());
        }
        visitor.endVisit(this);
    }

    int memSize() {
        return super.memSize();
    }

    int treeSize() {
        return this.memSize() + (this.typeName == null ? 0 : this.getTypeName().treeSize());
    }
}

