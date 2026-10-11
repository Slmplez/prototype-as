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
import org.eclipse.jdt.core.dom.Block;
import org.eclipse.jdt.core.dom.BodyDeclaration;
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.IMethodBinding;
import org.eclipse.jdt.core.dom.Javadoc;
import org.eclipse.jdt.core.dom.PrimitiveType;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;
import org.eclipse.jdt.core.dom.SingleVariableDeclaration;
import org.eclipse.jdt.core.dom.Type;

public class MethodDeclaration
extends BodyDeclaration {
    public static final ChildPropertyDescriptor JAVADOC_PROPERTY;
    public static final SimplePropertyDescriptor MODIFIERS_PROPERTY;
    public static final ChildListPropertyDescriptor MODIFIERS2_PROPERTY;
    public static final SimplePropertyDescriptor CONSTRUCTOR_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    public static final ChildPropertyDescriptor RETURN_TYPE_PROPERTY;
    public static final ChildPropertyDescriptor RETURN_TYPE2_PROPERTY;
    public static final SimplePropertyDescriptor EXTRA_DIMENSIONS_PROPERTY;
    public static final ChildListPropertyDescriptor TYPE_PARAMETERS_PROPERTY;
    public static final ChildListPropertyDescriptor PARAMETERS_PROPERTY;
    public static final ChildListPropertyDescriptor THROWN_EXCEPTIONS_PROPERTY;
    public static final ChildPropertyDescriptor BODY_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    private boolean isConstructor = false;
    private SimpleName methodName = null;
    private ASTNode.NodeList parameters = new ASTNode.NodeList(PARAMETERS_PROPERTY);
    private Type returnType = null;
    private boolean returnType2Initialized = false;
    private ASTNode.NodeList typeParameters = null;
    private int extraArrayDimensions = 0;
    private ASTNode.NodeList thrownExceptions = new ASTNode.NodeList(THROWN_EXCEPTIONS_PROPERTY);
    private Block optionalBody = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;
    static /* synthetic */ Class class$6;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3;
        Class<?> clazz4;
        Class<?> clazz5;
        Class<?> clazz6;
        Class<?> clazz7;
        Class<?> clazz8 = class$0;
        if (clazz8 == null) {
            try {
                clazz8 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MethodDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        JAVADOC_PROPERTY = MethodDeclaration.internalJavadocPropertyFactory(clazz8);
        Class<?> clazz9 = class$0;
        if (clazz9 == null) {
            try {
                clazz9 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MethodDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        MODIFIERS_PROPERTY = MethodDeclaration.internalModifiersPropertyFactory(clazz9);
        Class<?> clazz10 = class$0;
        if (clazz10 == null) {
            try {
                clazz10 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MethodDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        MODIFIERS2_PROPERTY = MethodDeclaration.internalModifiers2PropertyFactory(clazz10);
        Class<?> clazz11 = class$0;
        if (clazz11 == null) {
            try {
                clazz11 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MethodDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        CONSTRUCTOR_PROPERTY = new SimplePropertyDescriptor(clazz11, "constructor", Boolean.TYPE, true);
        Class<?> clazz12 = class$0;
        if (clazz12 == null) {
            try {
                clazz12 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MethodDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz7 = class$1) == null) {
            try {
                clazz7 = class$1 = Class.forName("org.eclipse.jdt.core.dom.SimpleName");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NAME_PROPERTY = new ChildPropertyDescriptor(clazz12, "name", clazz7, true, false);
        Class<?> clazz13 = class$0;
        if (clazz13 == null) {
            try {
                clazz13 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MethodDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz6 = class$2) == null) {
            try {
                clazz6 = class$2 = Class.forName("org.eclipse.jdt.core.dom.Type");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        RETURN_TYPE_PROPERTY = new ChildPropertyDescriptor(clazz13, "returnType", clazz6, true, false);
        Class<?> clazz14 = class$0;
        if (clazz14 == null) {
            try {
                clazz14 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MethodDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz5 = class$2) == null) {
            try {
                clazz5 = class$2 = Class.forName("org.eclipse.jdt.core.dom.Type");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        RETURN_TYPE2_PROPERTY = new ChildPropertyDescriptor(clazz14, "returnType2", clazz5, false, false);
        Class<?> clazz15 = class$0;
        if (clazz15 == null) {
            try {
                clazz15 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MethodDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        EXTRA_DIMENSIONS_PROPERTY = new SimplePropertyDescriptor(clazz15, "extraDimensions", Integer.TYPE, true);
        Class<?> clazz16 = class$0;
        if (clazz16 == null) {
            try {
                clazz16 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MethodDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz4 = class$3) == null) {
            try {
                clazz4 = class$3 = Class.forName("org.eclipse.jdt.core.dom.TypeParameter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        TYPE_PARAMETERS_PROPERTY = new ChildListPropertyDescriptor(clazz16, "typeParameters", clazz4, false);
        Class<?> clazz17 = class$0;
        if (clazz17 == null) {
            try {
                clazz17 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MethodDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz3 = class$4) == null) {
            try {
                clazz3 = class$4 = Class.forName("org.eclipse.jdt.core.dom.SingleVariableDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        PARAMETERS_PROPERTY = new ChildListPropertyDescriptor(clazz17, "parameters", clazz3, true);
        Class<?> clazz18 = class$0;
        if (clazz18 == null) {
            try {
                clazz18 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MethodDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz2 = class$5) == null) {
            try {
                clazz2 = class$5 = Class.forName("org.eclipse.jdt.core.dom.Name");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        THROWN_EXCEPTIONS_PROPERTY = new ChildListPropertyDescriptor(clazz18, "thrownExceptions", clazz2, false);
        Class<?> clazz19 = class$0;
        if (clazz19 == null) {
            try {
                clazz19 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MethodDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$6) == null) {
            try {
                clazz = class$6 = Class.forName("org.eclipse.jdt.core.dom.Block");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        BODY_PROPERTY = new ChildPropertyDescriptor(clazz19, "body", clazz, false, true);
        ArrayList propertyList = new ArrayList(10);
        Class<?> clazz20 = class$0;
        if (clazz20 == null) {
            try {
                clazz20 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MethodDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        MethodDeclaration.createPropertyList(clazz20, propertyList);
        MethodDeclaration.addProperty(JAVADOC_PROPERTY, propertyList);
        MethodDeclaration.addProperty(MODIFIERS_PROPERTY, propertyList);
        MethodDeclaration.addProperty(CONSTRUCTOR_PROPERTY, propertyList);
        MethodDeclaration.addProperty(RETURN_TYPE_PROPERTY, propertyList);
        MethodDeclaration.addProperty(NAME_PROPERTY, propertyList);
        MethodDeclaration.addProperty(PARAMETERS_PROPERTY, propertyList);
        MethodDeclaration.addProperty(EXTRA_DIMENSIONS_PROPERTY, propertyList);
        MethodDeclaration.addProperty(THROWN_EXCEPTIONS_PROPERTY, propertyList);
        MethodDeclaration.addProperty(BODY_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS_2_0 = MethodDeclaration.reapPropertyList(propertyList);
        propertyList = new ArrayList(11);
        Class<?> clazz21 = class$0;
        if (clazz21 == null) {
            try {
                clazz21 = class$0 = Class.forName("org.eclipse.jdt.core.dom.MethodDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        MethodDeclaration.createPropertyList(clazz21, propertyList);
        MethodDeclaration.addProperty(JAVADOC_PROPERTY, propertyList);
        MethodDeclaration.addProperty(MODIFIERS2_PROPERTY, propertyList);
        MethodDeclaration.addProperty(CONSTRUCTOR_PROPERTY, propertyList);
        MethodDeclaration.addProperty(TYPE_PARAMETERS_PROPERTY, propertyList);
        MethodDeclaration.addProperty(RETURN_TYPE2_PROPERTY, propertyList);
        MethodDeclaration.addProperty(NAME_PROPERTY, propertyList);
        MethodDeclaration.addProperty(PARAMETERS_PROPERTY, propertyList);
        MethodDeclaration.addProperty(EXTRA_DIMENSIONS_PROPERTY, propertyList);
        MethodDeclaration.addProperty(THROWN_EXCEPTIONS_PROPERTY, propertyList);
        MethodDeclaration.addProperty(BODY_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS_3_0 = MethodDeclaration.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        if (apiLevel == 2) {
            return PROPERTY_DESCRIPTORS_2_0;
        }
        return PROPERTY_DESCRIPTORS_3_0;
    }

    MethodDeclaration(AST ast) {
        super(ast);
        if (ast.apiLevel >= 3) {
            this.typeParameters = new ASTNode.NodeList(TYPE_PARAMETERS_PROPERTY);
        }
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return MethodDeclaration.propertyDescriptors(apiLevel);
    }

    final int internalGetSetIntProperty(SimplePropertyDescriptor property, boolean get, int value) {
        if (property == MODIFIERS_PROPERTY) {
            if (get) {
                return this.getModifiers();
            }
            this.internalSetModifiers(value);
            return 0;
        }
        if (property == EXTRA_DIMENSIONS_PROPERTY) {
            if (get) {
                return this.getExtraDimensions();
            }
            this.setExtraDimensions(value);
            return 0;
        }
        return super.internalGetSetIntProperty(property, get, value);
    }

    final boolean internalGetSetBooleanProperty(SimplePropertyDescriptor property, boolean get, boolean value) {
        if (property == CONSTRUCTOR_PROPERTY) {
            if (get) {
                return this.isConstructor();
            }
            this.setConstructor(value);
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
        if (property == RETURN_TYPE_PROPERTY) {
            if (get) {
                return this.getReturnType();
            }
            this.setReturnType((Type)child);
            return null;
        }
        if (property == RETURN_TYPE2_PROPERTY) {
            if (get) {
                return this.getReturnType2();
            }
            this.setReturnType2((Type)child);
            return null;
        }
        if (property == BODY_PROPERTY) {
            if (get) {
                return this.getBody();
            }
            this.setBody((Block)child);
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
        if (property == PARAMETERS_PROPERTY) {
            return this.parameters();
        }
        if (property == THROWN_EXCEPTIONS_PROPERTY) {
            return this.thrownExceptions();
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

    final int getNodeType0() {
        return 31;
    }

    ASTNode clone0(AST target) {
        MethodDeclaration result = new MethodDeclaration(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setJavadoc((Javadoc)ASTNode.copySubtree(target, this.getJavadoc()));
        if (this.ast.apiLevel == 2) {
            result.internalSetModifiers(this.getModifiers());
            result.setReturnType((Type)ASTNode.copySubtree(target, this.getReturnType()));
        }
        if (this.ast.apiLevel >= 3) {
            result.modifiers().addAll(ASTNode.copySubtrees(target, this.modifiers()));
            result.typeParameters().addAll(ASTNode.copySubtrees(target, this.typeParameters()));
            result.setReturnType2((Type)ASTNode.copySubtree(target, this.getReturnType2()));
        }
        result.setConstructor(this.isConstructor());
        result.setExtraDimensions(this.getExtraDimensions());
        result.setName((SimpleName)this.getName().clone(target));
        result.parameters().addAll(ASTNode.copySubtrees(target, this.parameters()));
        result.thrownExceptions().addAll(ASTNode.copySubtrees(target, this.thrownExceptions()));
        result.setBody((Block)ASTNode.copySubtree(target, this.getBody()));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getJavadoc());
            if (this.ast.apiLevel == 2) {
                this.acceptChild(visitor, this.getReturnType());
            } else {
                this.acceptChildren(visitor, this.modifiers);
                this.acceptChildren(visitor, this.typeParameters);
                this.acceptChild(visitor, this.getReturnType2());
            }
            this.acceptChild(visitor, this.getName());
            this.acceptChildren(visitor, this.parameters);
            this.acceptChildren(visitor, this.thrownExceptions);
            this.acceptChild(visitor, this.getBody());
        }
        visitor.endVisit(this);
    }

    public boolean isConstructor() {
        return this.isConstructor;
    }

    public void setConstructor(boolean isConstructor) {
        this.preValueChange(CONSTRUCTOR_PROPERTY);
        this.isConstructor = isConstructor;
        this.postValueChange(CONSTRUCTOR_PROPERTY);
    }

    public List typeParameters() {
        if (this.typeParameters == null) {
            this.unsupportedIn2();
        }
        return this.typeParameters;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public SimpleName getName() {
        if (this.methodName == null) {
            MethodDeclaration methodDeclaration = this;
            synchronized (methodDeclaration) {
                if (this.methodName == null) {
                    this.preLazyInit();
                    this.methodName = new SimpleName(this.ast);
                    this.postLazyInit(this.methodName, NAME_PROPERTY);
                }
            }
        }
        return this.methodName;
    }

    public void setName(SimpleName methodName) {
        if (methodName == null) {
            throw new IllegalArgumentException();
        }
        SimpleName oldChild = this.methodName;
        this.preReplaceChild(oldChild, methodName, NAME_PROPERTY);
        this.methodName = methodName;
        this.postReplaceChild(oldChild, methodName, NAME_PROPERTY);
    }

    public List parameters() {
        return this.parameters;
    }

    public boolean isVarargs() {
        if (this.modifiers == null) {
            this.unsupportedIn2();
        }
        if (this.parameters().isEmpty()) {
            return false;
        }
        SingleVariableDeclaration v = (SingleVariableDeclaration)this.parameters().get(this.parameters().size() - 1);
        return v.isVarargs();
    }

    public List thrownExceptions() {
        return this.thrownExceptions;
    }

    public Type getReturnType() {
        return this.internalGetReturnType();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    final Type internalGetReturnType() {
        this.supportedOnlyIn2();
        if (this.returnType == null) {
            MethodDeclaration methodDeclaration = this;
            synchronized (methodDeclaration) {
                if (this.returnType == null) {
                    this.preLazyInit();
                    this.returnType = this.ast.newPrimitiveType(PrimitiveType.VOID);
                    this.postLazyInit(this.returnType, RETURN_TYPE_PROPERTY);
                }
            }
        }
        return this.returnType;
    }

    public void setReturnType(Type type) {
        this.internalSetReturnType(type);
    }

    void internalSetReturnType(Type type) {
        this.supportedOnlyIn2();
        if (type == null) {
            throw new IllegalArgumentException();
        }
        Type oldChild = this.returnType;
        this.preReplaceChild(oldChild, type, RETURN_TYPE_PROPERTY);
        this.returnType = type;
        this.postReplaceChild(oldChild, type, RETURN_TYPE_PROPERTY);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Type getReturnType2() {
        this.unsupportedIn2();
        if (this.returnType == null && !this.returnType2Initialized) {
            MethodDeclaration methodDeclaration = this;
            synchronized (methodDeclaration) {
                if (this.returnType == null && !this.returnType2Initialized) {
                    this.preLazyInit();
                    this.returnType = this.ast.newPrimitiveType(PrimitiveType.VOID);
                    this.returnType2Initialized = true;
                    this.postLazyInit(this.returnType, RETURN_TYPE2_PROPERTY);
                }
            }
        }
        return this.returnType;
    }

    public void setReturnType2(Type type) {
        this.unsupportedIn2();
        this.returnType2Initialized = true;
        Type oldChild = this.returnType;
        this.preReplaceChild(oldChild, type, RETURN_TYPE2_PROPERTY);
        this.returnType = type;
        this.postReplaceChild(oldChild, type, RETURN_TYPE2_PROPERTY);
    }

    public int getExtraDimensions() {
        return this.extraArrayDimensions;
    }

    public void setExtraDimensions(int dimensions) {
        if (dimensions < 0) {
            throw new IllegalArgumentException();
        }
        this.preValueChange(EXTRA_DIMENSIONS_PROPERTY);
        this.extraArrayDimensions = dimensions;
        this.postValueChange(EXTRA_DIMENSIONS_PROPERTY);
    }

    public Block getBody() {
        return this.optionalBody;
    }

    public void setBody(Block body) {
        Block oldChild = this.optionalBody;
        this.preReplaceChild(oldChild, body, BODY_PROPERTY);
        this.optionalBody = body;
        this.postReplaceChild(oldChild, body, BODY_PROPERTY);
    }

    public IMethodBinding resolveBinding() {
        return this.ast.getBindingResolver().resolveMethod(this);
    }

    int memSize() {
        return super.memSize() + 36;
    }

    int treeSize() {
        return this.memSize() + (this.optionalDocComment == null ? 0 : this.getJavadoc().treeSize()) + (this.modifiers == null ? 0 : this.modifiers.listSize()) + (this.typeParameters == null ? 0 : this.typeParameters.listSize()) + (this.methodName == null ? 0 : this.getName().treeSize()) + (this.returnType == null ? 0 : this.returnType.treeSize()) + this.parameters.listSize() + this.thrownExceptions.listSize() + (this.optionalBody == null ? 0 : this.getBody().treeSize());
    }
}

