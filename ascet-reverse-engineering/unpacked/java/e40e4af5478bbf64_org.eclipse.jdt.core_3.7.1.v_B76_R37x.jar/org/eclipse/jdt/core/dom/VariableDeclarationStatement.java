/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTMatcher;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.Modifier;
import org.eclipse.jdt.core.dom.PrimitiveType;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;
import org.eclipse.jdt.core.dom.Statement;
import org.eclipse.jdt.core.dom.Type;

public class VariableDeclarationStatement
extends Statement {
    public static final SimplePropertyDescriptor MODIFIERS_PROPERTY;
    public static final ChildListPropertyDescriptor MODIFIERS2_PROPERTY;
    public static final ChildPropertyDescriptor TYPE_PROPERTY;
    public static final ChildListPropertyDescriptor FRAGMENTS_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    private ASTNode.NodeList modifiers = null;
    private int modifierFlags = 0;
    private Type baseType = null;
    private ASTNode.NodeList variableDeclarationFragments = new ASTNode.NodeList(FRAGMENTS_PROPERTY);
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
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.VariableDeclarationStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        MODIFIERS_PROPERTY = new SimplePropertyDescriptor(clazz4, "modifiers", Integer.TYPE, true);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.VariableDeclarationStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz3 = class$1) == null) {
            try {
                clazz3 = class$1 = Class.forName("org.eclipse.jdt.core.dom.IExtendedModifier");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        MODIFIERS2_PROPERTY = new ChildListPropertyDescriptor(clazz5, "modifiers", clazz3, true);
        Class<?> clazz6 = class$0;
        if (clazz6 == null) {
            try {
                clazz6 = class$0 = Class.forName("org.eclipse.jdt.core.dom.VariableDeclarationStatement");
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
        TYPE_PROPERTY = new ChildPropertyDescriptor(clazz6, "type", clazz2, true, false);
        Class<?> clazz7 = class$0;
        if (clazz7 == null) {
            try {
                clazz7 = class$0 = Class.forName("org.eclipse.jdt.core.dom.VariableDeclarationStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$3) == null) {
            try {
                clazz = class$3 = Class.forName("org.eclipse.jdt.core.dom.VariableDeclarationFragment");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        FRAGMENTS_PROPERTY = new ChildListPropertyDescriptor(clazz7, "fragments", clazz, true);
        ArrayList propertyList = new ArrayList(4);
        Class<?> clazz8 = class$0;
        if (clazz8 == null) {
            try {
                clazz8 = class$0 = Class.forName("org.eclipse.jdt.core.dom.VariableDeclarationStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        VariableDeclarationStatement.createPropertyList(clazz8, propertyList);
        VariableDeclarationStatement.addProperty(MODIFIERS_PROPERTY, propertyList);
        VariableDeclarationStatement.addProperty(TYPE_PROPERTY, propertyList);
        VariableDeclarationStatement.addProperty(FRAGMENTS_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS_2_0 = VariableDeclarationStatement.reapPropertyList(propertyList);
        propertyList = new ArrayList(4);
        Class<?> clazz9 = class$0;
        if (clazz9 == null) {
            try {
                clazz9 = class$0 = Class.forName("org.eclipse.jdt.core.dom.VariableDeclarationStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        VariableDeclarationStatement.createPropertyList(clazz9, propertyList);
        VariableDeclarationStatement.addProperty(MODIFIERS2_PROPERTY, propertyList);
        VariableDeclarationStatement.addProperty(TYPE_PROPERTY, propertyList);
        VariableDeclarationStatement.addProperty(FRAGMENTS_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS_3_0 = VariableDeclarationStatement.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        if (apiLevel == 2) {
            return PROPERTY_DESCRIPTORS_2_0;
        }
        return PROPERTY_DESCRIPTORS_3_0;
    }

    VariableDeclarationStatement(AST ast) {
        super(ast);
        if (ast.apiLevel >= 3) {
            this.modifiers = new ASTNode.NodeList(MODIFIERS2_PROPERTY);
        }
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return VariableDeclarationStatement.propertyDescriptors(apiLevel);
    }

    final int internalGetSetIntProperty(SimplePropertyDescriptor property, boolean get, int value) {
        if (property == MODIFIERS_PROPERTY) {
            if (get) {
                return this.getModifiers();
            }
            this.setModifiers(value);
            return 0;
        }
        return super.internalGetSetIntProperty(property, get, value);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == TYPE_PROPERTY) {
            if (get) {
                return this.getType();
            }
            this.setType((Type)child);
            return null;
        }
        return super.internalGetSetChildProperty(property, get, child);
    }

    final List internalGetChildListProperty(ChildListPropertyDescriptor property) {
        if (property == MODIFIERS2_PROPERTY) {
            return this.modifiers();
        }
        if (property == FRAGMENTS_PROPERTY) {
            return this.fragments();
        }
        return super.internalGetChildListProperty(property);
    }

    final int getNodeType0() {
        return 60;
    }

    ASTNode clone0(AST target) {
        VariableDeclarationStatement result = new VariableDeclarationStatement(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.copyLeadingComment(this);
        if (this.ast.apiLevel == 2) {
            result.setModifiers(this.getModifiers());
        }
        if (this.ast.apiLevel >= 3) {
            result.modifiers().addAll(ASTNode.copySubtrees(target, this.modifiers()));
        }
        result.setType((Type)this.getType().clone(target));
        result.fragments().addAll(ASTNode.copySubtrees(target, this.fragments()));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            if (this.ast.apiLevel >= 3) {
                this.acceptChildren(visitor, this.modifiers);
            }
            this.acceptChild(visitor, this.getType());
            this.acceptChildren(visitor, this.variableDeclarationFragments);
        }
        visitor.endVisit(this);
    }

    public List modifiers() {
        if (this.modifiers == null) {
            this.unsupportedIn2();
        }
        return this.modifiers;
    }

    public int getModifiers() {
        if (this.modifiers == null) {
            return this.modifierFlags;
        }
        int computedModifierFlags = 0;
        Iterator it = this.modifiers().iterator();
        while (it.hasNext()) {
            Object x = it.next();
            if (!(x instanceof Modifier)) continue;
            computedModifierFlags |= ((Modifier)x).getKeyword().toFlagValue();
        }
        return computedModifierFlags;
    }

    public void setModifiers(int modifiers) {
        this.internalSetModifiers(modifiers);
    }

    final void internalSetModifiers(int pmodifiers) {
        this.supportedOnlyIn2();
        this.preValueChange(MODIFIERS_PROPERTY);
        this.modifierFlags = pmodifiers;
        this.postValueChange(MODIFIERS_PROPERTY);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Type getType() {
        if (this.baseType == null) {
            VariableDeclarationStatement variableDeclarationStatement = this;
            synchronized (variableDeclarationStatement) {
                if (this.baseType == null) {
                    this.preLazyInit();
                    this.baseType = this.ast.newPrimitiveType(PrimitiveType.INT);
                    this.postLazyInit(this.baseType, TYPE_PROPERTY);
                }
            }
        }
        return this.baseType;
    }

    public void setType(Type type) {
        if (type == null) {
            throw new IllegalArgumentException();
        }
        Type oldChild = this.baseType;
        this.preReplaceChild(oldChild, type, TYPE_PROPERTY);
        this.baseType = type;
        this.postReplaceChild(oldChild, type, TYPE_PROPERTY);
    }

    public List fragments() {
        return this.variableDeclarationFragments;
    }

    int memSize() {
        return super.memSize() + 16;
    }

    int treeSize() {
        return this.memSize() + (this.modifiers == null ? 0 : this.modifiers.listSize()) + (this.baseType == null ? 0 : this.getType().treeSize()) + this.variableDeclarationFragments.listSize();
    }
}

