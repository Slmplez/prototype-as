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
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SimpleType;
import org.eclipse.jdt.core.dom.Type;

public class QualifiedType
extends Type {
    int index;
    public static final ChildPropertyDescriptor QUALIFIER_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Type qualifier = null;
    private SimpleName name = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.QualifiedType");
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
        QUALIFIER_PROPERTY = new ChildPropertyDescriptor(clazz3, "qualifier", clazz2, true, true);
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.QualifiedType");
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
        ArrayList propertyList = new ArrayList(3);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.QualifiedType");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        QualifiedType.createPropertyList(clazz5, propertyList);
        QualifiedType.addProperty(QUALIFIER_PROPERTY, propertyList);
        QualifiedType.addProperty(NAME_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS = QualifiedType.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    QualifiedType(AST ast) {
        super(ast);
        this.unsupportedIn2();
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return QualifiedType.propertyDescriptors(apiLevel);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == QUALIFIER_PROPERTY) {
            if (get) {
                return this.getQualifier();
            }
            this.setQualifier((Type)child);
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
        return 75;
    }

    ASTNode clone0(AST target) {
        QualifiedType result = new QualifiedType(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setQualifier((Type)this.getQualifier().clone(target));
        result.setName((SimpleName)this.getName().clone(target));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getQualifier());
            this.acceptChild(visitor, this.getName());
        }
        visitor.endVisit(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Type getQualifier() {
        if (this.qualifier == null) {
            QualifiedType qualifiedType = this;
            synchronized (qualifiedType) {
                if (this.qualifier == null) {
                    this.preLazyInit();
                    this.qualifier = new SimpleType(this.ast);
                    this.postLazyInit(this.qualifier, QUALIFIER_PROPERTY);
                }
            }
        }
        return this.qualifier;
    }

    public void setQualifier(Type type) {
        if (type == null) {
            throw new IllegalArgumentException();
        }
        Type oldChild = this.qualifier;
        this.preReplaceChild(oldChild, type, QUALIFIER_PROPERTY);
        this.qualifier = type;
        this.postReplaceChild(oldChild, type, QUALIFIER_PROPERTY);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public SimpleName getName() {
        if (this.name == null) {
            QualifiedType qualifiedType = this;
            synchronized (qualifiedType) {
                if (this.name == null) {
                    this.preLazyInit();
                    this.name = new SimpleName(this.ast);
                    this.postLazyInit(this.name, NAME_PROPERTY);
                }
            }
        }
        return this.name;
    }

    public void setName(SimpleName name) {
        if (name == null) {
            throw new IllegalArgumentException();
        }
        SimpleName oldChild = this.name;
        this.preReplaceChild(oldChild, name, NAME_PROPERTY);
        this.name = name;
        this.postReplaceChild(oldChild, name, NAME_PROPERTY);
    }

    int memSize() {
        return 52;
    }

    int treeSize() {
        return this.memSize() + (this.qualifier == null ? 0 : this.getQualifier().treeSize()) + (this.name == null ? 0 : this.getName().treeSize());
    }
}

