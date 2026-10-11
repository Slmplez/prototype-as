/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.emf.validation.internal.service;

import org.eclipse.core.runtime.IStatus;

public class ValidationCanceledException
extends RuntimeException {
    private static final long serialVersionUID = -2541909077699487325L;
    private final IStatus status;

    public ValidationCanceledException(IStatus status) {
        super(status.getMessage());
        this.status = status;
    }

    public final IStatus getStatus() {
        return this.status;
    }
}

