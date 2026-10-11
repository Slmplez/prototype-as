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
import org.eclipse.jdt.core.dom.ITypeBinding;
import org.eclipse.jdt.core.dom.SimpleName;

public class TypeParameter
extends ASTNode {
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    public static final ChildListPropertyDescriptor TYPE_BOUNDS_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private SimpleName typeVariableName = null;
    private ASTNode.NodeList typeBounds = new ASTNode.NodeList(TYPE_BOUNDS_PROPERTY);
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TypeParameter");
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
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TypeParameter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$2) == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.jdt.core.dom.Type");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        TYPE_BOUNDS_PROPERTY = new ChildListPropertyDescriptor(clazz4, "typeBounds", clazz, false);
        ArrayList propertyList = new ArrayList(3);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TypeParameter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        TypeParameter.createPropertyList(clazz5, propertyList);
        TypeParameter.addProperty(NAME_PROPERTY, propertyList);
        TypeParameter.addProperty(TYPE_BOUNDS_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS = TypeParameter.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    TypeParameter(AST ast) {
        super(ast);
        this.unsupportedIn2();
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return TypeParameter.propertyDescriptors(apiLevel);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
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
        if (property == TYPE_BOUNDS_PROPERTY) {
            return this.typeBounds();
        }
        return super.internalGetChildListProperty(property);
    }

    final int getNodeType0() {
        return 73;
    }

    ASTNode clone0(AST target) {
        TypeParameter result = new TypeParameter(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setName((SimpleName)this.getName().clone(target));
        result.typeBounds().addAll(ASTNode.copySubtrees(target, this.typeBounds()));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getName());
            this.acceptChildren(visitor, this.typeBounds);
        }
        visitor.endVisit(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public SimpleName getName() {
        if (this.typeVariableName == null) {
            TypeParameter typeParameter = this;
            synchronized (typeParameter) {
                if (this.typeVariableName == null) {
                    this.preLazyInit();
                    this.typeVariableName = new SimpleName(this.ast);
                    this.postLazyInit(this.typeVariableName, NAME_PROPERTY);
                }
            }
        }
        return this.typeVariableName;
    }

    public final ITypeBinding resolveBinding() {
        return this.ast.getBindingResolver().resolveTypeParameter(this);
    }

    public void setName(SimpleName typeName) {
        if (typeName == null) {
            throw new IllegalArgumentException();
        }
        SimpleName oldChild = this.typeVariableName;
        this.preReplaceChild(oldChild, typeName, NAME_PROPERTY);
        this.typeVariableName = typeName;
        this.postReplaceChild(oldChild, typeName, NAME_PROPERTY);
    }

    public List typeBounds() {
        return this.typeBounds;
    }

    int memSize() {
        return 48;
    }

    int treeSize() {
        return this.memSize() + (this.typeVariableName == null ? 0 : this.getName().treeSize()) + this.typeBounds.listSize();
    }
}

