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
import org.eclipse.jdt.core.dom.Statement;

public class SuperConstructorInvocation
extends Statement {
    public static final ChildPropertyDescriptor EXPRESSION_PROPERTY;
    public static final ChildListPropertyDescriptor TYPE_ARGUMENTS_PROPERTY;
    public static final ChildListPropertyDescriptor ARGUMENTS_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    private Expression optionalExpression = null;
    private ASTNode.NodeList typeArguments = null;
    private ASTNode.NodeList arguments = new ASTNode.NodeList(ARGUMENTS_PROPERTY);
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3;
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SuperConstructorInvocation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz3 = class$1) == null) {
            try {
                clazz3 = class$1 = Class.forName("org.eclipse.jdt.core.dom.Expression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        EXPRESSION_PROPERTY = new ChildPropertyDescriptor(clazz4, "expression", clazz3, false, true);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SuperConstructorInvocation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz2 = class$2) == null) {
            try {
                clazz2 = class$2 = Class.forName("org.eclipse.jdt.core.dom.Type");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        TYPE_ARGUMENTS_PROPERTY = new ChildListPropertyDescriptor(clazz5, "typeArguments", clazz2, false);
        Class<?> clazz6 = class$0;
        if (clazz6 == null) {
            try {
                clazz6 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SuperConstructorInvocation");
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
        ARGUMENTS_PROPERTY = new ChildListPropertyDescriptor(clazz6, "arguments", clazz, true);
        ArrayList propertyList = new ArrayList(3);
        Class<?> clazz7 = class$0;
        if (clazz7 == null) {
            try {
                clazz7 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SuperConstructorInvocation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        SuperConstructorInvocation.createPropertyList(clazz7, propertyList);
        SuperConstructorInvocation.addProperty(EXPRESSION_PROPERTY, propertyList);
        SuperConstructorInvocation.addProperty(ARGUMENTS_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS_2_0 = SuperConstructorInvocation.reapPropertyList(propertyList);
        propertyList = new ArrayList(4);
        Class<?> clazz8 = class$0;
        if (clazz8 == null) {
            try {
                clazz8 = class$0 = Class.forName("org.eclipse.jdt.core.dom.SuperConstructorInvocation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        SuperConstructorInvocation.createPropertyList(clazz8, propertyList);
        SuperConstructorInvocation.addProperty(EXPRESSION_PROPERTY, propertyList);
        SuperConstructorInvocation.addProperty(TYPE_ARGUMENTS_PROPERTY, propertyList);
        SuperConstructorInvocation.addProperty(ARGUMENTS_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS_3_0 = SuperConstructorInvocation.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        if (apiLevel == 2) {
            return PROPERTY_DESCRIPTORS_2_0;
        }
        return PROPERTY_DESCRIPTORS_3_0;
    }

    SuperConstructorInvocation(AST ast) {
        super(ast);
        if (ast.apiLevel >= 3) {
            this.typeArguments = new ASTNode.NodeList(TYPE_ARGUMENTS_PROPERTY);
        }
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return SuperConstructorInvocation.propertyDescriptors(apiLevel);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == EXPRESSION_PROPERTY) {
            if (get) {
                return this.getExpression();
            }
            this.setExpression((Expression)child);
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
        return 46;
    }

    ASTNode clone0(AST target) {
        SuperConstructorInvocation result = new SuperConstructorInvocation(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.copyLeadingComment(this);
        result.setExpression((Expression)ASTNode.copySubtree(target, this.getExpression()));
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
            this.acceptChild(visitor, this.getExpression());
            if (this.ast.apiLevel >= 3) {
                this.acceptChildren(visitor, this.typeArguments);
            }
            this.acceptChildren(visitor, this.arguments);
        }
        visitor.endVisit(this);
    }

    public Expression getExpression() {
        return this.optionalExpression;
    }

    public void setExpression(Expression expression) {
        Expression oldChild = this.optionalExpression;
        this.preReplaceChild(oldChild, expression, EXPRESSION_PROPERTY);
        this.optionalExpression = expression;
        this.postReplaceChild(oldChild, expression, EXPRESSION_PROPERTY);
    }

    public List typeArguments() {
        if (this.typeArguments == null) {
            this.unsupportedIn2();
        }
        return this.typeArguments;
    }

    public List arguments() {
        return this.arguments;
    }

    public IMethodBinding resolveConstructorBinding() {
        return this.ast.getBindingResolver().resolveConstructor(this);
    }

    int memSize() {
        return 52;
    }

    int treeSize() {
        return this.memSize() + (this.optionalExpression == null ? 0 : this.getExpression().treeSize()) + (this.typeArguments == null ? 0 : this.typeArguments.listSize()) + (this.arguments == null ? 0 : this.arguments.listSize());
    }
}

