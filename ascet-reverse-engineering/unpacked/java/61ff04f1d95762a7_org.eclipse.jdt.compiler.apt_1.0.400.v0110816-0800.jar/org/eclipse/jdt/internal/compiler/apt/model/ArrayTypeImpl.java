/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.internal.compiler.lookup.ArrayBinding
 *  org.eclipse.jdt.internal.compiler.lookup.Binding
 */
package org.eclipse.jdt.internal.compiler.apt.model;

import javax.lang.model.type.ArrayType;
import javax.lang.model.type.TypeKind;
import javax.lang.model.type.TypeMirror;
import javax.lang.model.type.TypeVisitor;
import org.eclipse.jdt.internal.compiler.apt.dispatch.BaseProcessingEnvImpl;
import org.eclipse.jdt.internal.compiler.apt.model.TypeMirrorImpl;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;

public class ArrayTypeImpl
extends TypeMirrorImpl
implements ArrayType {
    ArrayTypeImpl(BaseProcessingEnvImpl env, ArrayBinding binding) {
        super(env, (Binding)binding);
    }

    @Override
    public TypeMirror getComponentType() {
        return this._env.getFactory().newTypeMirror((Binding)((ArrayBinding)this._binding).elementsType());
    }

    @Override
    public <R, P> R accept(TypeVisitor<R, P> v, P p) {
        return v.visitArray(this, p);
    }

    @Override
    public TypeKind getKind() {
        return TypeKind.ARRAY;
    }
}

