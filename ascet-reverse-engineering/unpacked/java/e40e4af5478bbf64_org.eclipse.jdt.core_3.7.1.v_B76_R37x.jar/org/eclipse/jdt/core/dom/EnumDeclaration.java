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
import org.eclipse.jdt.core.dom.AbstractTypeDeclaration;
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.ITypeBinding;
import org.eclipse.jdt.core.dom.Javadoc;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;

public class EnumDeclaration
extends AbstractTypeDeclaration {
    public static final ChildPropertyDescriptor JAVADOC_PROPERTY;
    public static final ChildListPropertyDescriptor MODIFIERS2_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    public static final ChildListPropertyDescriptor SUPER_INTERFACE_TYPES_PROPERTY;
    public static final ChildListPropertyDescriptor ENUM_CONSTANTS_PROPERTY;
    public static final ChildListPropertyDescriptor BODY_DECLARATIONS_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private ASTNode.NodeList superInterfaceTypes = new ASTNode.NodeList(SUPER_INTERFACE_TYPES_PROPERTY);
    private ASTNode.NodeList enumConstants = new ASTNode.NodeList(ENUM_CONSTANTS_PROPERTY);
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.EnumDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        JAVADOC_PROPERTY = EnumDeclaration.internalJavadocPropertyFactory(clazz3);
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.EnumDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        MODIFIERS2_PROPERTY = EnumDeclaration.internalModifiers2PropertyFactory(clazz4);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.EnumDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NAME_PROPERTY = EnumDeclaration.internalNamePropertyFactory(clazz5);
        Class<?> clazz6 = class$0;
        if (clazz6 == null) {
            try {
                clazz6 = class$0 = Class.forName("org.eclipse.jdt.core.dom.EnumDeclaration");
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
        SUPER_INTERFACE_TYPES_PROPERTY = new ChildListPropertyDescriptor(clazz6, "superInterfaceTypes", clazz2, false);
        Class<?> clazz7 = class$0;
        if (clazz7 == null) {
            try {
                clazz7 = class$0 = Class.forName("org.eclipse.jdt.core.dom.EnumDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$2) == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.jdt.core.dom.EnumConstantDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ENUM_CONSTANTS_PROPERTY = new ChildListPropertyDescriptor(clazz7, "enumConstants", clazz, true);
        Class<?> clazz8 = class$0;
        if (clazz8 == null) {
            try {
                clazz8 = class$0 = Class.forName("org.eclipse.jdt.core.dom.EnumDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        BODY_DECLARATIONS_PROPERTY = EnumDeclaration.internalBodyDeclarationPropertyFactory(clazz8);
        ArrayList properyList = new ArrayList(6);
        Class<?> clazz9 = class$0;
        if (clazz9 == null) {
            try {
                clazz9 = class$0 = Class.forName("org.eclipse.jdt.core.dom.EnumDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        EnumDeclaration.createPropertyList(clazz9, properyList);
        EnumDeclaration.addProperty(JAVADOC_PROPERTY, properyList);
        EnumDeclaration.addProperty(MODIFIERS2_PROPERTY, properyList);
        EnumDeclaration.addProperty(NAME_PROPERTY, properyList);
        EnumDeclaration.addProperty(SUPER_INTERFACE_TYPES_PROPERTY, properyList);
        EnumDeclaration.addProperty(ENUM_CONSTANTS_PROPERTY, properyList);
        EnumDeclaration.addProperty(BODY_DECLARATIONS_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS = EnumDeclaration.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    EnumDeclaration(AST ast) {
        super(ast);
        this.unsupportedIn2();
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return EnumDeclaration.propertyDescriptors(apiLevel);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == JAVADOC_PROPERTY) {
            if (get) {
                return this.getJavadoc();
            }
            this.setJavadoc((Javadoc)child);
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
        if (property == MODIFIERS2_PROPERTY) {
            return this.modifiers();
        }
        if (property == SUPER_INTERFACE_TYPES_PROPERTY) {
            return this.superInterfaceTypes();
        }
        if (property == ENUM_CONSTANTS_PROPERTY) {
            return this.enumConstants();
        }
        if (property == BODY_DECLARATIONS_PROPERTY) {
            return this.bodyDeclarations();
        }
        return super.internalGetChildListProperty(property);
    }

    final ChildPropertyDescriptor internalJavadocProperty() {
        return JAVADOC_PROPERTY;
    }

    final ChildListPropertyDescriptor internalModifiers2Property() {
        return MODIFIERS2_PROPERTY;
    }

    final SimplePropertyDescriptor internalModifiersProperty() {
        return null;
    }

    final ChildPropertyDescriptor internalNameProperty() {
        return NAME_PROPERTY;
    }

    final ChildListPropertyDescriptor internalBodyDeclarationsProperty() {
        return BODY_DECLARATIONS_PROPERTY;
    }

    final int getNodeType0() {
        return 71;
    }

    ASTNode clone0(AST target) {
        EnumDeclaration result = new EnumDeclaration(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setJavadoc((Javadoc)ASTNode.copySubtree(target, this.getJavadoc()));
        result.modifiers().addAll(ASTNode.copySubtrees(target, this.modifiers()));
        result.setName((SimpleName)this.getName().clone(target));
        result.superInterfaceTypes().addAll(ASTNode.copySubtrees(target, this.superInterfaceTypes()));
        result.enumConstants().addAll(ASTNode.copySubtrees(target, this.enumConstants()));
        result.bodyDeclarations().addAll(ASTNode.copySubtrees(target, this.bodyDeclarations()));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getJavadoc());
            this.acceptChildren(visitor, this.modifiers);
            this.acceptChild(visitor, this.getName());
            this.acceptChildren(visitor, this.superInterfaceTypes);
            this.acceptChildren(visitor, this.enumConstants);
            this.acceptChildren(visitor, this.bodyDeclarations);
        }
        visitor.endVisit(this);
    }

    public List superInterfaceTypes() {
        return this.superInterfaceTypes;
    }

    public List enumConstants() {
        return this.enumConstants;
    }

    ITypeBinding internalResolveBinding() {
        return this.ast.getBindingResolver().resolveType(this);
    }

    int memSize() {
        return super.memSize() + 8;
    }

    int treeSize() {
        return this.memSize() + (this.optionalDocComment == null ? 0 : this.getJavadoc().treeSize()) + this.modifiers.listSize() + (this.typeName == null ? 0 : this.getName().treeSize()) + this.superInterfaceTypes.listSize() + this.enumConstants.listSize() + this.bodyDeclarations.listSize();
    }
}

