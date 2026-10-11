/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.equinox.internal.provisional.p2.repository;

import org.eclipse.core.runtime.IStatus;

public interface IStateful {
    public void setStatus(IStatus var1);

    public IStatus getStatus();
}

