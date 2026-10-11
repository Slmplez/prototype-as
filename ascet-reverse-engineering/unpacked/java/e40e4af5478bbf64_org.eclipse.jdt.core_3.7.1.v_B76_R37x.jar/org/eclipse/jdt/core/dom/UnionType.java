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
import org.eclipse.jdt.core.dom.Type;

public class UnionType
extends Type {
    public static final ChildListPropertyDescriptor TYPES_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private ASTNode.NodeList types = new ASTNode.NodeList(TYPES_PROPERTY);
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz;
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.jdt.core.dom.UnionType");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$1) == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.jdt.core.dom.Type");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        TYPES_PROPERTY = new ChildListPropertyDescriptor(clazz2, "types", clazz, true);
        ArrayList propertyList = new ArrayList(2);
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.UnionType");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        UnionType.createPropertyList(clazz3, propertyList);
        UnionType.addProperty(TYPES_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS = UnionType.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    UnionType(AST ast) {
        super(ast);
        this.unsupportedIn2_3();
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return UnionType.propertyDescriptors(apiLevel);
    }

    final List internalGetChildListProperty(ChildListPropertyDescriptor property) {
        if (property == TYPES_PROPERTY) {
            return this.types();
        }
        return super.internalGetChildListProperty(property);
    }

    final int getNodeType0() {
        return 84;
    }

    ASTNode clone0(AST target) {
        UnionType result = new UnionType(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.types().addAll(ASTNode.copySubtrees(target, this.types()));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChildren(visitor, this.types);
        }
        visitor.endVisit(this);
    }

    public List types() {
        return this.types;
    }

    int memSize() {
        return 44;
    }

    int treeSize() {
        return this.memSize() + this.types.listSize();
    }
}

