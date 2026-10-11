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
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.Name;
import org.eclipse.jdt.core.dom.SimpleName;

public final class SingleMemberAnnotation
extends Annotation {
    public static final ChildPropertyDescriptor TYPE_NAME_PROPERTY;
    public static final ChildPropertyDescriptor VALUE_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Expression value = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz;
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SingleMemberAnnotation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        TYPE_NAME_PROPERTY = SingleMemberAnnotation.internalTypeNamePropertyFactory(clazz2);
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SingleMemberAnnotation");
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
        VALUE_PROPERTY = new ChildPropertyDescriptor(clazz3, "value", clazz, true, true);
        ArrayList propertyList = new ArrayList(3);
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SingleMemberAnnotation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        SingleMemberAnnotation.createPropertyList(clazz4, propertyList);
        SingleMemberAnnotation.addProperty(TYPE_NAME_PROPERTY, propertyList);
        SingleMemberAnnotation.addProperty(VALUE_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS = SingleMemberAnnotation.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    SingleMemberAnnotation(AST ast) {
        super(ast);
        this.unsupportedIn2();
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return SingleMemberAnnotation.propertyDescriptors(apiLevel);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == TYPE_NAME_PROPERTY) {
            if (get) {
                return this.getTypeName();
            }
            this.setTypeName((Name)child);
            return null;
        }
        if (property == VALUE_PROPERTY) {
            if (get) {
                return this.getValue();
            }
            this.setValue((Expression)child);
            return null;
        }
        return super.internalGetSetChildProperty(property, get, child);
    }

    final ChildPropertyDescriptor internalTypeNameProperty() {
        return TYPE_NAME_PROPERTY;
    }

    final int getNodeType0() {
        return 79;
    }

    ASTNode clone0(AST target) {
        SingleMemberAnnotation result = new SingleMemberAnnotation(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setTypeName((Name)ASTNode.copySubtree(target, this.getTypeName()));
        result.setValue((Expression)ASTNode.copySubtree(target, this.getValue()));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getTypeName());
            this.acceptChild(visitor, this.getValue());
        }
        visitor.endVisit(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Expression getValue() {
        if (this.value == null) {
            SingleMemberAnnotation singleMemberAnnotation = this;
            synchronized (singleMemberAnnotation) {
                if (this.value == null) {
                    this.preLazyInit();
                    this.value = new SimpleName(this.ast);
                    this.postLazyInit(this.value, VALUE_PROPERTY);
                }
            }
        }
        return this.value;
    }

    public void setValue(Expression value) {
        if (value == null) {
            throw new IllegalArgumentException();
        }
        Expression oldChild = this.value;
        this.preReplaceChild(oldChild, value, VALUE_PROPERTY);
        this.value = value;
        this.postReplaceChild(oldChild, value, VALUE_PROPERTY);
    }

    int memSize() {
        return super.memSize() + 4;
    }

    int treeSize() {
        return this.memSize() + (this.typeName == null ? 0 : this.getTypeName().treeSize()) + (this.value == null ? 0 : this.getValue().treeSize());
    }
}

