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

public class AnnotationTypeDeclaration
extends AbstractTypeDeclaration {
    public static final ChildPropertyDescriptor JAVADOC_PROPERTY;
    public static final ChildListPropertyDescriptor MODIFIERS2_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    public static final ChildListPropertyDescriptor BODY_DECLARATIONS_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jdt.core.dom.AnnotationTypeDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        JAVADOC_PROPERTY = AnnotationTypeDeclaration.internalJavadocPropertyFactory(clazz);
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.jdt.core.dom.AnnotationTypeDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        MODIFIERS2_PROPERTY = AnnotationTypeDeclaration.internalModifiers2PropertyFactory(clazz2);
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.AnnotationTypeDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NAME_PROPERTY = AnnotationTypeDeclaration.internalNamePropertyFactory(clazz3);
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.AnnotationTypeDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        BODY_DECLARATIONS_PROPERTY = AnnotationTypeDeclaration.internalBodyDeclarationPropertyFactory(clazz4);
        ArrayList properyList = new ArrayList(5);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.AnnotationTypeDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        AnnotationTypeDeclaration.createPropertyList(clazz5, properyList);
        AnnotationTypeDeclaration.addProperty(JAVADOC_PROPERTY, properyList);
        AnnotationTypeDeclaration.addProperty(MODIFIERS2_PROPERTY, properyList);
        AnnotationTypeDeclaration.addProperty(NAME_PROPERTY, properyList);
        AnnotationTypeDeclaration.addProperty(BODY_DECLARATIONS_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS = AnnotationTypeDeclaration.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    AnnotationTypeDeclaration(AST ast) {
        super(ast);
        this.unsupportedIn2();
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return AnnotationTypeDeclaration.propertyDescriptors(apiLevel);
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
        return 81;
    }

    ASTNode clone0(AST target) {
        AnnotationTypeDeclaration result = new AnnotationTypeDeclaration(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setJavadoc((Javadoc)ASTNode.copySubtree(target, this.getJavadoc()));
        result.modifiers().addAll(ASTNode.copySubtrees(target, this.modifiers()));
        result.setName((SimpleName)this.getName().clone(target));
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
            this.acceptChildren(visitor, this.bodyDeclarations);
        }
        visitor.endVisit(this);
    }

    ITypeBinding internalResolveBinding() {
        return this.ast.getBindingResolver().resolveType(this);
    }

    int memSize() {
        return super.memSize();
    }

    int treeSize() {
        return this.memSize() + (this.optionalDocComment == null ? 0 : this.getJavadoc().treeSize()) + this.modifiers.listSize() + (this.typeName == null ? 0 : this.getName().treeSize()) + this.bodyDeclarations.listSize();
    }
}

