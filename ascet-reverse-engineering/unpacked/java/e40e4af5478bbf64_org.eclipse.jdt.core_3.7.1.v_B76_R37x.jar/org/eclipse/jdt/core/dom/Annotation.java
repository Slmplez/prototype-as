/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.IAnnotationBinding;
import org.eclipse.jdt.core.dom.IExtendedModifier;
import org.eclipse.jdt.core.dom.MarkerAnnotation;
import org.eclipse.jdt.core.dom.Name;
import org.eclipse.jdt.core.dom.NormalAnnotation;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SingleMemberAnnotation;

public abstract class Annotation
extends Expression
implements IExtendedModifier {
    Name typeName = null;
    static /* synthetic */ Class class$0;

    abstract ChildPropertyDescriptor internalTypeNameProperty();

    public final ChildPropertyDescriptor getTypeNameProperty() {
        return this.internalTypeNameProperty();
    }

    static final ChildPropertyDescriptor internalTypeNamePropertyFactory(Class nodeClass) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jdt.core.dom.Name");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return new ChildPropertyDescriptor(nodeClass, "typeName", clazz, true, false);
    }

    Annotation(AST ast) {
        super(ast);
    }

    public boolean isModifier() {
        return false;
    }

    public boolean isAnnotation() {
        return true;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Name getTypeName() {
        if (this.typeName == null) {
            Annotation annotation = this;
            synchronized (annotation) {
                if (this.typeName == null) {
                    this.preLazyInit();
                    this.typeName = new SimpleName(this.ast);
                    this.postLazyInit(this.typeName, this.internalTypeNameProperty());
                }
            }
        }
        return this.typeName;
    }

    public void setTypeName(Name typeName) {
        if (typeName == null) {
            throw new IllegalArgumentException();
        }
        ChildPropertyDescriptor p = this.internalTypeNameProperty();
        Name oldChild = this.typeName;
        this.preReplaceChild(oldChild, typeName, p);
        this.typeName = typeName;
        this.postReplaceChild(oldChild, typeName, p);
    }

    public boolean isNormalAnnotation() {
        return this instanceof NormalAnnotation;
    }

    public boolean isMarkerAnnotation() {
        return this instanceof MarkerAnnotation;
    }

    public boolean isSingleMemberAnnotation() {
        return this instanceof SingleMemberAnnotation;
    }

    int memSize() {
        return 44;
    }

    public IAnnotationBinding resolveAnnotationBinding() {
        return this.ast.getBindingResolver().resolveAnnotation(this);
    }
}

