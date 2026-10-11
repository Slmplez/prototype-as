/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.WorkingCopyOwner;

public class DefaultWorkingCopyOwner
extends WorkingCopyOwner {
    public WorkingCopyOwner primaryBufferProvider;
    public static final DefaultWorkingCopyOwner PRIMARY = new DefaultWorkingCopyOwner();

    private DefaultWorkingCopyOwner() {
    }

    public IBuffer createBuffer(ICompilationUnit workingCopy) {
        if (this.primaryBufferProvider != null) {
            return this.primaryBufferProvider.createBuffer(workingCopy);
        }
        return super.createBuffer(workingCopy);
    }

    public String toString() {
        return "Primary owner";
    }
}

