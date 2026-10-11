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
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.IMethodBinding;
import org.eclipse.jdt.core.dom.Name;
import org.eclipse.jdt.core.dom.SimpleName;

public class SuperMethodInvocation
extends Expression {
    public static final ChildPropertyDescriptor QUALIFIER_PROPERTY;
    public static final ChildListPropertyDescriptor TYPE_ARGUMENTS_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    public static final ChildListPropertyDescriptor ARGUMENTS_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    private Name optionalQualifier = null;
    private ASTNode.NodeList typeArguments = null;
    private SimpleName methodName = null;
    private ASTNode.NodeList arguments = new ASTNode.NodeList(ARGUMENTS_PROPERTY);
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3;
        Class<?> clazz4;
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SuperMethodInvocation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz4 = class$1) == null) {
            try {
                clazz4 = class$1 = Class.forName("org.eclipse.jdt.core.dom.Name");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        QUALIFIER_PROPERTY = new ChildPropertyDescriptor(clazz5, "qualifier", clazz4, false, false);
        Class<?> clazz6 = class$0;
        if (clazz6 == null) {
            try {
                clazz6 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SuperMethodInvocation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz3 = class$2) == null) {
            try {
                clazz3 = class$2 = Class.forName("org.eclipse.jdt.core.dom.Type");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        TYPE_ARGUMENTS_PROPERTY = new ChildListPropertyDescriptor(clazz6, "typeArguments", clazz3, false);
        Class<?> clazz7 = class$0;
        if (clazz7 == null) {
            try {
                clazz7 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SuperMethodInvocation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz2 = class$3) == null) {
            try {
                clazz2 = class$3 = Class.forName("org.eclipse.jdt.core.dom.SimpleName");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NAME_PROPERTY = new ChildPropertyDescriptor(clazz7, "name", clazz2, true, false);
        Class<?> clazz8 = class$0;
        if (clazz8 == null) {
            try {
                clazz8 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SuperMethodInvocation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$4) == null) {
            try {
                clazz = class$4 = Class.forName("org.eclipse.jdt.core.dom.Expression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ARGUMENTS_PROPERTY = new ChildListPropertyDescriptor(clazz8, "arguments", clazz, true);
        ArrayList propertyList = new ArrayList(4);
        Class<?> clazz9 = class$0;
        if (clazz9 == null) {
            try {
                clazz9 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SuperMethodInvocation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        SuperMethodInvocation.createPropertyList(clazz9, propertyList);
        SuperMethodInvocation.addProperty(QUALIFIER_PROPERTY, propertyList);
        SuperMethodInvocation.addProperty(NAME_PROPERTY, propertyList);
        SuperMethodInvocation.addProperty(ARGUMENTS_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS_2_0 = SuperMethodInvocation.reapPropertyList(propertyList);
        propertyList = new ArrayList(5);
        Class<?> clazz10 = class$0;
        if (clazz10 == null) {
            try {
                clazz10 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SuperMethodInvocation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        SuperMethodInvocation.createPropertyList(clazz10, propertyList);
        SuperMethodInvocation.addProperty(QUALIFIER_PROPERTY, propertyList);
        SuperMethodInvocation.addProperty(TYPE_ARGUMENTS_PROPERTY, propertyList);
        SuperMethodInvocation.addProperty(NAME_PROPERTY, propertyList);
        SuperMethodInvocation.addProperty(ARGUMENTS_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS_3_0 = SuperMethodInvocation.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        if (apiLevel == 2) {
            return PROPERTY_DESCRIPTORS_2_0;
        }
        return PROPERTY_DESCRIPTORS_3_0;
    }

    SuperMethodInvocation(AST ast) {
        super(ast);
        if (ast.apiLevel >= 3) {
            this.typeArguments = new ASTNode.NodeList(TYPE_ARGUMENTS_PROPERTY);
        }
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return SuperMethodInvocation.propertyDescriptors(apiLevel);
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

    final List internalGetChildListProperty(ChildListPropertyDescriptor property) {
        if (property == ARGUMENTS_PROPERTY) {
            return this.arguments();
        }
        if (property == TYPE_ARGUMENTS_PROPERTY) {
            return this.typeArguments();
        }
        return super.internalGetChildListProperty(property);
    }

    final int getNodeType0() {
        return 48;
    }

    ASTNode clone0(AST target) {
        SuperMethodInvocation result = new SuperMethodInvocation(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setName((SimpleName)this.getName().clone(target));
        result.setQualifier((Name)ASTNode.copySubtree(target, this.getQualifier()));
        if (this.ast.apiLevel >= 3) {
            result.typeArguments().addAll(ASTNode.copySubtrees(target, this.typeArguments()));
        }
        result.arguments().addAll(ASTNode.copySubtrees(target, this.arguments()));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getQualifier());
            if (this.ast.apiLevel >= 3) {
                this.acceptChildren(visitor, this.typeArguments);
            }
            this.acceptChild(visitor, this.getName());
            this.acceptChildren(visitor, this.arguments);
        }
        visitor.endVisit(this);
    }

    public Name getQualifier() {
        return this.optionalQualifier;
    }

    public boolean isResolvedTypeInferredFromExpectedType() {
        return this.ast.getBindingResolver().isResolvedTypeInferredFromExpectedType(this);
    }

    public void setQualifier(Name name) {
        Name oldChild = this.optionalQualifier;
        this.preReplaceChild(oldChild, name, QUALIFIER_PROPERTY);
        this.optionalQualifier = name;
        this.postReplaceChild(oldChild, name, QUALIFIER_PROPERTY);
    }

    public List typeArguments() {
        if (this.typeArguments == null) {
            this.unsupportedIn2();
        }
        return this.typeArguments;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public SimpleName getName() {
        if (this.methodName == null) {
            SuperMethodInvocation superMethodInvocation = this;
            synchronized (superMethodInvocation) {
                if (this.methodName == null) {
                    this.preLazyInit();
                    this.methodName = new SimpleName(this.ast);
                    this.postLazyInit(this.methodName, NAME_PROPERTY);
                }
            }
        }
        return this.methodName;
    }

    public void setName(SimpleName name) {
        if (name == null) {
            throw new IllegalArgumentException();
        }
        SimpleName oldChild = this.methodName;
        this.preReplaceChild(oldChild, name, NAME_PROPERTY);
        this.methodName = name;
        this.postReplaceChild(oldChild, name, NAME_PROPERTY);
    }

    public List arguments() {
        return this.arguments;
    }

    public IMethodBinding resolveMethodBinding() {
        return this.ast.getBindingResolver().resolveMethod(this);
    }

    int memSize() {
        return 56;
    }

    int treeSize() {
        return this.memSize() + (this.optionalQualifier == null ? 0 : this.getQualifier().treeSize()) + (this.typeArguments == null ? 0 : this.typeArguments.listSize()) + (this.methodName == null ? 0 : this.getName().treeSize()) + (this.arguments == null ? 0 : this.arguments.listSize());
    }
}

