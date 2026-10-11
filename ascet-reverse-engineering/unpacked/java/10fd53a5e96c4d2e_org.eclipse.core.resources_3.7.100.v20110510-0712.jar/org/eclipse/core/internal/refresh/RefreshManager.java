/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.Preferences
 *  org.eclipse.core.runtime.Preferences$IPropertyChangeListener
 *  org.eclipse.core.runtime.Preferences$PropertyChangeEvent
 */
package org.eclipse.core.internal.refresh;

import org.eclipse.core.internal.refresh.MonitorManager;
import org.eclipse.core.internal.refresh.RefreshJob;
import org.eclipse.core.internal.resources.IManager;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.resources.refresh.IRefreshMonitor;
import org.eclipse.core.resources.refresh.IRefreshResult;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Preferences;

public class RefreshManager
implements IRefreshResult,
IManager,
Preferences.IPropertyChangeListener {
    public static boolean DEBUG = Policy.DEBUG_AUTO_REFRESH;
    public static final String DEBUG_PREFIX = "Auto-refresh: ";
    MonitorManager monitors;
    private RefreshJob refreshJob;
    private IWorkspace workspace;

    public RefreshManager(IWorkspace workspace) {
        this.workspace = workspace;
    }

    protected void manageAutoRefresh(boolean enabled) {
        if (this.refreshJob == null) {
            return;
        }
        if (enabled) {
            this.refreshJob.start();
            this.monitors.start();
        } else {
            this.refreshJob.stop();
            this.monitors.stop();
        }
    }

    public void monitorFailed(IRefreshMonitor monitor, IResource resource) {
        this.monitors.monitorFailed(monitor, resource);
    }

    public void propertyChange(Preferences.PropertyChangeEvent event) {
        String property = event.getProperty();
        if ("refresh.enabled".equals(property)) {
            Preferences preferences = ResourcesPlugin.getPlugin().getPluginPreferences();
            boolean autoRefresh = preferences.getBoolean("refresh.enabled");
            this.manageAutoRefresh(autoRefresh);
        }
    }

    public void refresh(IResource resource) {
        if (this.refreshJob != null) {
            this.refreshJob.refresh(resource);
        }
    }

    public void shutdown(IProgressMonitor monitor) {
        ResourcesPlugin.getPlugin().getPluginPreferences().removePropertyChangeListener((Preferences.IPropertyChangeListener)this);
        if (this.monitors != null) {
            this.monitors.stop();
            this.monitors = null;
        }
        if (this.refreshJob != null) {
            this.refreshJob.stop();
            this.refreshJob = null;
        }
    }

    public void startup(IProgressMonitor monitor) {
        Preferences preferences = ResourcesPlugin.getPlugin().getPluginPreferences();
        preferences.addPropertyChangeListener((Preferences.IPropertyChangeListener)this);
        this.refreshJob = new RefreshJob();
        this.monitors = new MonitorManager(this.workspace, this);
        boolean autoRefresh = preferences.getBoolean("refresh.enabled");
        if (autoRefresh) {
            this.manageAutoRefresh(autoRefresh);
        }
    }
}

