/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding
 *  org.eclipse.jdt.internal.compiler.lookup.MethodBinding
 */
package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;

public class AptSourceLocalVariableBinding
extends LocalVariableBinding {
    public MethodBinding methodBinding;

    public AptSourceLocalVariableBinding(LocalVariableBinding localVariableBinding, MethodBinding methodBinding) {
        super(localVariableBinding.name, localVariableBinding.type, localVariableBinding.modifiers, true);
        this.constant = localVariableBinding.constant;
        this.declaration = localVariableBinding.declaration;
        this.declaringScope = localVariableBinding.declaringScope;
        this.id = localVariableBinding.id;
        this.resolvedPosition = localVariableBinding.resolvedPosition;
        this.tagBits = localVariableBinding.tagBits;
        this.useFlag = localVariableBinding.useFlag;
        this.initializationCount = localVariableBinding.initializationCount;
        this.initializationPCs = localVariableBinding.initializationPCs;
        this.methodBinding = methodBinding;
    }
}

