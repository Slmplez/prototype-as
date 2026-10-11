/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import java.util.List;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.AnonymousClassDeclaration;
import org.eclipse.jdt.core.dom.BodyDeclaration;
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.ITypeBinding;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.TypeDeclarationStatement;

public abstract class AbstractTypeDeclaration
extends BodyDeclaration {
    SimpleName typeName = null;
    ASTNode.NodeList bodyDeclarations = new ASTNode.NodeList(this.internalBodyDeclarationsProperty());
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    abstract ChildListPropertyDescriptor internalBodyDeclarationsProperty();

    public final ChildListPropertyDescriptor getBodyDeclarationsProperty() {
        return this.internalBodyDeclarationsProperty();
    }

    abstract ChildPropertyDescriptor internalNameProperty();

    public final ChildPropertyDescriptor getNameProperty() {
        return this.internalNameProperty();
    }

    static final ChildListPropertyDescriptor internalBodyDeclarationPropertyFactory(Class nodeClass) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jdt.core.dom.BodyDeclaration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return new ChildListPropertyDescriptor(nodeClass, "bodyDeclarations", clazz, true);
    }

    static final ChildPropertyDescriptor internalNamePropertyFactory(Class nodeClass) {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.jdt.core.dom.SimpleName");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return new ChildPropertyDescriptor(nodeClass, "name", clazz, true, false);
    }

    AbstractTypeDeclaration(AST ast) {
        super(ast);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public SimpleName getName() {
        if (this.typeName == null) {
            AbstractTypeDeclaration abstractTypeDeclaration = this;
            synchronized (abstractTypeDeclaration) {
                if (this.typeName == null) {
                    this.preLazyInit();
                    this.typeName = new SimpleName(this.ast);
                    this.postLazyInit(this.typeName, this.internalNameProperty());
                }
            }
        }
        return this.typeName;
    }

    public void setName(SimpleName typeName) {
        if (typeName == null) {
            throw new IllegalArgumentException();
        }
        ChildPropertyDescriptor p = this.internalNameProperty();
        SimpleName oldChild = this.typeName;
        this.preReplaceChild(oldChild, typeName, p);
        this.typeName = typeName;
        this.postReplaceChild(oldChild, typeName, p);
    }

    public List bodyDeclarations() {
        return this.bodyDeclarations;
    }

    public boolean isPackageMemberTypeDeclaration() {
        ASTNode parent = this.getParent();
        return parent instanceof CompilationUnit;
    }

    public boolean isMemberTypeDeclaration() {
        ASTNode parent = this.getParent();
        return parent instanceof AbstractTypeDeclaration || parent instanceof AnonymousClassDeclaration;
    }

    public boolean isLocalTypeDeclaration() {
        ASTNode parent = this.getParent();
        return parent instanceof TypeDeclarationStatement;
    }

    public final ITypeBinding resolveBinding() {
        return this.internalResolveBinding();
    }

    abstract ITypeBinding internalResolveBinding();

    int memSize() {
        return super.memSize() + 8;
    }
}

