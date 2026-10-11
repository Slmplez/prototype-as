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
import org.eclipse.jdt.core.dom.AnonymousClassDeclaration;
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.IMethodBinding;
import org.eclipse.jdt.core.dom.Name;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SimpleType;
import org.eclipse.jdt.core.dom.Type;

public class ClassInstanceCreation
extends Expression {
    public static final ChildListPropertyDescriptor TYPE_ARGUMENTS_PROPERTY;
    public static final ChildPropertyDescriptor EXPRESSION_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    public static final ChildPropertyDescriptor TYPE_PROPERTY;
    public static final ChildListPropertyDescriptor ARGUMENTS_PROPERTY;
    public static final ChildPropertyDescriptor ANONYMOUS_CLASS_DECLARATION_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    private Expression optionalExpression = null;
    private ASTNode.NodeList typeArguments = null;
    private Name typeName = null;
    private Type type = null;
    private ASTNode.NodeList arguments = new ASTNode.NodeList(ARGUMENTS_PROPERTY);
    private AnonymousClassDeclaration optionalAnonymousClassDeclaration = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3;
        Class<?> clazz4;
        Class<?> clazz5;
        Class<?> clazz6;
        Class<?> clazz7 = class$0;
        if (clazz7 == null) {
            try {
                clazz7 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ClassInstanceCreation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz6 = class$1) == null) {
            try {
                clazz6 = class$1 = Class.forName("org.eclipse.jdt.core.dom.Type");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        TYPE_ARGUMENTS_PROPERTY = new ChildListPropertyDescriptor(clazz7, "typeArguments", clazz6, false);
        Class<?> clazz8 = class$0;
        if (clazz8 == null) {
            try {
                clazz8 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ClassInstanceCreation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz5 = class$2) == null) {
            try {
                clazz5 = class$2 = Class.forName("org.eclipse.jdt.core.dom.Expression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        EXPRESSION_PROPERTY = new ChildPropertyDescriptor(clazz8, "expression", clazz5, false, true);
        Class<?> clazz9 = class$0;
        if (clazz9 == null) {
            try {
                clazz9 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ClassInstanceCreation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz4 = class$3) == null) {
            try {
                clazz4 = class$3 = Class.forName("org.eclipse.jdt.core.dom.Name");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NAME_PROPERTY = new ChildPropertyDescriptor(clazz9, "name", clazz4, true, false);
        Class<?> clazz10 = class$0;
        if (clazz10 == null) {
            try {
                clazz10 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ClassInstanceCreation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz3 = class$1) == null) {
            try {
                clazz3 = class$1 = Class.forName("org.eclipse.jdt.core.dom.Type");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        TYPE_PROPERTY = new ChildPropertyDescriptor(clazz10, "type", clazz3, true, false);
        Class<?> clazz11 = class$0;
        if (clazz11 == null) {
            try {
                clazz11 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ClassInstanceCreation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz2 = class$2) == null) {
            try {
                clazz2 = class$2 = Class.forName("org.eclipse.jdt.core.dom.Expression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ARGUMENTS_PROPERTY = new ChildListPropertyDescriptor(clazz11, "arguments", clazz2, true);
        Class<?> clazz12 = class$0;
        if (clazz12 == null) {
            try {
                clazz12 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ClassInstanceCreation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$4) == null) {
            try {
                clazz = class$4 = Class.forName("org.eclipse.jdt.core.dom.AnonymousClassDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ANONYMOUS_CLASS_DECLARATION_PROPERTY = new ChildPropertyDescriptor(clazz12, "anonymousClassDeclaration", clazz, false, true);
        ArrayList properyList = new ArrayList(5);
        Class<?> clazz13 = class$0;
        if (clazz13 == null) {
            try {
                clazz13 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ClassInstanceCreation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ClassInstanceCreation.createPropertyList(clazz13, properyList);
        ClassInstanceCreation.addProperty(EXPRESSION_PROPERTY, properyList);
        ClassInstanceCreation.addProperty(NAME_PROPERTY, properyList);
        ClassInstanceCreation.addProperty(ARGUMENTS_PROPERTY, properyList);
        ClassInstanceCreation.addProperty(ANONYMOUS_CLASS_DECLARATION_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS_2_0 = ClassInstanceCreation.reapPropertyList(properyList);
        properyList = new ArrayList(6);
        Class<?> clazz14 = class$0;
        if (clazz14 == null) {
            try {
                clazz14 = class$0 = Class.forName("org.eclipse.jdt.core.dom.ClassInstanceCreation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ClassInstanceCreation.createPropertyList(clazz14, properyList);
        ClassInstanceCreation.addProperty(EXPRESSION_PROPERTY, properyList);
        ClassInstanceCreation.addProperty(TYPE_ARGUMENTS_PROPERTY, properyList);
        ClassInstanceCreation.addProperty(TYPE_PROPERTY, properyList);
        ClassInstanceCreation.addProperty(ARGUMENTS_PROPERTY, properyList);
        ClassInstanceCreation.addProperty(ANONYMOUS_CLASS_DECLARATION_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS_3_0 = ClassInstanceCreation.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        if (apiLevel == 2) {
            return PROPERTY_DESCRIPTORS_2_0;
        }
        return PROPERTY_DESCRIPTORS_3_0;
    }

    ClassInstanceCreation(AST ast) {
        super(ast);
        if (ast.apiLevel >= 3) {
            this.typeArguments = new ASTNode.NodeList(TYPE_ARGUMENTS_PROPERTY);
        }
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return ClassInstanceCreation.propertyDescriptors(apiLevel);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == EXPRESSION_PROPERTY) {
            if (get) {
                return this.getExpression();
            }
            this.setExpression((Expression)child);
            return null;
        }
        if (property == NAME_PROPERTY) {
            if (get) {
                return this.getName();
            }
            this.setName((Name)child);
            return null;
        }
        if (property == TYPE_PROPERTY) {
            if (get) {
                return this.getType();
            }
            this.setType((Type)child);
            return null;
        }
        if (property == ANONYMOUS_CLASS_DECLARATION_PROPERTY) {
            if (get) {
                return this.getAnonymousClassDeclaration();
            }
            this.setAnonymousClassDeclaration((AnonymousClassDeclaration)child);
            return null;
        }
        return super.internalGetSetChildProperty(property, get, child);
    }

    final List internalGetChildListProperty(ChildListPropertyDescriptor property) {
        if (property == ARGUMENTS_PROPERTY) {
            return this.arguments();
        }
        if (property == TYPE_ARGUMENTS_PROPERTY) {
            return this.typeArguments();
        }
        return super.internalGetChildListProperty(property);
    }

    final int getNodeType0() {
        return 14;
    }

    ASTNode clone0(AST target) {
        ClassInstanceCreation result = new ClassInstanceCreation(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setExpression((Expression)ASTNode.copySubtree(target, this.getExpression()));
        if (this.ast.apiLevel == 2) {
            result.setName((Name)this.getName().clone(target));
        }
        if (this.ast.apiLevel >= 3) {
            result.typeArguments().addAll(ASTNode.copySubtrees(target, this.typeArguments()));
            result.setType((Type)this.getType().clone(target));
        }
        result.arguments().addAll(ASTNode.copySubtrees(target, this.arguments()));
        result.setAnonymousClassDeclaration((AnonymousClassDeclaration)ASTNode.copySubtree(target, this.getAnonymousClassDeclaration()));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getExpression());
            if (this.ast.apiLevel == 2) {
                this.acceptChild(visitor, this.getName());
            }
            if (this.ast.apiLevel >= 3) {
                this.acceptChildren(visitor, this.typeArguments);
                this.acceptChild(visitor, this.getType());
            }
            this.acceptChildren(visitor, this.arguments);
            this.acceptChild(visitor, this.getAnonymousClassDeclaration());
        }
        visitor.endVisit(this);
    }

    public Expression getExpression() {
        return this.optionalExpression;
    }

    public void setExpression(Expression expression) {
        Expression oldChild = this.optionalExpression;
        this.preReplaceChild(oldChild, expression, EXPRESSION_PROPERTY);
        this.optionalExpression = expression;
        this.postReplaceChild(oldChild, expression, EXPRESSION_PROPERTY);
    }

    public List typeArguments() {
        if (this.typeArguments == null) {
            this.unsupportedIn2();
        }
        return this.typeArguments;
    }

    public Name getName() {
        return this.internalGetName();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    Name internalGetName() {
        this.supportedOnlyIn2();
        if (this.typeName == null) {
            ClassInstanceCreation classInstanceCreation = this;
            synchronized (classInstanceCreation) {
                if (this.typeName == null) {
                    this.preLazyInit();
                    this.typeName = new SimpleName(this.ast);
                    this.postLazyInit(this.typeName, NAME_PROPERTY);
                }
            }
        }
        return this.typeName;
    }

    public void setName(Name name) {
        this.internalSetName(name);
    }

    void internalSetName(Name name) {
        this.supportedOnlyIn2();
        if (name == null) {
            throw new IllegalArgumentException();
        }
        Name oldChild = this.typeName;
        this.preReplaceChild(oldChild, name, NAME_PROPERTY);
        this.typeName = name;
        this.postReplaceChild(oldChild, name, NAME_PROPERTY);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Type getType() {
        this.unsupportedIn2();
        if (this.type == null) {
            ClassInstanceCreation classInstanceCreation = this;
            synchronized (classInstanceCreation) {
                if (this.type == null) {
                    this.preLazyInit();
                    this.type = new SimpleType(this.ast);
                    this.postLazyInit(this.type, TYPE_PROPERTY);
                }
            }
        }
        return this.type;
    }

    public void setType(Type type) {
        this.unsupportedIn2();
        if (type == null) {
            throw new IllegalArgumentException();
        }
        Type oldChild = this.type;
        this.preReplaceChild(oldChild, type, TYPE_PROPERTY);
        this.type = type;
        this.postReplaceChild(oldChild, type, TYPE_PROPERTY);
    }

    public List arguments() {
        return this.arguments;
    }

    public AnonymousClassDeclaration getAnonymousClassDeclaration() {
        return this.optionalAnonymousClassDeclaration;
    }

    public void setAnonymousClassDeclaration(AnonymousClassDeclaration decl) {
        AnonymousClassDeclaration oldChild = this.optionalAnonymousClassDeclaration;
        this.preReplaceChild(oldChild, decl, ANONYMOUS_CLASS_DECLARATION_PROPERTY);
        this.optionalAnonymousClassDeclaration = decl;
        this.postReplaceChild(oldChild, decl, ANONYMOUS_CLASS_DECLARATION_PROPERTY);
    }

    public IMethodBinding resolveConstructorBinding() {
        return this.ast.getBindingResolver().resolveConstructor(this);
    }

    public boolean isResolvedTypeInferredFromExpectedType() {
        return this.ast.getBindingResolver().isResolvedTypeInferredFromExpectedType(this);
    }

    int memSize() {
        return 64;
    }

    int treeSize() {
        return this.memSize() + (this.typeName == null ? 0 : this.getName().treeSize()) + (this.type == null ? 0 : this.getType().treeSize()) + (this.optionalExpression == null ? 0 : this.getExpression().treeSize()) + (this.typeArguments == null ? 0 : this.typeArguments.listSize()) + (this.arguments == null ? 0 : this.arguments.listSize()) + (this.optionalAnonymousClassDeclaration == null ? 0 : this.getAnonymousClassDeclaration().treeSize());
    }
}

