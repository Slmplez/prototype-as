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
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.IMethodBinding;
import org.eclipse.jdt.core.dom.Javadoc;
import org.eclipse.jdt.core.dom.PrimitiveType;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;
import org.eclipse.jdt.core.dom.Type;

public class AnnotationTypeMemberDeclaration
extends BodyDeclaration {
    public static final ChildPropertyDescriptor JAVADOC_PROPERTY;
    public static final ChildListPropertyDescriptor MODIFIERS2_PROPERTY;
    public static final ChildPropertyDescriptor NAME_PROPERTY;
    public static final ChildPropertyDescriptor TYPE_PROPERTY;
    public static final ChildPropertyDescriptor DEFAULT_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS;
    private SimpleName memberName = null;
    private Type memberType = null;
    private Expression optionalDefaultValue = null;
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
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.AnnotationTypeMemberDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        JAVADOC_PROPERTY = AnnotationTypeMemberDeclaration.internalJavadocPropertyFactory(clazz4);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.AnnotationTypeMemberDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        MODIFIERS2_PROPERTY = AnnotationTypeMemberDeclaration.internalModifiers2PropertyFactory(clazz5);
        Class<?> clazz6 = class$0;
        if (clazz6 == null) {
            try {
                clazz6 = class$0 = Class.forName("org.eclipse.jdt.core.dom.AnnotationTypeMemberDeclaration");
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
                clazz7 = class$0 = Class.forName("org.eclipse.jdt.core.dom.AnnotationTypeMemberDeclaration");
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
        TYPE_PROPERTY = new ChildPropertyDescriptor(clazz7, "type", clazz2, true, false);
        Class<?> clazz8 = class$0;
        if (clazz8 == null) {
            try {
                clazz8 = class$0 = Class.forName("org.eclipse.jdt.core.dom.AnnotationTypeMemberDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$3) == null) {
            try {
                clazz = class$3 = Class.forName("org.eclipse.jdt.core.dom.Expression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        DEFAULT_PROPERTY = new ChildPropertyDescriptor(clazz8, "default", clazz, false, true);
        ArrayList properyList = new ArrayList(6);
        Class<?> clazz9 = class$0;
        if (clazz9 == null) {
            try {
                clazz9 = class$0 = Class.forName("org.eclipse.jdt.core.dom.AnnotationTypeMemberDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        AnnotationTypeMemberDeclaration.createPropertyList(clazz9, properyList);
        AnnotationTypeMemberDeclaration.addProperty(JAVADOC_PROPERTY, properyList);
        AnnotationTypeMemberDeclaration.addProperty(MODIFIERS2_PROPERTY, properyList);
        AnnotationTypeMemberDeclaration.addProperty(NAME_PROPERTY, properyList);
        AnnotationTypeMemberDeclaration.addProperty(TYPE_PROPERTY, properyList);
        AnnotationTypeMemberDeclaration.addProperty(DEFAULT_PROPERTY, properyList);
        PROPERTY_DESCRIPTORS = AnnotationTypeMemberDeclaration.reapPropertyList(properyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        return PROPERTY_DESCRIPTORS;
    }

    AnnotationTypeMemberDeclaration(AST ast) {
        super(ast);
        this.unsupportedIn2();
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return AnnotationTypeMemberDeclaration.propertyDescriptors(apiLevel);
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
        if (property == NAME_PROPERTY) {
            if (get) {
                return this.getName();
            }
            this.setName((SimpleName)child);
            return null;
        }
        if (property == TYPE_PROPERTY) {
            if (get) {
                return this.getType();
            }
            this.setType((Type)child);
            return null;
        }
        if (property == DEFAULT_PROPERTY) {
            if (get) {
                return this.getDefault();
            }
            this.setDefault((Expression)child);
            return null;
        }
        return super.internalGetSetChildProperty(property, get, child);
    }

    final List internalGetChildListProperty(ChildListPropertyDescriptor property) {
        if (property == MODIFIERS2_PROPERTY) {
            return this.modifiers();
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
        return 82;
    }

    ASTNode clone0(AST target) {
        AnnotationTypeMemberDeclaration result = new AnnotationTypeMemberDeclaration(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.setJavadoc((Javadoc)ASTNode.copySubtree(target, this.getJavadoc()));
        result.modifiers().addAll(ASTNode.copySubtrees(target, this.modifiers()));
        result.setType((Type)ASTNode.copySubtree(target, this.getType()));
        result.setName((SimpleName)this.getName().clone(target));
        result.setDefault((Expression)ASTNode.copySubtree(target, this.getDefault()));
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
            this.acceptChild(visitor, this.getType());
            this.acceptChild(visitor, this.getName());
            this.acceptChild(visitor, this.getDefault());
        }
        visitor.endVisit(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public SimpleName getName() {
        if (this.memberName == null) {
            AnnotationTypeMemberDeclaration annotationTypeMemberDeclaration = this;
            synchronized (annotationTypeMemberDeclaration) {
                if (this.memberName == null) {
                    this.preLazyInit();
                    this.memberName = new SimpleName(this.ast);
                    this.postLazyInit(this.memberName, NAME_PROPERTY);
                }
            }
        }
        return this.memberName;
    }

    public void setName(SimpleName memberName) {
        if (memberName == null) {
            throw new IllegalArgumentException();
        }
        SimpleName oldChild = this.memberName;
        this.preReplaceChild(oldChild, memberName, NAME_PROPERTY);
        this.memberName = memberName;
        this.postReplaceChild(oldChild, memberName, NAME_PROPERTY);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Type getType() {
        if (this.memberType == null) {
            AnnotationTypeMemberDeclaration annotationTypeMemberDeclaration = this;
            synchronized (annotationTypeMemberDeclaration) {
                if (this.memberType == null) {
                    this.preLazyInit();
                    this.memberType = this.ast.newPrimitiveType(PrimitiveType.INT);
                    this.postLazyInit(this.memberType, TYPE_PROPERTY);
                }
            }
        }
        return this.memberType;
    }

    public void setType(Type type) {
        if (type == null) {
            throw new IllegalArgumentException();
        }
        Type oldChild = this.memberType;
        this.preReplaceChild(oldChild, type, TYPE_PROPERTY);
        this.memberType = type;
        this.postReplaceChild(oldChild, type, TYPE_PROPERTY);
    }

    public Expression getDefault() {
        return this.optionalDefaultValue;
    }

    public void setDefault(Expression defaultValue) {
        Expression oldChild = this.optionalDefaultValue;
        this.preReplaceChild(oldChild, defaultValue, DEFAULT_PROPERTY);
        this.optionalDefaultValue = defaultValue;
        this.postReplaceChild(oldChild, defaultValue, DEFAULT_PROPERTY);
    }

    public IMethodBinding resolveBinding() {
        return this.ast.getBindingResolver().resolveMember(this);
    }

    int memSize() {
        return super.memSize() + 12;
    }

    int treeSize() {
        return this.memSize() + (this.optionalDocComment == null ? 0 : this.getJavadoc().treeSize()) + this.modifiers.listSize() + (this.memberName == null ? 0 : this.getName().treeSize()) + (this.memberType == null ? 0 : this.getType().treeSize()) + (this.optionalDefaultValue == null ? 0 : this.getDefault().treeSize());
    }
}

