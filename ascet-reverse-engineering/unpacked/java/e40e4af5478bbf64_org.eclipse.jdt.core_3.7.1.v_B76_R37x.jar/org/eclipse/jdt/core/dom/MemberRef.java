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
import org.eclipse.jdt.core.dom.IBinding;
import org.eclipse.jdt.core.dom.IDocElement;
import org.eclipse.jdt.core.dom.Name;
import org.eclipse.jdt.core.dom.SimpleName;

public class MemberRef
extends ASTNode
implements IDocElement {
    public static final ChildPropertyDescriptor QUALIFIER_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Name optionalQualifier = null;
    private SimpleName memberName = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MemberRef");
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
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MemberRef");
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
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MemberRef");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        MemberRef.createPropertyList(clazz5, propertyList);
        MemberRef.addProperty(QUALIFIER_PROPERTY, propertyList);
        MemberRef.addProperty(NAME_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS = MemberRef.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    MemberRef(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return MemberRef.propertyDescriptors(apiLevel);
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
        return 67;
    }

    ASTNode clone0(AST target) {
        MemberRef result = new MemberRef(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setQualifier((Name)ASTNode.copySubtree(target, this.getQualifier()));
        result.setName((SimpleName)ASTNode.copySubtree(target, this.getName()));
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
        if (this.memberName == null) {
            MemberRef memberRef = this;
            synchronized (memberRef) {
                if (this.memberName == null) {
                    this.preLazyInit();
                    this.memberName = new SimpleName(this.ast);
                    this.postLazyInit(this.memberName, NAME_PROPERTY);
                }
            }
        }
        return this.memberName;
    }

    public void setName(SimpleName name) {
        if (name == null) {
            throw new IllegalArgumentException();
        }
        SimpleName oldChild = this.memberName;
        this.preReplaceChild(oldChild, name, NAME_PROPERTY);
        this.memberName = name;
        this.postReplaceChild(oldChild, name, NAME_PROPERTY);
    }

    public final IBinding resolveBinding() {
        return this.ast.getBindingResolver().resolveReference(this);
    }

    int memSize() {
        return 48;
    }

    int treeSize() {
        return this.memSize() + (this.optionalQualifier == null ? 0 : this.getQualifier().treeSize()) + (this.memberName == null ? 0 : this.getName().treeSize());
    }
}

