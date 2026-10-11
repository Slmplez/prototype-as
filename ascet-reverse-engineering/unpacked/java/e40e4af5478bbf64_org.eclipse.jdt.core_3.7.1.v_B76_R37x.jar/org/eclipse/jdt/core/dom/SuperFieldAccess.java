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
import org.eclipse.jdt.core.dom.IVariableBinding;
import org.eclipse.jdt.core.dom.Name;
import org.eclipse.jdt.core.dom.SimpleName;

public class SuperFieldAccess
extends Expression {
    public static final ChildPropertyDescriptor QUALIFIER_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Name optionalQualifier = null;
    private SimpleName fieldName = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SuperFieldAccess");
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
        QUALIFIER_PROPERTY = new ChildPropertyDescriptor(clazz3, "qualifier", clazz2, false, false);
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SuperFieldAccess");
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
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SuperFieldAccess");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        SuperFieldAccess.createPropertyList(clazz5, propertyList);
        SuperFieldAccess.addProperty(QUALIFIER_PROPERTY, propertyList);
        SuperFieldAccess.addProperty(NAME_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS = SuperFieldAccess.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    SuperFieldAccess(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return SuperFieldAccess.propertyDescriptors(apiLevel);
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
        return 47;
    }

    ASTNode clone0(AST target) {
        SuperFieldAccess result = new SuperFieldAccess(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setName((SimpleName)ASTNode.copySubtree(target, this.getName()));
        result.setQualifier((Name)ASTNode.copySubtree(target, this.getQualifier()));
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

    public Name getQualifier() {
        return this.optionalQualifier;
    }

    public void setQualifier(Name name) {
        Name oldChild = this.optionalQualifier;
        this.preReplaceChild(oldChild, name, QUALIFIER_PROPERTY);
        this.optionalQualifier = name;
        this.postReplaceChild(oldChild, name, QUALIFIER_PROPERTY);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public SimpleName getName() {
        if (this.fieldName == null) {
            SuperFieldAccess superFieldAccess = this;
            synchronized (superFieldAccess) {
                if (this.fieldName == null) {
                    this.preLazyInit();
                    this.fieldName = new SimpleName(this.ast);
                    this.postLazyInit(this.fieldName, NAME_PROPERTY);
                }
            }
        }
        return this.fieldName;
    }

    public IVariableBinding resolveFieldBinding() {
        return this.ast.getBindingResolver().resolveField(this);
    }

    public void setName(SimpleName fieldName) {
        if (fieldName == null) {
            throw new IllegalArgumentException();
        }
        SimpleName oldChild = this.fieldName;
        this.preReplaceChild(oldChild, fieldName, NAME_PROPERTY);
        this.fieldName = fieldName;
        this.postReplaceChild(oldChild, fieldName, NAME_PROPERTY);
    }

    int memSize() {
        return 48;
    }

    int treeSize() {
        return this.memSize() + (this.optionalQualifier == null ? 0 : this.getQualifier().treeSize()) + (this.fieldName == null ? 0 : this.getName().treeSize());
    }
}

