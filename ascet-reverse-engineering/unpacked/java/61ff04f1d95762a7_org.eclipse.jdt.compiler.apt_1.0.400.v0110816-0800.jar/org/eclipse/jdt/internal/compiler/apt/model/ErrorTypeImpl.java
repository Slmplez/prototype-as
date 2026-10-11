/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.internal.compiler.lookup.Binding
 *  org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding
 *  org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding
 *  org.eclipse.jdt.internal.compiler.lookup.TypeBinding
 *  org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding
 */
package org.eclipse.jdt.internal.compiler.apt.model;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.lang.model.element.Element;
import javax.lang.model.type.ErrorType;
import javax.lang.model.type.TypeKind;
import javax.lang.model.type.TypeMirror;
import javax.lang.model.type.TypeVisitor;
import org.eclipse.jdt.internal.compiler.apt.dispatch.BaseProcessingEnvImpl;
import org.eclipse.jdt.internal.compiler.apt.model.DeclaredTypeImpl;
import org.eclipse.jdt.internal.compiler.apt.model.NoTypeImpl;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;

public class ErrorTypeImpl
extends DeclaredTypeImpl
implements ErrorType {
    ErrorTypeImpl(BaseProcessingEnvImpl env, ReferenceBinding binding) {
        super(env, binding);
    }

    @Override
    public Element asElement() {
        return this._env.getFactory().newElement((Binding)((ReferenceBinding)this._binding));
    }

    @Override
    public TypeMirror getEnclosingType() {
        return NoTypeImpl.NO_TYPE_NONE;
    }

    @Override
    public List<? extends TypeMirror> getTypeArguments() {
        ReferenceBinding binding = (ReferenceBinding)this._binding;
        if (binding.isParameterizedType()) {
            int length;
            ParameterizedTypeBinding ptb = (ParameterizedTypeBinding)this._binding;
            TypeBinding[] arguments = ptb.arguments;
            int n = length = arguments == null ? 0 : arguments.length;
            if (length == 0) {
                return Collections.emptyList();
            }
            ArrayList<TypeMirror> args = new ArrayList<TypeMirror>(length);
            TypeBinding[] typeBindingArray = arguments;
            int n2 = arguments.length;
            int n3 = 0;
            while (n3 < n2) {
                TypeBinding arg = typeBindingArray[n3];
                args.add(this._env.getFactory().newTypeMirror((Binding)arg));
                ++n3;
            }
            return Collections.unmodifiableList(args);
        }
        if (binding.isGenericType()) {
            TypeVariableBinding[] typeVariables = binding.typeVariables();
            ArrayList<TypeMirror> args = new ArrayList<TypeMirror>(typeVariables.length);
            TypeVariableBinding[] typeVariableBindingArray = typeVariables;
            int n = typeVariables.length;
            int n4 = 0;
            while (n4 < n) {
                TypeVariableBinding arg = typeVariableBindingArray[n4];
                args.add(this._env.getFactory().newTypeMirror((Binding)arg));
                ++n4;
            }
            return Collections.unmodifiableList(args);
        }
        return Collections.emptyList();
    }

    @Override
    public <R, P> R accept(TypeVisitor<R, P> v, P p) {
        return v.visitError(this, p);
    }

    @Override
    public TypeKind getKind() {
        return TypeKind.ERROR;
    }

    @Override
    public String toString() {
        return new String(this._binding.readableName());
    }
}

