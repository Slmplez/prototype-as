/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.internal.compiler.lookup.Binding
 */
package org.eclipse.jdt.internal.compiler.apt.model;

import javax.lang.model.type.TypeKind;
import javax.lang.model.type.TypeMirror;
import javax.lang.model.type.TypeVisitor;
import org.eclipse.jdt.internal.compiler.apt.dispatch.BaseProcessingEnvImpl;
import org.eclipse.jdt.internal.compiler.lookup.Binding;

public class TypeMirrorImpl
implements TypeMirror {
    protected final BaseProcessingEnvImpl _env;
    protected final Binding _binding;

    TypeMirrorImpl(BaseProcessingEnvImpl env, Binding binding) {
        this._env = env;
        this._binding = binding;
    }

    Binding binding() {
        return this._binding;
    }

    @Override
    public <R, P> R accept(TypeVisitor<R, P> v, P p) {
        return v.visit(this, p);
    }

    @Override
    public TypeKind getKind() {
        switch (this._binding.kind()) {
            case 1: 
            case 2: 
            case 3: 
            case 32: {
                throw new IllegalArgumentException("Invalid binding kind: " + this._binding.kind());
            }
        }
        return null;
    }

    @Override
    public String toString() {
        return new String(this._binding.readableName());
    }

    @Override
    public int hashCode() {
        int result = 1;
        result = 31 * result + (this._binding == null ? 0 : this._binding.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TypeMirrorImpl)) {
            return false;
        }
        TypeMirrorImpl other = (TypeMirrorImpl)obj;
        return this._binding == other._binding;
    }
}

