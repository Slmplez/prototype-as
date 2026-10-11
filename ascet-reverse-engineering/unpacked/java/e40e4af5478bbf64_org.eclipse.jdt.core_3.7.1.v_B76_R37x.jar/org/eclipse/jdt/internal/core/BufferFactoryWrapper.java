/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.IBufferFactory;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.WorkingCopyOwner;

public class BufferFactoryWrapper
extends WorkingCopyOwner {
    public IBufferFactory factory;

    private BufferFactoryWrapper(IBufferFactory factory) {
        this.factory = factory;
    }

    public static WorkingCopyOwner create(IBufferFactory factory) {
        return new BufferFactoryWrapper(factory);
    }

    public IBuffer createBuffer(ICompilationUnit workingCopy) {
        if (this.factory == null) {
            return super.createBuffer(workingCopy);
        }
        return this.factory.createBuffer(workingCopy);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BufferFactoryWrapper)) {
            return false;
        }
        BufferFactoryWrapper other = (BufferFactoryWrapper)obj;
        if (this.factory == null) {
            return other.factory == null;
        }
        return this.factory.equals(other.factory);
    }

    public int hashCode() {
        if (this.factory == null) {
            return 0;
        }
        return this.factory.hashCode();
    }

    public String toString() {
        return "FactoryWrapper for " + this.factory;
    }
}

