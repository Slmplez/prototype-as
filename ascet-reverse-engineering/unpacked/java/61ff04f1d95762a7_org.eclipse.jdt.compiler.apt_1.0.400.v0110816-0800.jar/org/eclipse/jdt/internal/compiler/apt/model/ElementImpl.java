/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.core.compiler.CharOperation
 *  org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding
 *  org.eclipse.jdt.internal.compiler.lookup.Binding
 *  org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding
 */
package org.eclipse.jdt.internal.compiler.apt.model;

import java.lang.annotation.Annotation;
import java.lang.reflect.Proxy;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import javax.lang.model.element.AnnotationMirror;
import javax.lang.model.element.Element;
import javax.lang.model.element.Modifier;
import javax.lang.model.element.Name;
import javax.lang.model.element.PackageElement;
import javax.lang.model.type.TypeMirror;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.apt.dispatch.BaseProcessingEnvImpl;
import org.eclipse.jdt.internal.compiler.apt.model.AnnotationMirrorImpl;
import org.eclipse.jdt.internal.compiler.apt.model.IElementInfo;
import org.eclipse.jdt.internal.compiler.apt.model.NameImpl;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;

public abstract class ElementImpl
implements Element,
IElementInfo {
    public final BaseProcessingEnvImpl _env;
    public final Binding _binding;

    protected ElementImpl(BaseProcessingEnvImpl env, Binding binding) {
        this._env = env;
        this._binding = binding;
    }

    @Override
    public TypeMirror asType() {
        return this._env.getFactory().newTypeMirror(this._binding);
    }

    @Override
    public <A extends Annotation> A getAnnotation(Class<A> annotationClass) {
        AnnotationBinding[] annoInstances = this.getAnnotationBindings();
        if (annoInstances == null || annoInstances.length == 0 || annotationClass == null) {
            return null;
        }
        String annoTypeName = annotationClass.getName();
        if (annoTypeName == null) {
            return null;
        }
        annoTypeName = annoTypeName.replace('$', '.');
        AnnotationBinding[] annotationBindingArray = annoInstances;
        int n = annoInstances.length;
        int n2 = 0;
        while (n2 < n) {
            ReferenceBinding binding;
            AnnotationBinding annoInstance = annotationBindingArray[n2];
            if (annoInstance != null && (binding = annoInstance.getAnnotationType()) != null && binding.isAnnotationType()) {
                char[] qName;
                if (binding.isMemberType()) {
                    qName = CharOperation.concatWith((char[][])binding.enclosingType().compoundName, (char[])binding.sourceName, (char)'.');
                    CharOperation.replace((char[])qName, (char)'$', (char)'.');
                } else {
                    qName = CharOperation.concatWith((char[][])binding.compoundName, (char)'.');
                }
                if (annoTypeName.equals(new String(qName))) {
                    AnnotationMirrorImpl annoMirror = (AnnotationMirrorImpl)this._env.getFactory().newAnnotationMirror(annoInstance);
                    return (A)((Annotation)Proxy.newProxyInstance(annotationClass.getClassLoader(), new Class[]{annotationClass}, annoMirror));
                }
            }
            ++n2;
        }
        return null;
    }

    protected abstract AnnotationBinding[] getAnnotationBindings();

    @Override
    public List<? extends AnnotationMirror> getAnnotationMirrors() {
        return this._env.getFactory().getAnnotationMirrors(this.getAnnotationBindings());
    }

    @Override
    public Set<Modifier> getModifiers() {
        return Collections.emptySet();
    }

    @Override
    public Name getSimpleName() {
        return new NameImpl(this._binding.shortReadableName());
    }

    @Override
    public int hashCode() {
        return this._binding.hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (this.getClass() != obj.getClass()) {
            return false;
        }
        ElementImpl other = (ElementImpl)obj;
        return !(this._binding == null ? other._binding != null : this._binding != other._binding);
    }

    public String toString() {
        return this._binding.toString();
    }

    @Override
    public String getFileName() {
        return null;
    }

    abstract PackageElement getPackage();

    public boolean hides(Element hidden) {
        return false;
    }
}

