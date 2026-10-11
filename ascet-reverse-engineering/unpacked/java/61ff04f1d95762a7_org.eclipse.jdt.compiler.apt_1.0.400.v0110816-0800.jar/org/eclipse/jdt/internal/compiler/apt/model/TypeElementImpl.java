/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.core.compiler.CharOperation
 *  org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding
 *  org.eclipse.jdt.internal.compiler.lookup.Binding
 *  org.eclipse.jdt.internal.compiler.lookup.MethodBinding
 *  org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding
 *  org.eclipse.jdt.internal.compiler.lookup.TypeBinding
 *  org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding
 *  org.eclipse.jdt.internal.compiler.lookup.VariableBinding
 */
package org.eclipse.jdt.internal.compiler.apt.model;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import javax.lang.model.SourceVersion;
import javax.lang.model.element.Element;
import javax.lang.model.element.ElementKind;
import javax.lang.model.element.ElementVisitor;
import javax.lang.model.element.Modifier;
import javax.lang.model.element.Name;
import javax.lang.model.element.NestingKind;
import javax.lang.model.element.PackageElement;
import javax.lang.model.element.TypeElement;
import javax.lang.model.element.TypeParameterElement;
import javax.lang.model.type.TypeKind;
import javax.lang.model.type.TypeMirror;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.apt.dispatch.BaseProcessingEnvImpl;
import org.eclipse.jdt.internal.compiler.apt.model.ElementImpl;
import org.eclipse.jdt.internal.compiler.apt.model.ExecutableElementImpl;
import org.eclipse.jdt.internal.compiler.apt.model.Factory;
import org.eclipse.jdt.internal.compiler.apt.model.NameImpl;
import org.eclipse.jdt.internal.compiler.apt.model.VariableElementImpl;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;

public class TypeElementImpl
extends ElementImpl
implements TypeElement {
    private final ElementKind _kindHint;

    TypeElementImpl(BaseProcessingEnvImpl env, ReferenceBinding binding, ElementKind kindHint) {
        super(env, (Binding)binding);
        this._kindHint = kindHint;
    }

    @Override
    public <R, P> R accept(ElementVisitor<R, P> v, P p) {
        return v.visitType(this, p);
    }

    @Override
    protected AnnotationBinding[] getAnnotationBindings() {
        return ((ReferenceBinding)this._binding).getAnnotations();
    }

    @Override
    public List<? extends Element> getEnclosedElements() {
        ReferenceBinding binding = (ReferenceBinding)this._binding;
        ArrayList<ElementImpl> enclosed = new ArrayList<ElementImpl>(binding.fieldCount() + binding.methods().length);
        MethodBinding[] methodBindingArray = binding.methods();
        int n = methodBindingArray.length;
        int n2 = 0;
        while (n2 < n) {
            MethodBinding method = methodBindingArray[n2];
            ExecutableElementImpl executable = new ExecutableElementImpl(this._env, method);
            enclosed.add(executable);
            ++n2;
        }
        methodBindingArray = binding.fields();
        n = methodBindingArray.length;
        n2 = 0;
        while (n2 < n) {
            MethodBinding field = methodBindingArray[n2];
            if (!field.isSynthetic()) {
                VariableElementImpl variable = new VariableElementImpl(this._env, (VariableBinding)field);
                enclosed.add(variable);
            }
            ++n2;
        }
        methodBindingArray = binding.memberTypes();
        n = methodBindingArray.length;
        n2 = 0;
        while (n2 < n) {
            MethodBinding memberType = methodBindingArray[n2];
            TypeElementImpl type = new TypeElementImpl(this._env, (ReferenceBinding)memberType, null);
            enclosed.add(type);
            ++n2;
        }
        return Collections.unmodifiableList(enclosed);
    }

    @Override
    public Element getEnclosingElement() {
        ReferenceBinding binding = (ReferenceBinding)this._binding;
        ReferenceBinding enclosingType = binding.enclosingType();
        if (enclosingType == null) {
            return this._env.getFactory().newPackageElement(binding.fPackage);
        }
        return this._env.getFactory().newElement((Binding)binding.enclosingType());
    }

    @Override
    public String getFileName() {
        char[] name = ((ReferenceBinding)this._binding).getFileName();
        if (name == null) {
            return null;
        }
        return new String(name);
    }

    @Override
    public List<? extends TypeMirror> getInterfaces() {
        ReferenceBinding binding = (ReferenceBinding)this._binding;
        if (binding.superInterfaces() == null || binding.superInterfaces().length == 0) {
            return Collections.emptyList();
        }
        ArrayList<TypeMirror> interfaces = new ArrayList<TypeMirror>(binding.superInterfaces().length);
        ReferenceBinding[] referenceBindingArray = binding.superInterfaces();
        int n = referenceBindingArray.length;
        int n2 = 0;
        while (n2 < n) {
            ReferenceBinding interfaceBinding = referenceBindingArray[n2];
            TypeMirror interfaceType = this._env.getFactory().newTypeMirror((Binding)interfaceBinding);
            if (interfaceType.getKind() == TypeKind.ERROR) {
                if (this._env.getSourceVersion().compareTo(SourceVersion.RELEASE_6) > 0) {
                    interfaces.add(interfaceType);
                }
            } else {
                interfaces.add(interfaceType);
            }
            ++n2;
        }
        return Collections.unmodifiableList(interfaces);
    }

    @Override
    public ElementKind getKind() {
        if (this._kindHint != null) {
            return this._kindHint;
        }
        ReferenceBinding refBinding = (ReferenceBinding)this._binding;
        if (refBinding.isEnum()) {
            return ElementKind.ENUM;
        }
        if (refBinding.isAnnotationType()) {
            return ElementKind.ANNOTATION_TYPE;
        }
        if (refBinding.isInterface()) {
            return ElementKind.INTERFACE;
        }
        if (refBinding.isClass()) {
            return ElementKind.CLASS;
        }
        throw new IllegalArgumentException("TypeElement " + new String(refBinding.shortReadableName()) + " has unexpected attributes " + refBinding.modifiers);
    }

    @Override
    public Set<Modifier> getModifiers() {
        ReferenceBinding refBinding = (ReferenceBinding)this._binding;
        int modifiers = refBinding.modifiers;
        if (refBinding.isInterface() && refBinding.isNestedType()) {
            modifiers |= 8;
        }
        return Factory.getModifiers(modifiers, this.getKind(), refBinding.isBinaryBinding());
    }

    @Override
    public NestingKind getNestingKind() {
        ReferenceBinding refBinding = (ReferenceBinding)this._binding;
        if (refBinding.isAnonymousType()) {
            return NestingKind.ANONYMOUS;
        }
        if (refBinding.isLocalType()) {
            return NestingKind.LOCAL;
        }
        if (refBinding.isMemberType()) {
            return NestingKind.MEMBER;
        }
        return NestingKind.TOP_LEVEL;
    }

    @Override
    PackageElement getPackage() {
        ReferenceBinding binding = (ReferenceBinding)this._binding;
        return this._env.getFactory().newPackageElement(binding.fPackage);
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
    public Name getSimpleName() {
        ReferenceBinding binding = (ReferenceBinding)this._binding;
        return new NameImpl(binding.sourceName());
    }

    @Override
    public TypeMirror getSuperclass() {
        ReferenceBinding binding = (ReferenceBinding)this._binding;
        ReferenceBinding superBinding = binding.superclass();
        if (superBinding == null || binding.isInterface()) {
            return this._env.getFactory().getNoType(TypeKind.NONE);
        }
        return this._env.getFactory().newTypeMirror((Binding)superBinding);
    }

    @Override
    public List<? extends TypeParameterElement> getTypeParameters() {
        ReferenceBinding binding = (ReferenceBinding)this._binding;
        TypeVariableBinding[] variables = binding.typeVariables();
        if (variables.length == 0) {
            return Collections.emptyList();
        }
        ArrayList<TypeParameterElement> params = new ArrayList<TypeParameterElement>(variables.length);
        TypeVariableBinding[] typeVariableBindingArray = variables;
        int n = variables.length;
        int n2 = 0;
        while (n2 < n) {
            TypeVariableBinding variable = typeVariableBindingArray[n2];
            params.add(this._env.getFactory().newTypeParameterElement(variable, this));
            ++n2;
        }
        return Collections.unmodifiableList(params);
    }

    @Override
    public boolean hides(Element hidden) {
        if (!(hidden instanceof TypeElementImpl)) {
            return false;
        }
        ReferenceBinding hiddenBinding = (ReferenceBinding)((TypeElementImpl)hidden)._binding;
        if (hiddenBinding.isPrivate()) {
            return false;
        }
        ReferenceBinding hiderBinding = (ReferenceBinding)this._binding;
        if (hiddenBinding == hiderBinding) {
            return false;
        }
        if (!hiddenBinding.isMemberType() || !hiderBinding.isMemberType()) {
            return false;
        }
        if (!CharOperation.equals((char[])hiddenBinding.sourceName, (char[])hiderBinding.sourceName)) {
            return false;
        }
        return hiderBinding.enclosingType().findSuperTypeOriginatingFrom((TypeBinding)hiddenBinding.enclosingType()) != null;
    }

    @Override
    public String toString() {
        ReferenceBinding binding = (ReferenceBinding)this._binding;
        char[] concatWith = CharOperation.concatWith((char[][])binding.compoundName, (char)'.');
        if (binding.isNestedType()) {
            CharOperation.replace((char[])concatWith, (char)'$', (char)'.');
            return new String(concatWith);
        }
        return new String(concatWith);
    }
}

