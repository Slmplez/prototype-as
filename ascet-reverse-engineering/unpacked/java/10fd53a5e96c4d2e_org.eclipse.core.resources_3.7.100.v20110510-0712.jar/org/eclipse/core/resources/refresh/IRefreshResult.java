/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.resources.refresh;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.refresh.IRefreshMonitor;

public interface IRefreshResult {
    public void monitorFailed(IRefreshMonitor var1, IResource var2);

    public void refresh(IResource var1);
}

