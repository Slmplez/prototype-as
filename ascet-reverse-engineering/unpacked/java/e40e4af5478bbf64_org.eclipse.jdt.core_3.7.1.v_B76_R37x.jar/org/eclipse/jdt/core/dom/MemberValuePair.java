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
import org.eclipse.jdt.core.dom.IMemberValuePairBinding;
import org.eclipse.jdt.core.dom.SimpleName;

public class MemberValuePair
extends ASTNode {
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    public static final ChildPropertyDescriptor VALUE_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private SimpleName name = null;
    private Expression value = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MemberValuePair");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz2 = class$1) == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.jdt.core.dom.SimpleName");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NAME_PROPERTY = new ChildPropertyDescriptor(clazz3, "name", clazz2, true, false);
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MemberValuePair");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$2) == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.jdt.core.dom.Expression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        VALUE_PROPERTY = new ChildPropertyDescriptor(clazz4, "value", clazz, true, true);
        ArrayList propertyList = new ArrayList(3);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MemberValuePair");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        MemberValuePair.createPropertyList(clazz5, propertyList);
        MemberValuePair.addProperty(NAME_PROPERTY, propertyList);
        MemberValuePair.addProperty(VALUE_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS = MemberValuePair.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    MemberValuePair(AST ast) {
        super(ast);
        this.unsupportedIn2();
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return MemberValuePair.propertyDescriptors(apiLevel);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == NAME_PROPERTY) {
            if (get) {
                return this.getName();
            }
            this.setName((SimpleName)child);
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

    final int getNodeType0() {
        return 80;
    }

    ASTNode clone0(AST target) {
        MemberValuePair result = new MemberValuePair(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setName((SimpleName)ASTNode.copySubtree(target, this.getName()));
        result.setValue((Expression)ASTNode.copySubtree(target, this.getValue()));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getName());
            this.acceptChild(visitor, this.getValue());
        }
        visitor.endVisit(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public SimpleName getName() {
        if (this.name == null) {
            MemberValuePair memberValuePair = this;
            synchronized (memberValuePair) {
                if (this.name == null) {
                    this.preLazyInit();
                    this.name = new SimpleName(this.ast);
                    this.postLazyInit(this.name, NAME_PROPERTY);
                }
            }
        }
        return this.name;
    }

    public final IMemberValuePairBinding resolveMemberValuePairBinding() {
        return this.ast.getBindingResolver().resolveMemberValuePair(this);
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

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Expression getValue() {
        if (this.value == null) {
            MemberValuePair memberValuePair = this;
            synchronized (memberValuePair) {
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
        return 48;
    }

    int treeSize() {
        return this.memSize() + (this.name == null ? 0 : this.getName().treeSize()) + (this.value == null ? 0 : this.getValue().treeSize());
    }
}

