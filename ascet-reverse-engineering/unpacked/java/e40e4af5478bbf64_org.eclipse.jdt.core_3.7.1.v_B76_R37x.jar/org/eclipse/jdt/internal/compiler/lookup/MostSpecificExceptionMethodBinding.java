/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;

public class MostSpecificExceptionMethodBinding
extends MethodBinding {
    private MethodBinding originalMethod;

    public MostSpecificExceptionMethodBinding(MethodBinding originalMethod, ReferenceBinding[] mostSpecificExceptions) {
        super(originalMethod.modifiers, originalMethod.selector, originalMethod.returnType, originalMethod.parameters, mostSpecificExceptions, originalMethod.declaringClass);
        this.originalMethod = originalMethod;
    }

    public MethodBinding original() {
        return this.originalMethod.original();
    }
}

