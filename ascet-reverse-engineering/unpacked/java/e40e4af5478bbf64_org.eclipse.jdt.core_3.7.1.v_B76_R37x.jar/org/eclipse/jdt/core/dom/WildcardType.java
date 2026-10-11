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
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;
import org.eclipse.jdt.core.dom.Type;

public class WildcardType
extends Type {
    public static final ChildPropertyDescriptor BOUND_PROPERTY;
    public static final SimplePropertyDescriptor UPPER_BOUND_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Type optionalBound = null;
    private boolean isUpperBound = true;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz;
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.jdt.core.dom.WildcardType");
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
        BOUND_PROPERTY = new ChildPropertyDescriptor(clazz2, "bound", clazz, false, true);
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.WildcardType");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        UPPER_BOUND_PROPERTY = new SimplePropertyDescriptor(clazz3, "upperBound", Boolean.TYPE, true);
        ArrayList propertyList = new ArrayList(3);
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.WildcardType");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        WildcardType.createPropertyList(clazz4, propertyList);
        WildcardType.addProperty(BOUND_PROPERTY, propertyList);
        WildcardType.addProperty(UPPER_BOUND_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS = WildcardType.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    WildcardType(AST ast) {
        super(ast);
        this.unsupportedIn2();
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return WildcardType.propertyDescriptors(apiLevel);
    }

    final boolean internalGetSetBooleanProperty(SimplePropertyDescriptor property, boolean get, boolean value) {
        if (property == UPPER_BOUND_PROPERTY) {
            if (get) {
                return this.isUpperBound();
            }
            this.setUpperBound(value);
            return false;
        }
        return super.internalGetSetBooleanProperty(property, get, value);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == BOUND_PROPERTY) {
            if (get) {
                return this.getBound();
            }
            this.setBound((Type)child);
            return null;
        }
        return super.internalGetSetChildProperty(property, get, child);
    }

    final int getNodeType0() {
        return 76;
    }

    ASTNode clone0(AST target) {
        WildcardType result = new WildcardType(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setBound((Type)ASTNode.copySubtree(target, this.getBound()), this.isUpperBound());
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getBound());
        }
        visitor.endVisit(this);
    }

    public boolean isUpperBound() {
        return this.isUpperBound;
    }

    public Type getBound() {
        return this.optionalBound;
    }

    public void setBound(Type type, boolean isUpperBound) {
        this.setBound(type);
        this.setUpperBound(isUpperBound);
    }

    public void setBound(Type type) {
        Type oldChild = this.optionalBound;
        this.preReplaceChild(oldChild, type, BOUND_PROPERTY);
        this.optionalBound = type;
        this.postReplaceChild(oldChild, type, BOUND_PROPERTY);
    }

    public void setUpperBound(boolean isUpperBound) {
        this.preValueChange(UPPER_BOUND_PROPERTY);
        this.isUpperBound = isUpperBound;
        this.postValueChange(UPPER_BOUND_PROPERTY);
    }

    int memSize() {
        return 48;
    }

    int treeSize() {
        return this.memSize() + (this.optionalBound == null ? 0 : this.getBound().treeSize());
    }
}

