/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.core.builder;

import org.eclipse.core.runtime.CoreException;

public class ImageBuilderInternalException
extends RuntimeException {
    private static final long serialVersionUID = 28252254530437336L;
    protected CoreException coreException;

    public ImageBuilderInternalException(CoreException e) {
        this.coreException = e;
    }

    public CoreException getThrowable() {
        return this.coreException;
    }

    public void printStackTrace() {
        if (this.coreException != null) {
            System.err.println(this);
            System.err.println("Stack trace of embedded core exception:");
            this.coreException.printStackTrace();
        } else {
            super.printStackTrace();
        }
    }
}

