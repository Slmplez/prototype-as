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
import org.eclipse.jdt.core.dom.AnnotationTypeDeclaration;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.ITypeBinding;
import org.eclipse.jdt.core.dom.Statement;
import org.eclipse.jdt.core.dom.TypeDeclaration;

public class TypeDeclarationStatement
extends Statement {
    public static final ChildPropertyDescriptor TYPE_DECLARATION_PROPERTY;
    public static final ChildPropertyDescriptor DECLARATION_PROPERTY;
    private static final List PROPERTY_DESCRIPTORS_2_0;
    private static final List PROPERTY_DESCRIPTORS_3_0;
    private AbstractTypeDeclaration typeDecl = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        Class<?> clazz3 = class$0;
        if (clazz3 == null) {
            try {
                clazz3 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TypeDeclarationStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz2 = class$1) == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.jdt.core.dom.TypeDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        TYPE_DECLARATION_PROPERTY = new ChildPropertyDescriptor(clazz3, "typeDeclaration", clazz2, true, true);
        Class<?> clazz4 = class$0;
        if (clazz4 == null) {
            try {
                clazz4 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TypeDeclarationStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$2) == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.jdt.core.dom.AbstractTypeDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        DECLARATION_PROPERTY = new ChildPropertyDescriptor(clazz4, "declaration", clazz, true, true);
        ArrayList propertyList = new ArrayList(2);
        Class<?> clazz5 = class$0;
        if (clazz5 == null) {
            try {
                clazz5 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TypeDeclarationStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        TypeDeclarationStatement.createPropertyList(clazz5, propertyList);
        TypeDeclarationStatement.addProperty(TYPE_DECLARATION_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS_2_0 = TypeDeclarationStatement.reapPropertyList(propertyList);
        propertyList = new ArrayList(2);
        Class<?> clazz6 = class$0;
        if (clazz6 == null) {
            try {
                clazz6 = class$0 = Class.forName("org.eclipse.jdt.core.dom.TypeDeclarationStatement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        TypeDeclarationStatement.createPropertyList(clazz6, propertyList);
        TypeDeclarationStatement.addProperty(DECLARATION_PROPERTY, propertyList);
        PROPERTY_DESCRIPTORS_3_0 = TypeDeclarationStatement.reapPropertyList(propertyList);
    }

    public static List propertyDescriptors(int apiLevel) {
        if (apiLevel == 2) {
            return PROPERTY_DESCRIPTORS_2_0;
        }
        return PROPERTY_DESCRIPTORS_3_0;
    }

    private ChildPropertyDescriptor typeDeclProperty() {
        if (this.getAST().apiLevel() == 2) {
            return TYPE_DECLARATION_PROPERTY;
        }
        return DECLARATION_PROPERTY;
    }

    TypeDeclarationStatement(AST ast) {
        super(ast);
    }

    final List internalStructuralPropertiesForType(int apiLevel) {
        return TypeDeclarationStatement.propertyDescriptors(apiLevel);
    }

    final ASTNode internalGetSetChildProperty(ChildPropertyDescriptor property, boolean get, ASTNode child) {
        if (property == TYPE_DECLARATION_PROPERTY) {
            if (get) {
                return this.getTypeDeclaration();
            }
            this.setTypeDeclaration((TypeDeclaration)child);
            return null;
        }
        if (property == DECLARATION_PROPERTY) {
            if (get) {
                return this.getDeclaration();
            }
            this.setDeclaration((AbstractTypeDeclaration)child);
            return null;
        }
        return super.internalGetSetChildProperty(property, get, child);
    }

    final int getNodeType0() {
        return 56;
    }

    ASTNode clone0(AST target) {
        TypeDeclarationStatement result = new TypeDeclarationStatement(target);
        result.setSourceRange(this.getStartPosition(), this.getLength());
        result.copyLeadingComment(this);
        result.setDeclaration((AbstractTypeDeclaration)this.getDeclaration().clone(target));
        return result;
    }

    final boolean subtreeMatch0(ASTMatcher matcher, Object other) {
        return matcher.match(this, other);
    }

    void accept0(ASTVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChild(visitor, this.getDeclaration());
        }
        visitor.endVisit(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public AbstractTypeDeclaration getDeclaration() {
        if (this.typeDecl == null) {
            TypeDeclarationStatement typeDeclarationStatement = this;
            synchronized (typeDeclarationStatement) {
                if (this.typeDecl == null) {
                    this.preLazyInit();
                    this.typeDecl = new TypeDeclaration(this.ast);
                    this.postLazyInit(this.typeDecl, this.typeDeclProperty());
                }
            }
        }
        return this.typeDecl;
    }

    public void setDeclaration(AbstractTypeDeclaration decl) {
        if (decl == null) {
            throw new IllegalArgumentException();
        }
        AbstractTypeDeclaration oldChild = this.typeDecl;
        ChildPropertyDescriptor typeDeclProperty = this.typeDeclProperty();
        this.preReplaceChild(oldChild, decl, typeDeclProperty);
        this.typeDecl = decl;
        this.postReplaceChild(oldChild, decl, typeDeclProperty);
    }

    public TypeDeclaration getTypeDeclaration() {
        return this.internalGetTypeDeclaration();
    }

    final TypeDeclaration internalGetTypeDeclaration() {
        this.supportedOnlyIn2();
        return (TypeDeclaration)this.getDeclaration();
    }

    public void setTypeDeclaration(TypeDeclaration decl) {
        this.internalSetTypeDeclaration(decl);
    }

    final void internalSetTypeDeclaration(TypeDeclaration decl) {
        this.supportedOnlyIn2();
        this.setDeclaration(decl);
    }

    public ITypeBinding resolveBinding() {
        AbstractTypeDeclaration d = this.getDeclaration();
        if (d instanceof TypeDeclaration) {
            return ((TypeDeclaration)d).resolveBinding();
        }
        if (d instanceof AnnotationTypeDeclaration) {
            return ((AnnotationTypeDeclaration)d).resolveBinding();
        }
        return null;
    }

    int memSize() {
        return super.memSize() + 4;
    }

    int treeSize() {
        return this.memSize() + (this.typeDecl == null ? 0 : this.getDeclaration().treeSize());
    }
}

