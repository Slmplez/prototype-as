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
import org.eclipse.jdt.core.dom.Name;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.Type;

public class SimpleType
extends Type {
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Name typeName = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz;
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SimpleType");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$1) == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.jdt.core.dom.Name");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NAME_PROPERTY = new ChildPropertyDescriptor(clazz2, "name", clazz, true, false);
        ArrayList propertyList = new ArrayList(2);
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SimpleType");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        SimpleType.createPropertyList(clazz3, propertyList);
        SimpleType.addProperty(NAME_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS = SimpleType.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    SimpleType(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return SimpleType.propertyDescriptors(apiLevel);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == NAME_PROPERTY) {
            if (get) {
                return this.getName();
            }
            this.setName((Name)child);
            return null;
        }
        return super.internalGetSetChildProperty(property, get, child);
    }

    final int getNodeType0() {
        return 43;
    }

    ASTNode clone0(AST target) {
        SimpleType result = new SimpleType(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setName((Name)this.getName().clone(target));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getName());
        }
        visitor.endVisit(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Name getName() {
        if (this.typeName == null) {
            SimpleType simpleType = this;
            synchronized (simpleType) {
                if (this.typeName == null) {
                    this.preLazyInit();
                    this.typeName = new SimpleName(this.ast);
                    this.postLazyInit(this.typeName, NAME_PROPERTY);
                }
            }
        }
        return this.typeName;
    }

    public void setName(Name typeName) {
        if (typeName == null) {
            throw new IllegalArgumentException();
        }
        Name oldChild = this.typeName;
        this.preReplaceChild(oldChild, typeName, NAME_PROPERTY);
        this.typeName = typeName;
        this.postReplaceChild(oldChild, typeName, NAME_PROPERTY);
    }

    int memSize() {
        return 44;
    }

    int treeSize() {
        return this.memSize() + (this.typeName == null ? 0 : this.getName().treeSize());
    }
}

