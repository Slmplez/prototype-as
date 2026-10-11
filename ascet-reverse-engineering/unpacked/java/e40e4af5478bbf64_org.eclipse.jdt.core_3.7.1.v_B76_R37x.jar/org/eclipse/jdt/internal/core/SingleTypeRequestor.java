/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IInitializer;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.internal.core.IJavaElementRequestor;

class SingleTypeRequestor
implements IJavaElementRequestor {
    protected IType element = null;

    SingleTypeRequestor() {
    }

    public void acceptField(IField field) {
    }

    public void acceptInitializer(IInitializer initializer) {
    }

    public void acceptMemberType(IType type) {
        this.element = type;
    }

    public void acceptMethod(IMethod method) {
    }

    public void acceptPackageFragment(IPackageFragment packageFragment) {
    }

    public void acceptType(IType type) {
        this.element = type;
    }

    public IType getType() {
        return this.element;
    }

    public boolean isCanceled() {
        return this.element != null;
    }

    public void reset() {
        this.element = null;
    }
}

