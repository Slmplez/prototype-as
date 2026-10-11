/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.emf.transaction;

import org.eclipse.core.runtime.IStatus;

public class RollbackException
extends Exception {
    private static final long serialVersionUID = -1193949990049166426L;
    private final IStatus status;

    public RollbackException(IStatus status) {
        super(status.getMessage());
        this.status = status;
    }

    public final IStatus getStatus() {
        return this.status;
    }
}

