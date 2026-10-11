/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.internal.compiler.lookup.Binding
 *  org.eclipse.jdt.internal.compiler.lookup.MethodBinding
 *  org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding
 *  org.eclipse.jdt.internal.compiler.lookup.TypeBinding
 *  org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding
 */
package org.eclipse.jdt.internal.compiler.apt.model;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.lang.model.type.ExecutableType;
import javax.lang.model.type.TypeKind;
import javax.lang.model.type.TypeMirror;
import javax.lang.model.type.TypeVariable;
import javax.lang.model.type.TypeVisitor;
import org.eclipse.jdt.internal.compiler.apt.dispatch.BaseProcessingEnvImpl;
import org.eclipse.jdt.internal.compiler.apt.model.TypeMirrorImpl;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;

public class ExecutableTypeImpl
extends TypeMirrorImpl
implements ExecutableType {
    ExecutableTypeImpl(BaseProcessingEnvImpl env, MethodBinding binding) {
        super(env, (Binding)binding);
    }

    @Override
    public List<? extends TypeMirror> getParameterTypes() {
        boolean isEnumConstructor;
        MethodBinding binding = (MethodBinding)this._binding;
        TypeBinding[] parameters = binding.parameters;
        int length = parameters.length;
        boolean bl = isEnumConstructor = binding.isConstructor() && binding.declaringClass.isEnum() && binding.declaringClass.isBinaryBinding() && (binding.modifiers & 0x40000000) == 0;
        if (isEnumConstructor) {
            if (length == 2) {
                return Collections.emptyList();
            }
            ArrayList<TypeMirror> list = new ArrayList<TypeMirror>();
            int i = 2;
            while (i < length) {
                list.add(this._env.getFactory().newTypeMirror((Binding)parameters[i]));
                ++i;
            }
            return Collections.unmodifiableList(list);
        }
        if (length != 0) {
            ArrayList<TypeMirror> list = new ArrayList<TypeMirror>();
            TypeBinding[] typeBindingArray = parameters;
            int n = parameters.length;
            int n2 = 0;
            while (n2 < n) {
                TypeBinding typeBinding = typeBindingArray[n2];
                list.add(this._env.getFactory().newTypeMirror((Binding)typeBinding));
                ++n2;
            }
            return Collections.unmodifiableList(list);
        }
        return Collections.emptyList();
    }

    @Override
    public TypeMirror getReturnType() {
        return this._env.getFactory().newTypeMirror((Binding)((MethodBinding)this._binding).returnType);
    }

    @Override
    public List<? extends TypeMirror> getThrownTypes() {
        ArrayList<TypeMirror> list = new ArrayList<TypeMirror>();
        ReferenceBinding[] thrownExceptions = ((MethodBinding)this._binding).thrownExceptions;
        if (thrownExceptions.length != 0) {
            ReferenceBinding[] referenceBindingArray = thrownExceptions;
            int n = thrownExceptions.length;
            int n2 = 0;
            while (n2 < n) {
                ReferenceBinding referenceBinding = referenceBindingArray[n2];
                list.add(this._env.getFactory().newTypeMirror((Binding)referenceBinding));
                ++n2;
            }
        }
        return Collections.unmodifiableList(list);
    }

    @Override
    public List<? extends TypeVariable> getTypeVariables() {
        ArrayList<TypeVariable> list = new ArrayList<TypeVariable>();
        TypeVariableBinding[] typeVariables = ((MethodBinding)this._binding).typeVariables();
        if (typeVariables.length != 0) {
            TypeVariableBinding[] typeVariableBindingArray = typeVariables;
            int n = typeVariables.length;
            int n2 = 0;
            while (n2 < n) {
                TypeVariableBinding typeVariableBinding = typeVariableBindingArray[n2];
                list.add((TypeVariable)this._env.getFactory().newTypeMirror((Binding)typeVariableBinding));
                ++n2;
            }
        }
        return Collections.unmodifiableList(list);
    }

    @Override
    public <R, P> R accept(TypeVisitor<R, P> v, P p) {
        return v.visitExecutable(this, p);
    }

    @Override
    public TypeKind getKind() {
        return TypeKind.EXECUTABLE;
    }
}

