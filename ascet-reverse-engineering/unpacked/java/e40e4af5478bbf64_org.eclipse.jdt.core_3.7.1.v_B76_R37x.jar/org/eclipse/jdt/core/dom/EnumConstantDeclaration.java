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
import org.eclipse.jdt.core.dom.BodyDeclaration;
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.IMethodBinding;
import org.eclipse.jdt.core.dom.IVariableBinding;
import org.eclipse.jdt.core.dom.Javadoc;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;

public class EnumConstantDeclaration
extends BodyDeclaration {
    public static final ChildPropertyDescriptor JAVADOC_PROPERTY;
    public static final ChildListPropertyDescriptor MODIFIERS2_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    public static final ChildListPropertyDescriptor ARGUMENTS_PROPERTY;
    public static final ChildPropertyDescriptor ANONYMOUS_CLASS_DECLARATION_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private SimpleName constantName = null;
    private ASTNode.NodeList arguments = new ASTNode.NodeList(ARGUMENTS_PROPERTY);
    private AnonymousClassDeclaration optionalAnonymousClassDeclaration = null;
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
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.EnumConstantDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        JAVADOC_PROPERTY = EnumConstantDeclaration.internalJavadocPropertyFactory(clazz4);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.EnumConstantDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        MODIFIERS2_PROPERTY = EnumConstantDeclaration.internalModifiers2PropertyFactory(clazz5);
        Class<?> clazz6 = class$0;
        if (clazz6 == null) {
            try {
                clazz6 = class$0 = Class.forName("org.eclipse.jdt.core.dom.EnumConstantDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz3 = class$1) == null) {
            try {
                clazz3 = class$1 = Class.forName("org.eclipse.jdt.core.dom.SimpleName");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NAME_PROPERTY = new ChildPropertyDescriptor(clazz6, "name", clazz3, true, false);
        Class<?> clazz7 = class$0;
        if (clazz7 == null) {
            try {
                clazz7 = class$0 = Class.forName("org.eclipse.jdt.core.dom.EnumConstantDeclaration");
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
        ARGUMENTS_PROPERTY = new ChildListPropertyDescriptor(clazz7, "arguments", clazz2, false);
        Class<?> clazz8 = class$0;
        if (clazz8 == null) {
            try {
                clazz8 = class$0 = Class.forName("org.eclipse.jdt.core.dom.EnumConstantDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$3) == null) {
            try {
                clazz = class$3 = Class.forName("org.eclipse.jdt.core.dom.AnonymousClassDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ANONYMOUS_CLASS_DECLARATION_PROPERTY = new ChildPropertyDescriptor(clazz8, "anonymousClassDeclaration", clazz, false, true);
        ArrayList properyList = new ArrayList(6);
        Class<?> clazz9 = class$0;
        if (clazz9 == null) {
            try {
                clazz9 = class$0 = Class.forName("org.eclipse.jdt.core.dom.EnumConstantDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        EnumConstantDeclaration.createPropertyList(clazz9, properyList);
        EnumConstantDeclaration.addProperty(JAVADOC_PROPERTY, properyList);
        EnumConstantDeclaration.addProperty(MODIFIERS2_PROPERTY, properyList);
        EnumConstantDeclaration.addProperty(NAME_PROPERTY, properyList);
        EnumConstantDeclaration.addProperty(ARGUMENTS_PROPERTY, properyList);
        EnumConstantDeclaration.addProperty(ANONYMOUS_CLASS_DECLARATION_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS = EnumConstantDeclaration.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    EnumConstantDeclaration(AST ast) {
        super(ast);
        this.unsupportedIn2();
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return EnumConstantDeclaration.propertyDescriptors(apiLevel);
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
        if (property == MODIFIERS2_PROPERTY) {
            return this.modifiers();
        }
        if (property == ARGUMENTS_PROPERTY) {
            return this.arguments();
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

    final int getNodeType0() {
        return 72;
    }

    ASTNode clone0(AST target) {
        EnumConstantDeclaration result = new EnumConstantDeclaration(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setJavadoc((Javadoc)ASTNode.copySubtree(target, this.getJavadoc()));
        result.modifiers().addAll(ASTNode.copySubtrees(target, this.modifiers()));
        result.setName((SimpleName)this.getName().clone(target));
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
            this.acceptChild(visitor, this.getJavadoc());
            this.acceptChildren(visitor, this.modifiers);
            this.acceptChild(visitor, this.getName());
            this.acceptChildren(visitor, this.arguments);
            this.acceptChild(visitor, this.getAnonymousClassDeclaration());
        }
        visitor.endVisit(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public SimpleName getName() {
        if (this.constantName == null) {
            EnumConstantDeclaration enumConstantDeclaration = this;
            synchronized (enumConstantDeclaration) {
                if (this.constantName == null) {
                    this.preLazyInit();
                    this.constantName = new SimpleName(this.ast);
                    this.postLazyInit(this.constantName, NAME_PROPERTY);
                }
            }
        }
        return this.constantName;
    }

    public void setName(SimpleName constantName) {
        if (constantName == null) {
            throw new IllegalArgumentException();
        }
        SimpleName oldChild = this.constantName;
        this.preReplaceChild(oldChild, constantName, NAME_PROPERTY);
        this.constantName = constantName;
        this.postReplaceChild(oldChild, constantName, NAME_PROPERTY);
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

    public IVariableBinding resolveVariable() {
        return this.ast.getBindingResolver().resolveVariable(this);
    }

    int memSize() {
        return super.memSize() + 12;
    }

    int treeSize() {
        return this.memSize() + (this.optionalDocComment == null ? 0 : this.getJavadoc().treeSize()) + this.modifiers.listSize() + (this.constantName == null ? 0 : this.getName().treeSize()) + this.arguments.listSize() + (this.optionalAnonymousClassDeclaration == null ? 0 : this.getAnonymousClassDeclaration().treeSize());
    }
}

