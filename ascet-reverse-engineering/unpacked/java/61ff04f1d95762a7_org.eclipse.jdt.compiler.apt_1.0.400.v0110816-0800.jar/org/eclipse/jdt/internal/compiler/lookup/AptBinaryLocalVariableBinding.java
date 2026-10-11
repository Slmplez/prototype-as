/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding
 *  org.eclipse.jdt.internal.compiler.lookup.Binding
 *  org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding
 *  org.eclipse.jdt.internal.compiler.lookup.MethodBinding
 *  org.eclipse.jdt.internal.compiler.lookup.TypeBinding
 */
package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class AptBinaryLocalVariableBinding
extends LocalVariableBinding {
    AnnotationBinding[] annotationBindings;
    public MethodBinding methodBinding;

    public AptBinaryLocalVariableBinding(char[] name, TypeBinding type, int modifiers, AnnotationBinding[] annotationBindings, MethodBinding methodBinding) {
        super(name, type, modifiers, true);
        this.annotationBindings = annotationBindings == null ? Binding.NO_ANNOTATIONS : annotationBindings;
        this.methodBinding = methodBinding;
    }

    public AnnotationBinding[] getAnnotations() {
        return this.annotationBindings;
    }
}

