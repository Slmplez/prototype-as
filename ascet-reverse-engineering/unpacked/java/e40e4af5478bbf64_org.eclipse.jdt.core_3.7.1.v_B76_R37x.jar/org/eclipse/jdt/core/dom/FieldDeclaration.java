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
import org.eclipse.jdt.core.dom.BodyDeclaration;
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.Javadoc;
import org.eclipse.jdt.core.dom.PrimitiveType;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;
import org.eclipse.jdt.core.dom.Type;

public class FieldDeclaration
extends BodyDeclaration {
    public static final ChildPropertyDescriptor JAVADOC_PROPERTY;
    public static final SimplePropertyDescriptor MODIFIERS_PROPERTY;
    public static final ChildListPropertyDescriptor MODIFIERS2_PROPERTY;
    public static final ChildPropertyDescriptor TYPE_PROPERTY;
    public static final ChildListPropertyDescriptor FRAGMENTS_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    private Type baseType = null;
    private ASTNode.NodeList variableDeclarationFragments = new ASTNode.NodeList(FRAGMENTS_PROPERTY);
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.FieldDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        JAVADOC_PROPERTY = FieldDeclaration.internalJavadocPropertyFactory(clazz3);
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.FieldDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        MODIFIERS_PROPERTY = FieldDeclaration.internalModifiersPropertyFactory(clazz4);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.FieldDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        MODIFIERS2_PROPERTY = FieldDeclaration.internalModifiers2PropertyFactory(clazz5);
        Class<?> clazz6 = class$0;
        if (clazz6 == null) {
            try {
                clazz6 = class$0 = Class.forName("org.eclipse.jdt.core.dom.FieldDeclaration");
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
        TYPE_PROPERTY = new ChildPropertyDescriptor(clazz6, "type", clazz2, true, false);
        Class<?> clazz7 = class$0;
        if (clazz7 == null) {
            try {
                clazz7 = class$0 = Class.forName("org.eclipse.jdt.core.dom.FieldDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$2) == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.jdt.core.dom.VariableDeclarationFragment");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        FRAGMENTS_PROPERTY = new ChildListPropertyDescriptor(clazz7, "fragments", clazz, true);
        ArrayList properyList = new ArrayList(5);
        Class<?> clazz8 = class$0;
        if (clazz8 == null) {
            try {
                clazz8 = class$0 = Class.forName("org.eclipse.jdt.core.dom.FieldDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        FieldDeclaration.createPropertyList(clazz8, properyList);
        FieldDeclaration.addProperty(JAVADOC_PROPERTY, properyList);
        FieldDeclaration.addProperty(MODIFIERS_PROPERTY, properyList);
        FieldDeclaration.addProperty(TYPE_PROPERTY, properyList);
        FieldDeclaration.addProperty(FRAGMENTS_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS_2_0 = FieldDeclaration.reapPropertyList(properyList);
        properyList = new ArrayList(5);
        Class<?> clazz9 = class$0;
        if (clazz9 == null) {
            try {
                clazz9 = class$0 = Class.forName("org.eclipse.jdt.core.dom.FieldDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        FieldDeclaration.createPropertyList(clazz9, properyList);
        FieldDeclaration.addProperty(JAVADOC_PROPERTY, properyList);
        FieldDeclaration.addProperty(MODIFIERS2_PROPERTY, properyList);
        FieldDeclaration.addProperty(TYPE_PROPERTY, properyList);
        FieldDeclaration.addProperty(FRAGMENTS_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS_3_0 = FieldDeclaration.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        if (apiLevel == 2) {
            return PROPERTY_DESCRIPTORS_2_0;
        }
        return PROPERTY_DESCRIPTORS_3_0;
    }

    FieldDeclaration(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return FieldDeclaration.propertyDescriptors(apiLevel);
    }

    final int internalGetSetIntProperty(SimplePropertyDescriptor property, boolean get, int value) {
        if (property == MODIFIERS_PROPERTY) {
            if (get) {
                return this.getModifiers();
            }
            this.internalSetModifiers(value);
            return 0;
        }
        return super.internalGetSetIntProperty(property, get, value);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == JAVADOC_PROPERTY) {
            if (get) {
                return this.getJavadoc();
            }
            this.setJavadoc((Javadoc)child);
            return null;
        }
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

    final ChildPropertyDescriptor internalJavadocProperty() {
        return JAVADOC_PROPERTY;
    }

    final SimplePropertyDescriptor internalModifiersProperty() {
        return MODIFIERS_PROPERTY;
    }

    final ChildListPropertyDescriptor internalModifiers2Property() {
        return MODIFIERS2_PROPERTY;
    }

    final int getNodeType0() {
        return 23;
    }

    ASTNode clone0(AST target) {
        FieldDeclaration result = new FieldDeclaration(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setJavadoc((Javadoc)ASTNode.copySubtree(target, this.getJavadoc()));
        if (this.ast.apiLevel == 2) {
            result.internalSetModifiers(this.getModifiers());
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
            this.acceptChild(visitor, this.getJavadoc());
            if (this.ast.apiLevel >= 3) {
                this.acceptChildren(visitor, this.modifiers);
            }
            this.acceptChild(visitor, this.getType());
            this.acceptChildren(visitor, this.variableDeclarationFragments);
        }
        visitor.endVisit(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Type getType() {
        if (this.baseType == null) {
            FieldDeclaration fieldDeclaration = this;
            synchronized (fieldDeclaration) {
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
        return super.memSize() + 8;
    }

    int treeSize() {
        return this.memSize() + (this.optionalDocComment == null ? 0 : this.getJavadoc().treeSize()) + (this.modifiers == null ? 0 : this.modifiers.listSize()) + (this.baseType == null ? 0 : this.getType().treeSize()) + this.variableDeclarationFragments.listSize();
    }
}

