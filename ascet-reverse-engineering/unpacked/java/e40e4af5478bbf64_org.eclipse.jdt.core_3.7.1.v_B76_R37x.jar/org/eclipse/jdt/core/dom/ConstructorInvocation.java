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
import org.eclipse.jdt.core.dom.IMethodBinding;
import org.eclipse.jdt.core.dom.Statement;

public class ConstructorInvocation
extends Statement {
    public static final ChildListPropertyDescriptor TYPE_ARGUMENTS_PROPERTY;
    public static final ChildListPropertyDescriptor ARGUMENTS_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    private ASTNode.NodeList typeArguments = null;
    private ASTNode.NodeList arguments = new ASTNode.NodeList(ARGUMENTS_PROPERTY);
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ConstructorInvocation");
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
        TYPE_ARGUMENTS_PROPERTY = new ChildListPropertyDescriptor(clazz3, "typeArguments", clazz2, false);
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ConstructorInvocation");
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
        ARGUMENTS_PROPERTY = new ChildListPropertyDescriptor(clazz4, "arguments", clazz, true);
        ArrayList properyList = new ArrayList(2);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ConstructorInvocation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ConstructorInvocation.createPropertyList(clazz5, properyList);
        ConstructorInvocation.addProperty(ARGUMENTS_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS_2_0 = ConstructorInvocation.reapPropertyList(properyList);
        properyList = new ArrayList(3);
        Class<?> clazz6 = class$0;
        if (clazz6 == null) {
            try {
                clazz6 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ConstructorInvocation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ConstructorInvocation.createPropertyList(clazz6, properyList);
        ConstructorInvocation.addProperty(TYPE_ARGUMENTS_PROPERTY, properyList);
        ConstructorInvocation.addProperty(ARGUMENTS_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS_3_0 = ConstructorInvocation.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        if (apiLevel == 2) {
            return PROPERTY_DESCRIPTORS_2_0;
        }
        return PROPERTY_DESCRIPTORS_3_0;
    }

    ConstructorInvocation(AST ast) {
        super(ast);
        if (ast.apiLevel >= 3) {
            this.typeArguments = new ASTNode.NodeList(TYPE_ARGUMENTS_PROPERTY);
        }
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return ConstructorInvocation.propertyDescriptors(apiLevel);
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
        return 17;
    }

    ASTNode clone0(AST target) {
        ConstructorInvocation result = new ConstructorInvocation(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.copyLeadingComment(this);
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
            if (this.ast.apiLevel >= 3) {
                this.acceptChildren(visitor, this.typeArguments);
            }
            this.acceptChildren(visitor, this.arguments);
        }
        visitor.endVisit(this);
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
        return 48;
    }

    int treeSize() {
        return this.memSize() + (this.typeArguments == null ? 0 : this.typeArguments.listSize()) + (this.arguments == null ? 0 : this.arguments.listSize());
    }
}

