/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.debug.internal.core.commands;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.debug.core.IRequest;

public class Request
implements IRequest {
    private IStatus fStatus;
    private boolean fCanceled = false;

    public void done() {
    }

    public IStatus getStatus() {
        return this.fStatus;
    }

    public void setStatus(IStatus status) {
        this.fStatus = status;
    }

    public synchronized void cancel() {
        this.fCanceled = true;
    }

    public synchronized boolean isCanceled() {
        return this.fCanceled;
    }
}

