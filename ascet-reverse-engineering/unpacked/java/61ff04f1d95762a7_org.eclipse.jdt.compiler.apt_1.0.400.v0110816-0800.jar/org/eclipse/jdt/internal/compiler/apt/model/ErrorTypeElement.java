/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.core.compiler.CharOperation
 *  org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding
 */
package org.eclipse.jdt.internal.compiler.apt.model;

import java.lang.annotation.Annotation;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import javax.lang.model.element.AnnotationMirror;
import javax.lang.model.element.Element;
import javax.lang.model.element.ElementKind;
import javax.lang.model.element.Modifier;
import javax.lang.model.element.Name;
import javax.lang.model.element.NestingKind;
import javax.lang.model.element.TypeParameterElement;
import javax.lang.model.type.TypeKind;
import javax.lang.model.type.TypeMirror;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.apt.dispatch.BaseProcessingEnvImpl;
import org.eclipse.jdt.internal.compiler.apt.model.NameImpl;
import org.eclipse.jdt.internal.compiler.apt.model.TypeElementImpl;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;

public class ErrorTypeElement
extends TypeElementImpl {
    ErrorTypeElement(BaseProcessingEnvImpl env, ReferenceBinding binding) {
        super(env, binding, null);
    }

    @Override
    public List<? extends TypeMirror> getInterfaces() {
        return Collections.emptyList();
    }

    @Override
    public NestingKind getNestingKind() {
        return NestingKind.TOP_LEVEL;
    }

    @Override
    public Name getQualifiedName() {
        char[] qName;
        ReferenceBinding binding = (ReferenceBinding)this._binding;
        if (binding.isMemberType()) {
            qName = CharOperation.concatWith((char[][])binding.enclosingType().compoundName, (char[])binding.sourceName, (char)'.');
            CharOperation.replace((char[])qName, (char)'$', (char)'.');
        } else {
            qName = CharOperation.concatWith((char[][])binding.compoundName, (char)'.');
        }
        return new NameImpl(qName);
    }

    @Override
    public TypeMirror getSuperclass() {
        return this._env.getFactory().getNoType(TypeKind.NONE);
    }

    @Override
    public List<? extends TypeParameterElement> getTypeParameters() {
        return Collections.emptyList();
    }

    @Override
    public TypeMirror asType() {
        return this._env.getFactory().getErrorType((ReferenceBinding)this._binding);
    }

    @Override
    public <A extends Annotation> A getAnnotation(Class<A> annotationType) {
        return null;
    }

    @Override
    public List<? extends AnnotationMirror> getAnnotationMirrors() {
        return Collections.emptyList();
    }

    @Override
    public List<? extends Element> getEnclosedElements() {
        return Collections.emptyList();
    }

    @Override
    public Element getEnclosingElement() {
        return this._env.getFactory().newPackageElement(this._env.getLookupEnvironment().defaultPackage);
    }

    @Override
    public ElementKind getKind() {
        return ElementKind.CLASS;
    }

    @Override
    public Set<Modifier> getModifiers() {
        return Collections.emptySet();
    }

    @Override
    public Name getSimpleName() {
        ReferenceBinding binding = (ReferenceBinding)this._binding;
        return new NameImpl(binding.sourceName());
    }
}

