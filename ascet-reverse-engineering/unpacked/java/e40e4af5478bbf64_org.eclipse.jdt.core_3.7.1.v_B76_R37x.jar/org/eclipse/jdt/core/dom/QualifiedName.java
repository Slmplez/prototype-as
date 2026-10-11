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

public class QualifiedName
extends Name {
    public static final ChildPropertyDescriptor QUALIFIER_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Name qualifier = null;
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
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.QualifiedName");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz2 = class$1) == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.jdt.core.dom.Name");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        QUALIFIER_PROPERTY = new ChildPropertyDescriptor(clazz3, "qualifier", clazz2, true, true);
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.QualifiedName");
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
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.QualifiedName");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        QualifiedName.createPropertyList(clazz5, propertyList);
        QualifiedName.addProperty(QUALIFIER_PROPERTY, propertyList);
        QualifiedName.addProperty(NAME_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS = QualifiedName.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    QualifiedName(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return QualifiedName.propertyDescriptors(apiLevel);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == QUALIFIER_PROPERTY) {
            if (get) {
                return this.getQualifier();
            }
            this.setQualifier((Name)child);
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
        return 40;
    }

    ASTNode clone0(AST target) {
        QualifiedName result = new QualifiedName(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setQualifier((Name)this.getQualifier().clone(target));
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
    public Name getQualifier() {
        if (this.qualifier == null) {
            QualifiedName qualifiedName = this;
            synchronized (qualifiedName) {
                if (this.qualifier == null) {
                    this.preLazyInit();
                    this.qualifier = new SimpleName(this.ast);
                    this.postLazyInit(this.qualifier, QUALIFIER_PROPERTY);
                }
            }
        }
        return this.qualifier;
    }

    public void setQualifier(Name qualifier) {
        if (qualifier == null) {
            throw new IllegalArgumentException();
        }
        Name oldChild = this.qualifier;
        this.preReplaceChild(oldChild, qualifier, QUALIFIER_PROPERTY);
        this.qualifier = qualifier;
        this.postReplaceChild(oldChild, qualifier, QUALIFIER_PROPERTY);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public SimpleName getName() {
        if (this.name == null) {
            QualifiedName qualifiedName = this;
            synchronized (qualifiedName) {
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

    void appendName(StringBuffer buffer) {
        this.getQualifier().appendName(buffer);
        buffer.append('.');
        this.getName().appendName(buffer);
    }

    int memSize() {
        return 56;
    }

    int treeSize() {
        return this.memSize() + (this.name == null ? 0 : this.getName().treeSize()) + (this.qualifier == null ? 0 : this.getQualifier().treeSize());
    }
}

