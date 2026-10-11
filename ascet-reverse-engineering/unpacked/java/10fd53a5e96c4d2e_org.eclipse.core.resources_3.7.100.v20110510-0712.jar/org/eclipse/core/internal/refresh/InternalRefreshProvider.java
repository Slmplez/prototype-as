/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.refresh;

import org.eclipse.core.internal.refresh.MonitorManager;
import org.eclipse.core.internal.refresh.PollingMonitor;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.refresh.IRefreshMonitor;

public class InternalRefreshProvider {
    protected IRefreshMonitor createPollingMonitor(IResource resource) {
        PollingMonitor monitor = ((Workspace)resource.getWorkspace()).getRefreshManager().monitors.pollMonitor;
        monitor.monitor(resource);
        return monitor;
    }

    public void resetMonitors(IResource resource) {
        MonitorManager manager = ((Workspace)resource.getWorkspace()).getRefreshManager().monitors;
        manager.unmonitor(resource);
        manager.monitor(resource);
    }
}

