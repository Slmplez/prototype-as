/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public abstract class NameReference
extends Reference
implements InvocationSite {
    public Binding binding;
    public TypeBinding actualReceiverType;

    public NameReference() {
        this.bits |= 7;
    }

    public FieldBinding fieldBinding() {
        return (FieldBinding)this.binding;
    }

    public boolean isSuperAccess() {
        return false;
    }

    public boolean isTypeAccess() {
        return this.binding == null || this.binding instanceof ReferenceBinding;
    }

    public boolean isTypeReference() {
        return this.binding instanceof ReferenceBinding;
    }

    public void setActualReceiverType(ReferenceBinding receiverType) {
        if (receiverType == null) {
            return;
        }
        this.actualReceiverType = receiverType;
    }

    public void setDepth(int depth) {
        this.bits &= 0xFFFFE01F;
        if (depth > 0) {
            this.bits |= (depth & 0xFF) << 5;
        }
    }

    public void setFieldIndex(int index) {
    }

    public abstract String unboundReferenceErrorName();
}

