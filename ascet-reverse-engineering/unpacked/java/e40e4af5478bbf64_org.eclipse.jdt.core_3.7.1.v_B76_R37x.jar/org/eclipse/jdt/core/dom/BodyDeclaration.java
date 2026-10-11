/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import java.util.Iterator;
import java.util.List;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.Javadoc;
import org.eclipse.jdt.core.dom.Modifier;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;

public abstract class BodyDeclaration
extends ASTNode {
    Javadoc optionalDocComment = null;
    private int modifierFlags = 0;
    ASTNode.NodeList modifiers = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    abstract SimplePropertyDescriptor internalModifiersProperty();

    abstract ChildListPropertyDescriptor internalModifiers2Property();

    public final ChildListPropertyDescriptor getModifiersProperty() {
        return this.internalModifiers2Property();
    }

    abstract ChildPropertyDescriptor internalJavadocProperty();

    public final ChildPropertyDescriptor getJavadocProperty() {
        return this.internalJavadocProperty();
    }

    static final ChildPropertyDescriptor internalJavadocPropertyFactory(Class nodeClass) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jdt.core.dom.Javadoc");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return new ChildPropertyDescriptor(nodeClass, "javadoc", clazz, false, false);
    }

    static final SimplePropertyDescriptor internalModifiersPropertyFactory(Class nodeClass) {
        return new SimplePropertyDescriptor(nodeClass, "modifiers", Integer.TYPE, true);
    }

    static final ChildListPropertyDescriptor internalModifiers2PropertyFactory(Class nodeClass) {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.jdt.core.dom.IExtendedModifier");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return new ChildListPropertyDescriptor(nodeClass, "modifiers", clazz, true);
    }

    BodyDeclaration(AST ast) {
        super(ast);
        if (ast.apiLevel >= 3) {
            this.modifiers = new ASTNode.NodeList(this.internalModifiers2Property());
        }
    }

    public Javadoc getJavadoc() {
        return this.optionalDocComment;
    }

    public void setJavadoc(Javadoc docComment) {
        ChildPropertyDescriptor p = this.internalJavadocProperty();
        Javadoc oldChild = this.optionalDocComment;
        this.preReplaceChild(oldChild, docComment, p);
        this.optionalDocComment = docComment;
        this.postReplaceChild(oldChild, docComment, p);
    }

    public int getModifiers() {
        if (this.modifiers == null) {
            return this.modifierFlags;
        }
        int computedmodifierFlags = 0;
        Iterator it = this.modifiers().iterator();
        while (it.hasNext()) {
            Object x = it.next();
            if (!(x instanceof Modifier)) continue;
            computedmodifierFlags |= ((Modifier)x).getKeyword().toFlagValue();
        }
        return computedmodifierFlags;
    }

    public void setModifiers(int modifiers) {
        this.internalSetModifiers(modifiers);
    }

    final void internalSetModifiers(int pmodifiers) {
        if (this.modifiers != null) {
            this.supportedOnlyIn2();
        }
        SimplePropertyDescriptor p = this.internalModifiersProperty();
        this.preValueChange(p);
        this.modifierFlags = pmodifiers;
        this.postValueChange(p);
    }

    public List modifiers() {
        if (this.modifiers == null) {
            this.unsupportedIn2();
        }
        return this.modifiers;
    }

    int memSize() {
        return 52;
    }
}

