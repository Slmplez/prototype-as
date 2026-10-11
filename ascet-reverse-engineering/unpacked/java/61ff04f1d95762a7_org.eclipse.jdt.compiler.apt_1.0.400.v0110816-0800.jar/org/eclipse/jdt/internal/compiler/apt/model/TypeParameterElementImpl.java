/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding
 *  org.eclipse.jdt.internal.compiler.lookup.Binding
 *  org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment
 *  org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding
 *  org.eclipse.jdt.internal.compiler.lookup.TypeBinding
 *  org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding
 */
package org.eclipse.jdt.internal.compiler.apt.model;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.lang.model.element.Element;
import javax.lang.model.element.ElementKind;
import javax.lang.model.element.ElementVisitor;
import javax.lang.model.element.PackageElement;
import javax.lang.model.element.TypeParameterElement;
import javax.lang.model.type.TypeMirror;
import org.eclipse.jdt.internal.compiler.apt.dispatch.BaseProcessingEnvImpl;
import org.eclipse.jdt.internal.compiler.apt.model.ElementImpl;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;

public class TypeParameterElementImpl
extends ElementImpl
implements TypeParameterElement {
    private final Element _declaringElement;
    private List<? extends TypeMirror> _bounds = null;

    TypeParameterElementImpl(BaseProcessingEnvImpl env, TypeVariableBinding binding, Element declaringElement) {
        super(env, (Binding)binding);
        this._declaringElement = declaringElement;
    }

    TypeParameterElementImpl(BaseProcessingEnvImpl env, TypeVariableBinding binding) {
        super(env, (Binding)binding);
        this._declaringElement = this._env.getFactory().newElement(binding.declaringElement);
    }

    @Override
    public List<? extends TypeMirror> getBounds() {
        if (this._bounds == null) {
            this._bounds = this.calculateBounds();
        }
        return this._bounds;
    }

    private List<? extends TypeMirror> calculateBounds() {
        TypeVariableBinding typeVariableBinding = (TypeVariableBinding)this._binding;
        ReferenceBinding varSuperclass = typeVariableBinding.superclass();
        TypeBinding firstClassOrArrayBound = typeVariableBinding.firstBound;
        int boundsLength = 0;
        boolean isFirstBoundATypeVariable = false;
        if (firstClassOrArrayBound != null) {
            if (firstClassOrArrayBound.isTypeVariable()) {
                isFirstBoundATypeVariable = true;
            }
            if (firstClassOrArrayBound == varSuperclass) {
                ++boundsLength;
                if (firstClassOrArrayBound.isTypeVariable()) {
                    isFirstBoundATypeVariable = true;
                }
            } else if (firstClassOrArrayBound.isArrayType()) {
                ++boundsLength;
            } else {
                firstClassOrArrayBound = null;
            }
        }
        ReferenceBinding[] superinterfaces = typeVariableBinding.superInterfaces();
        int superinterfacesLength = 0;
        if (superinterfaces != null) {
            superinterfacesLength = superinterfaces.length;
            boundsLength += superinterfacesLength;
        }
        ArrayList<TypeMirror> typeBounds = new ArrayList<TypeMirror>(boundsLength);
        if (boundsLength != 0) {
            if (firstClassOrArrayBound != null) {
                TypeMirror typeBinding = this._env.getFactory().newTypeMirror((Binding)firstClassOrArrayBound);
                if (typeBinding == null) {
                    return Collections.emptyList();
                }
                typeBounds.add(typeBinding);
            }
            if (superinterfaces != null && !isFirstBoundATypeVariable) {
                int i = 0;
                while (i < superinterfacesLength) {
                    TypeMirror typeBinding = this._env.getFactory().newTypeMirror((Binding)superinterfaces[i]);
                    if (typeBinding == null) {
                        return Collections.emptyList();
                    }
                    typeBounds.add(typeBinding);
                    ++i;
                }
            }
        } else {
            typeBounds.add(this._env.getFactory().newTypeMirror((Binding)this._env.getLookupEnvironment().getType(LookupEnvironment.JAVA_LANG_OBJECT)));
        }
        return Collections.unmodifiableList(typeBounds);
    }

    @Override
    public Element getGenericElement() {
        return this._declaringElement;
    }

    @Override
    public <R, P> R accept(ElementVisitor<R, P> v, P p) {
        return v.visitTypeParameter(this, p);
    }

    @Override
    protected AnnotationBinding[] getAnnotationBindings() {
        return null;
    }

    @Override
    public List<? extends Element> getEnclosedElements() {
        return Collections.emptyList();
    }

    @Override
    public Element getEnclosingElement() {
        return this.getGenericElement();
    }

    @Override
    public ElementKind getKind() {
        return ElementKind.TYPE_PARAMETER;
    }

    @Override
    PackageElement getPackage() {
        return null;
    }

    @Override
    public String toString() {
        return new String(this._binding.readableName());
    }
}

