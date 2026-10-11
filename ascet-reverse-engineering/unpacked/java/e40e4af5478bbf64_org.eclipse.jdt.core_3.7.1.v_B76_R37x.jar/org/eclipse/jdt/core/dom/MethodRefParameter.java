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
import org.eclipse.jdt.core.dom.PrimitiveType;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;
import org.eclipse.jdt.core.dom.Type;

public class MethodRefParameter
extends ASTNode {
    public static final ChildPropertyDescriptor TYPE_PROPERTY;
    public static final SimplePropertyDescriptor VARARGS_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    private Type type = null;
    private boolean variableArity = false;
    private SimpleName optionalParameterName = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MethodRefParameter");
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
        TYPE_PROPERTY = new ChildPropertyDescriptor(clazz3, "type", clazz2, true, false);
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MethodRefParameter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        VARARGS_PROPERTY = new SimplePropertyDescriptor(clazz4, "varargs", Boolean.TYPE, true);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MethodRefParameter");
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
        NAME_PROPERTY = new ChildPropertyDescriptor(clazz5, "name", clazz, false, false);
        ArrayList properyList = new ArrayList(3);
        Class<?> clazz6 = class$0;
        if (clazz6 == null) {
            try {
                clazz6 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MethodRefParameter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        MethodRefParameter.createPropertyList(clazz6, properyList);
        MethodRefParameter.addProperty(TYPE_PROPERTY, properyList);
        MethodRefParameter.addProperty(NAME_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS_2_0 = MethodRefParameter.reapPropertyList(properyList);
        properyList = new ArrayList(3);
        Class<?> clazz7 = class$0;
        if (clazz7 == null) {
            try {
                clazz7 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MethodRefParameter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        MethodRefParameter.createPropertyList(clazz7, properyList);
        MethodRefParameter.addProperty(TYPE_PROPERTY, properyList);
        MethodRefParameter.addProperty(VARARGS_PROPERTY, properyList);
        MethodRefParameter.addProperty(NAME_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS_3_0 = MethodRefParameter.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        if (apiLevel == 2) {
            return PROPERTY_DESCRIPTORS_2_0;
        }
        return PROPERTY_DESCRIPTORS_3_0;
    }

    MethodRefParameter(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return MethodRefParameter.propertyDescriptors(apiLevel);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == TYPE_PROPERTY) {
            if (get) {
                return this.getType();
            }
            this.setType((Type)child);
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

    final boolean internalGetSetBooleanProperty(SimplePropertyDescriptor property, boolean get, boolean value) {
        if (property == VARARGS_PROPERTY) {
            if (get) {
                return this.isVarargs();
            }
            this.setVarargs(value);
            return false;
        }
        return super.internalGetSetBooleanProperty(property, get, value);
    }

    final int getNodeType0() {
        return 69;
    }

    ASTNode clone0(AST target) {
        MethodRefParameter result = new MethodRefParameter(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setType((Type)ASTNode.copySubtree(target, this.getType()));
        if (this.ast.apiLevel >= 3) {
            result.setVarargs(this.isVarargs());
        }
        result.setName((SimpleName)ASTNode.copySubtree(target, this.getName()));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getType());
            this.acceptChild(visitor, this.getName());
        }
        visitor.endVisit(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Type getType() {
        if (this.type == null) {
            MethodRefParameter methodRefParameter = this;
            synchronized (methodRefParameter) {
                if (this.type == null) {
                    this.preLazyInit();
                    this.type = this.ast.newPrimitiveType(PrimitiveType.INT);
                    this.postLazyInit(this.type, TYPE_PROPERTY);
                }
            }
        }
        return this.type;
    }

    public void setType(Type type) {
        if (type == null) {
            throw new IllegalArgumentException();
        }
        Type oldChild = this.type;
        this.preReplaceChild(oldChild, type, TYPE_PROPERTY);
        this.type = type;
        this.postReplaceChild(oldChild, type, TYPE_PROPERTY);
    }

    public boolean isVarargs() {
        this.unsupportedIn2();
        return this.variableArity;
    }

    public void setVarargs(boolean variableArity) {
        this.unsupportedIn2();
        this.preValueChange(VARARGS_PROPERTY);
        this.variableArity = variableArity;
        this.postValueChange(VARARGS_PROPERTY);
    }

    public SimpleName getName() {
        return this.optionalParameterName;
    }

    public void setName(SimpleName name) {
        SimpleName oldChild = this.optionalParameterName;
        this.preReplaceChild(oldChild, name, NAME_PROPERTY);
        this.optionalParameterName = name;
        this.postReplaceChild(oldChild, name, NAME_PROPERTY);
    }

    int memSize() {
        return 50;
    }

    int treeSize() {
        return this.memSize() + (this.type == null ? 0 : this.getType().treeSize()) + (this.optionalParameterName == null ? 0 : this.getName().treeSize());
    }
}

