/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTMatcher;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.AbstractTypeDeclaration;
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.FieldDeclaration;
import org.eclipse.jdt.core.dom.ITypeBinding;
import org.eclipse.jdt.core.dom.Javadoc;
import org.eclipse.jdt.core.dom.MethodDeclaration;
import org.eclipse.jdt.core.dom.Name;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;
import org.eclipse.jdt.core.dom.Type;

public class TypeDeclaration
extends AbstractTypeDeclaration {
    public static final ChildPropertyDescriptor JAVADOC_PROPERTY;
    public static final SimplePropertyDescriptor MODIFIERS_PROPERTY;
    public static final ChildListPropertyDescriptor MODIFIERS2_PROPERTY;
    public static final SimplePropertyDescriptor INTERFACE_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    public static final ChildPropertyDescriptor SUPERCLASS_PROPERTY;
    public static final ChildListPropertyDescriptor SUPER_INTERFACES_PROPERTY;
    public static final ChildPropertyDescriptor SUPERCLASS_TYPE_PROPERTY;
    public static final ChildListPropertyDescriptor SUPER_INTERFACE_TYPES_PROPERTY;
    public static final ChildListPropertyDescriptor TYPE_PARAMETERS_PROPERTY;
    public static final ChildListPropertyDescriptor BODY_DECLARATIONS_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    private boolean isInterface = false;
    private ASTNode.NodeList typeParameters = null;
    private Name optionalSuperclassName = null;
    private ASTNode.NodeList superInterfaceNames = null;
    private Type optionalSuperclassType = null;
    private ASTNode.NodeList superInterfaceTypes = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3;
        Class<?> clazz4;
        Class<?> clazz5;
        Class<?> clazz6 = class$0;
        if (clazz6 == null) {
            try {
                clazz6 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TypeDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        JAVADOC_PROPERTY = TypeDeclaration.internalJavadocPropertyFactory(clazz6);
        Class<?> clazz7 = class$0;
        if (clazz7 == null) {
            try {
                clazz7 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TypeDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        MODIFIERS_PROPERTY = TypeDeclaration.internalModifiersPropertyFactory(clazz7);
        Class<?> clazz8 = class$0;
        if (clazz8 == null) {
            try {
                clazz8 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TypeDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        MODIFIERS2_PROPERTY = TypeDeclaration.internalModifiers2PropertyFactory(clazz8);
        Class<?> clazz9 = class$0;
        if (clazz9 == null) {
            try {
                clazz9 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TypeDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        INTERFACE_PROPERTY = new SimplePropertyDescriptor(clazz9, "interface", Boolean.TYPE, true);
        Class<?> clazz10 = class$0;
        if (clazz10 == null) {
            try {
                clazz10 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TypeDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NAME_PROPERTY = TypeDeclaration.internalNamePropertyFactory(clazz10);
        Class<?> clazz11 = class$0;
        if (clazz11 == null) {
            try {
                clazz11 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TypeDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz5 = class$1) == null) {
            try {
                clazz5 = class$1 = Class.forName("org.eclipse.jdt.core.dom.Name");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        SUPERCLASS_PROPERTY = new ChildPropertyDescriptor(clazz11, "superclass", clazz5, false, false);
        Class<?> clazz12 = class$0;
        if (clazz12 == null) {
            try {
                clazz12 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TypeDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz4 = class$1) == null) {
            try {
                clazz4 = class$1 = Class.forName("org.eclipse.jdt.core.dom.Name");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        SUPER_INTERFACES_PROPERTY = new ChildListPropertyDescriptor(clazz12, "superInterfaces", clazz4, false);
        Class<?> clazz13 = class$0;
        if (clazz13 == null) {
            try {
                clazz13 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TypeDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz3 = class$2) == null) {
            try {
                clazz3 = class$2 = Class.forName("org.eclipse.jdt.core.dom.Type");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        SUPERCLASS_TYPE_PROPERTY = new ChildPropertyDescriptor(clazz13, "superclassType", clazz3, false, false);
        Class<?> clazz14 = class$0;
        if (clazz14 == null) {
            try {
                clazz14 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TypeDeclaration");
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
        SUPER_INTERFACE_TYPES_PROPERTY = new ChildListPropertyDescriptor(clazz14, "superInterfaceTypes", clazz2, false);
        Class<?> clazz15 = class$0;
        if (clazz15 == null) {
            try {
                clazz15 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TypeDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$3) == null) {
            try {
                clazz = class$3 = Class.forName("org.eclipse.jdt.core.dom.TypeParameter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        TYPE_PARAMETERS_PROPERTY = new ChildListPropertyDescriptor(clazz15, "typeParameters", clazz, false);
        Class<?> clazz16 = class$0;
        if (clazz16 == null) {
            try {
                clazz16 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TypeDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        BODY_DECLARATIONS_PROPERTY = TypeDeclaration.internalBodyDeclarationPropertyFactory(clazz16);
        ArrayList propertyList = new ArrayList(8);
        Class<?> clazz17 = class$0;
        if (clazz17 == null) {
            try {
                clazz17 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TypeDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        TypeDeclaration.createPropertyList(clazz17, propertyList);
        TypeDeclaration.addProperty(JAVADOC_PROPERTY, propertyList);
        TypeDeclaration.addProperty(MODIFIERS_PROPERTY, propertyList);
        TypeDeclaration.addProperty(INTERFACE_PROPERTY, propertyList);
        TypeDeclaration.addProperty(NAME_PROPERTY, propertyList);
        TypeDeclaration.addProperty(SUPERCLASS_PROPERTY, propertyList);
        TypeDeclaration.addProperty(SUPER_INTERFACES_PROPERTY, propertyList);
        TypeDeclaration.addProperty(BODY_DECLARATIONS_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS_2_0 = TypeDeclaration.reapPropertyList(propertyList);
        propertyList = new ArrayList(9);
        Class<?> clazz18 = class$0;
        if (clazz18 == null) {
            try {
                clazz18 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TypeDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        TypeDeclaration.createPropertyList(clazz18, propertyList);
        TypeDeclaration.addProperty(JAVADOC_PROPERTY, propertyList);
        TypeDeclaration.addProperty(MODIFIERS2_PROPERTY, propertyList);
        TypeDeclaration.addProperty(INTERFACE_PROPERTY, propertyList);
        TypeDeclaration.addProperty(NAME_PROPERTY, propertyList);
        TypeDeclaration.addProperty(TYPE_PARAMETERS_PROPERTY, propertyList);
        TypeDeclaration.addProperty(SUPERCLASS_TYPE_PROPERTY, propertyList);
        TypeDeclaration.addProperty(SUPER_INTERFACE_TYPES_PROPERTY, propertyList);
        TypeDeclaration.addProperty(BODY_DECLARATIONS_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS_3_0 = TypeDeclaration.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        if (apiLevel == 2) {
            return PROPERTY_DESCRIPTORS_2_0;
        }
        return PROPERTY_DESCRIPTORS_3_0;
    }

    TypeDeclaration(AST ast) {
        super(ast);
        if (ast.apiLevel == 2) {
            this.superInterfaceNames = new ASTNode.NodeList(SUPER_INTERFACES_PROPERTY);
        }
        if (ast.apiLevel >= 3) {
            this.typeParameters = new ASTNode.NodeList(TYPE_PARAMETERS_PROPERTY);
            this.superInterfaceTypes = new ASTNode.NodeList(SUPER_INTERFACE_TYPES_PROPERTY);
        }
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return TypeDeclaration.propertyDescriptors(apiLevel);
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

    final boolean internalGetSetBooleanProperty(SimplePropertyDescriptor property, boolean get, boolean value) {
        if (property == INTERFACE_PROPERTY) {
            if (get) {
                return this.isInterface();
            }
            this.setInterface(value);
            return false;
        }
        return super.internalGetSetBooleanProperty(property, get, value);
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
        if (property == SUPERCLASS_PROPERTY) {
            if (get) {
                return this.getSuperclass();
            }
            this.setSuperclass((Name)child);
            return null;
        }
        if (property == SUPERCLASS_TYPE_PROPERTY) {
            if (get) {
                return this.getSuperclassType();
            }
            this.setSuperclassType((Type)child);
            return null;
        }
        return super.internalGetSetChildProperty(property, get, child);
    }

    final List internalGetChildListProperty(ChildListPropertyDescriptor property) {
        if (property == MODIFIERS2_PROPERTY) {
            return this.modifiers();
        }
        if (property == TYPE_PARAMETERS_PROPERTY) {
            return this.typeParameters();
        }
        if (property == SUPER_INTERFACES_PROPERTY) {
            return this.superInterfaces();
        }
        if (property == SUPER_INTERFACE_TYPES_PROPERTY) {
            return this.superInterfaceTypes();
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
        return MODIFIERS_PROPERTY;
    }

    final ChildPropertyDescriptor internalNameProperty() {
        return NAME_PROPERTY;
    }

    final ChildListPropertyDescriptor internalBodyDeclarationsProperty() {
        return BODY_DECLARATIONS_PROPERTY;
    }

    final int getNodeType0() {
        return 55;
    }

    ASTNode clone0(AST target) {
        TypeDeclaration result = new TypeDeclaration(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setJavadoc((Javadoc)ASTNode.copySubtree(target, this.getJavadoc()));
        if (this.ast.apiLevel == 2) {
            result.internalSetModifiers(this.getModifiers());
            result.setSuperclass((Name)ASTNode.copySubtree(target, this.getSuperclass()));
            result.superInterfaces().addAll(ASTNode.copySubtrees(target, this.superInterfaces()));
        }
        result.setInterface(this.isInterface());
        result.setName((SimpleName)this.getName().clone(target));
        if (this.ast.apiLevel >= 3) {
            result.modifiers().addAll(ASTNode.copySubtrees(target, this.modifiers()));
            result.typeParameters().addAll(ASTNode.copySubtrees(target, this.typeParameters()));
            result.setSuperclassType((Type)ASTNode.copySubtree(target, this.getSuperclassType()));
            result.superInterfaceTypes().addAll(ASTNode.copySubtrees(target, this.superInterfaceTypes()));
        }
        result.bodyDeclarations().addAll(ASTNode.copySubtrees(target, this.bodyDeclarations()));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            if (this.ast.apiLevel == 2) {
                this.acceptChild(visitor, this.getJavadoc());
                this.acceptChild(visitor, this.getName());
                this.acceptChild(visitor, this.getSuperclass());
                this.acceptChildren(visitor, this.superInterfaceNames);
                this.acceptChildren(visitor, this.bodyDeclarations);
            }
            if (this.ast.apiLevel >= 3) {
                this.acceptChild(visitor, this.getJavadoc());
                this.acceptChildren(visitor, this.modifiers);
                this.acceptChild(visitor, this.getName());
                this.acceptChildren(visitor, this.typeParameters);
                this.acceptChild(visitor, this.getSuperclassType());
                this.acceptChildren(visitor, this.superInterfaceTypes);
                this.acceptChildren(visitor, this.bodyDeclarations);
            }
        }
        visitor.endVisit(this);
    }

    public boolean isInterface() {
        return this.isInterface;
    }

    public void setInterface(boolean isInterface) {
        this.preValueChange(INTERFACE_PROPERTY);
        this.isInterface = isInterface;
        this.postValueChange(INTERFACE_PROPERTY);
    }

    public List typeParameters() {
        if (this.typeParameters == null) {
            this.unsupportedIn2();
        }
        return this.typeParameters;
    }

    public Name getSuperclass() {
        return this.internalGetSuperclass();
    }

    final Name internalGetSuperclass() {
        this.supportedOnlyIn2();
        return this.optionalSuperclassName;
    }

    public Type getSuperclassType() {
        this.unsupportedIn2();
        return this.optionalSuperclassType;
    }

    public void setSuperclass(Name superclassName) {
        this.internalSetSuperclass(superclassName);
    }

    final void internalSetSuperclass(Name superclassName) {
        this.supportedOnlyIn2();
        Name oldChild = this.optionalSuperclassName;
        this.preReplaceChild(oldChild, superclassName, SUPERCLASS_PROPERTY);
        this.optionalSuperclassName = superclassName;
        this.postReplaceChild(oldChild, superclassName, SUPERCLASS_PROPERTY);
    }

    public void setSuperclassType(Type superclassType) {
        this.unsupportedIn2();
        Type oldChild = this.optionalSuperclassType;
        this.preReplaceChild(oldChild, superclassType, SUPERCLASS_TYPE_PROPERTY);
        this.optionalSuperclassType = superclassType;
        this.postReplaceChild(oldChild, superclassType, SUPERCLASS_TYPE_PROPERTY);
    }

    public List superInterfaces() {
        return this.internalSuperInterfaces();
    }

    final List internalSuperInterfaces() {
        if (this.superInterfaceNames == null) {
            this.supportedOnlyIn2();
        }
        return this.superInterfaceNames;
    }

    public List superInterfaceTypes() {
        if (this.superInterfaceTypes == null) {
            this.unsupportedIn2();
        }
        return this.superInterfaceTypes;
    }

    public FieldDeclaration[] getFields() {
        List bd = this.bodyDeclarations();
        int fieldCount = 0;
        ListIterator it = bd.listIterator();
        while (it.hasNext()) {
            if (!(it.next() instanceof FieldDeclaration)) continue;
            ++fieldCount;
        }
        FieldDeclaration[] fields = new FieldDeclaration[fieldCount];
        int next = 0;
        ListIterator it2 = bd.listIterator();
        while (it2.hasNext()) {
            Object decl = it2.next();
            if (!(decl instanceof FieldDeclaration)) continue;
            fields[next++] = (FieldDeclaration)decl;
        }
        return fields;
    }

    public MethodDeclaration[] getMethods() {
        List bd = this.bodyDeclarations();
        int methodCount = 0;
        ListIterator it = bd.listIterator();
        while (it.hasNext()) {
            if (!(it.next() instanceof MethodDeclaration)) continue;
            ++methodCount;
        }
        MethodDeclaration[] methods = new MethodDeclaration[methodCount];
        int next = 0;
        ListIterator it2 = bd.listIterator();
        while (it2.hasNext()) {
            Object decl = it2.next();
            if (!(decl instanceof MethodDeclaration)) continue;
            methods[next++] = (MethodDeclaration)decl;
        }
        return methods;
    }

    public TypeDeclaration[] getTypes() {
        List bd = this.bodyDeclarations();
        int typeCount = 0;
        ListIterator it = bd.listIterator();
        while (it.hasNext()) {
            if (!(it.next() instanceof TypeDeclaration)) continue;
            ++typeCount;
        }
        TypeDeclaration[] memberTypes = new TypeDeclaration[typeCount];
        int next = 0;
        ListIterator it2 = bd.listIterator();
        while (it2.hasNext()) {
            Object decl = it2.next();
            if (!(decl instanceof TypeDeclaration)) continue;
            memberTypes[next++] = (TypeDeclaration)decl;
        }
        return memberTypes;
    }

    ITypeBinding internalResolveBinding() {
        return this.ast.getBindingResolver().resolveType(this);
    }

    int memSize() {
        return super.memSize() + 24;
    }

    int treeSize() {
        return this.memSize() + (this.optionalDocComment == null ? 0 : this.getJavadoc().treeSize()) + (this.modifiers == null ? 0 : this.modifiers.listSize()) + (this.typeName == null ? 0 : this.getName().treeSize()) + (this.typeParameters == null ? 0 : this.typeParameters.listSize()) + (this.optionalSuperclassName == null ? 0 : this.getSuperclass().treeSize()) + (this.optionalSuperclassType == null ? 0 : this.getSuperclassType().treeSize()) + (this.superInterfaceNames == null ? 0 : this.superInterfaceNames.listSize()) + (this.superInterfaceTypes == null ? 0 : this.superInterfaceTypes.listSize()) + this.bodyDeclarations.listSize();
    }
}

