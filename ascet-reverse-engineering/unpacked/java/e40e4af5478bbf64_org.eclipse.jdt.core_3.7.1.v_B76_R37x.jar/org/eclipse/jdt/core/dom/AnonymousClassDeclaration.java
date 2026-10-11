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
import org.eclipse.jdt.core.dom.ITypeBinding;

public class AnonymousClassDeclaration
extends ASTNode {
    public static final ChildListPropertyDescriptor BODY_DECLARATIONS_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private ASTNode.NodeList bodyDeclarations = new ASTNode.NodeList(BODY_DECLARATIONS_PROPERTY);
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz;
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.jdt.core.dom.AnonymousClassDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$1) == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.jdt.core.dom.BodyDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        BODY_DECLARATIONS_PROPERTY = new ChildListPropertyDescriptor(clazz2, "bodyDeclarations", clazz, true);
        ArrayList properyList = new ArrayList(2);
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.AnonymousClassDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        AnonymousClassDeclaration.createPropertyList(clazz3, properyList);
        AnonymousClassDeclaration.addProperty(BODY_DECLARATIONS_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS = AnonymousClassDeclaration.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    AnonymousClassDeclaration(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return AnonymousClassDeclaration.propertyDescriptors(apiLevel);
    }

    final List internalGetChildListProperty(ChildListPropertyDescriptor property) {
        if (property == BODY_DECLARATIONS_PROPERTY) {
            return this.bodyDeclarations();
        }
        return super.internalGetChildListProperty(property);
    }

    final int getNodeType0() {
        return 1;
    }

    ASTNode clone0(AST target) {
        AnonymousClassDeclaration result = new AnonymousClassDeclaration(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.bodyDeclarations().addAll(ASTNode.copySubtrees(target, this.bodyDeclarations()));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChildren(visitor, this.bodyDeclarations);
        }
        visitor.endVisit(this);
    }

    public List bodyDeclarations() {
        return this.bodyDeclarations;
    }

    public ITypeBinding resolveBinding() {
        return this.ast.getBindingResolver().resolveType(this);
    }

    int memSize() {
        return 44;
    }

    int treeSize() {
        return this.memSize() + this.bodyDeclarations.listSize();
    }
}

