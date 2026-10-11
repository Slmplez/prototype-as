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
import org.eclipse.jdt.core.dom.IBinding;
import org.eclipse.jdt.core.dom.IDocElement;
import org.eclipse.jdt.core.dom.Name;
import org.eclipse.jdt.core.dom.SimpleName;

public class MethodRef
extends ASTNode
implements IDocElement {
    public static final ChildPropertyDescriptor QUALIFIER_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    public static final ChildListPropertyDescriptor PARAMETERS_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private Name optionalQualifier = null;
    private SimpleName methodName = null;
    private ASTNode.NodeList parameters = new ASTNode.NodeList(PARAMETERS_PROPERTY);
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3;
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MethodRef");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz3 = class$1) == null) {
            try {
                clazz3 = class$1 = Class.forName("org.eclipse.jdt.core.dom.Name");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        QUALIFIER_PROPERTY = new ChildPropertyDescriptor(clazz4, "qualifier", clazz3, false, false);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MethodRef");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz2 = class$2) == null) {
            try {
                clazz2 = class$2 = Class.forName("org.eclipse.jdt.core.dom.SimpleName");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NAME_PROPERTY = new ChildPropertyDescriptor(clazz5, "name", clazz2, true, false);
        Class<?> clazz6 = class$0;
        if (clazz6 == null) {
            try {
                clazz6 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MethodRef");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$3) == null) {
            try {
                clazz = class$3 = Class.forName("org.eclipse.jdt.core.dom.MethodRefParameter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        PARAMETERS_PROPERTY = new ChildListPropertyDescriptor(clazz6, "parameters", clazz, false);
        ArrayList properyList = new ArrayList(4);
        Class<?> clazz7 = class$0;
        if (clazz7 == null) {
            try {
                clazz7 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MethodRef");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        MethodRef.createPropertyList(clazz7, properyList);
        MethodRef.addProperty(QUALIFIER_PROPERTY, properyList);
        MethodRef.addProperty(NAME_PROPERTY, properyList);
        MethodRef.addProperty(PARAMETERS_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS = MethodRef.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    MethodRef(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return MethodRef.propertyDescriptors(apiLevel);
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
        if (property == PARAMETERS_PROPERTY) {
            return this.parameters();
        }
        return super.internalGetChildListProperty(property);
    }

    final int getNodeType0() {
        return 68;
    }

    ASTNode clone0(AST target) {
        MethodRef result = new MethodRef(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setQualifier((Name)ASTNode.copySubtree(target, this.getQualifier()));
        result.setName((SimpleName)ASTNode.copySubtree(target, this.getName()));
        result.parameters().addAll(ASTNode.copySubtrees(target, this.parameters()));
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
            this.acceptChildren(visitor, this.parameters);
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
        if (this.methodName == null) {
            MethodRef methodRef = this;
            synchronized (methodRef) {
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

    public List parameters() {
        return this.parameters;
    }

    public final IBinding resolveBinding() {
        return this.ast.getBindingResolver().resolveReference(this);
    }

    int memSize() {
        return 52;
    }

    int treeSize() {
        return this.memSize() + (this.optionalQualifier == null ? 0 : this.getQualifier().treeSize()) + (this.methodName == null ? 0 : this.getName().treeSize()) + this.parameters.listSize();
    }
}

