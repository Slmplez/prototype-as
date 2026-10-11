/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.debug.core;

import org.eclipse.core.runtime.IStatus;

public interface IRequest {
    public void setStatus(IStatus var1);

    public IStatus getStatus();

    public void done();

    public void cancel();

    public boolean isCanceled();
}

