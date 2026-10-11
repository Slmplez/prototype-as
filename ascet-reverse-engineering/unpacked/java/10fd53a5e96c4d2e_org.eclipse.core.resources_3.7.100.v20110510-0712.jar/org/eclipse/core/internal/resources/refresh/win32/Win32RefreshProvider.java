/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.resources.refresh.win32;

import org.eclipse.core.internal.resources.refresh.win32.Win32Monitor;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.refresh.IRefreshMonitor;
import org.eclipse.core.resources.refresh.IRefreshResult;
import org.eclipse.core.resources.refresh.RefreshProvider;

public class Win32RefreshProvider
extends RefreshProvider {
    private Win32Monitor monitor;

    public IRefreshMonitor installMonitor(IResource resource, IRefreshResult result) {
        if (resource.getLocation() == null || !resource.exists() || resource.getType() == 1) {
            return null;
        }
        if (this.monitor == null) {
            this.monitor = new Win32Monitor(result);
        }
        if (this.monitor.monitor(resource)) {
            return this.monitor;
        }
        return null;
    }
}

