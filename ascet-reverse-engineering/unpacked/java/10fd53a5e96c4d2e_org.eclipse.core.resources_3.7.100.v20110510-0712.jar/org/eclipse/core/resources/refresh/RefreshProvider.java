/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.resources.refresh;

import org.eclipse.core.internal.refresh.InternalRefreshProvider;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.refresh.IRefreshMonitor;
import org.eclipse.core.resources.refresh.IRefreshResult;

public abstract class RefreshProvider
extends InternalRefreshProvider {
    protected IRefreshMonitor createPollingMonitor(IResource resource) {
        return super.createPollingMonitor(resource);
    }

    public abstract IRefreshMonitor installMonitor(IResource var1, IRefreshResult var2);

    public void resetMonitors(IResource resource) {
        super.resetMonitors(resource);
    }
}

