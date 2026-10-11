/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.ILogListener
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.ui.statushandlers;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.ILogListener;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchErrorHandlerProxy;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.internal.statushandlers.StatusHandlerRegistry;
import org.eclipse.ui.progress.IProgressConstants;
import org.eclipse.ui.statushandlers.AbstractStatusHandler;
import org.eclipse.ui.statushandlers.StatusAdapter;

public class StatusManager {
    public static final int NONE = 0;
    public static final int LOG = 1;
    public static final int SHOW = 2;
    public static final int BLOCK = 4;
    private static StatusManager MANAGER;
    private AbstractStatusHandler statusHandler;
    private List loggedStatuses = new ArrayList();
    private ListenerList listeners = new ListenerList();

    public static StatusManager getManager() {
        if (MANAGER == null) {
            MANAGER = new StatusManager();
        }
        return MANAGER;
    }

    private StatusManager() {
        Platform.addLogListener((ILogListener)new StatusManagerLogListener());
    }

    private AbstractStatusHandler getStatusHandler() {
        if (this.statusHandler == null && StatusHandlerRegistry.getDefault().getDefaultHandlerDescriptor() != null) {
            try {
                this.statusHandler = StatusHandlerRegistry.getDefault().getDefaultHandlerDescriptor().getStatusHandler();
            }
            catch (CoreException ex) {
                this.logError("Errors during the default handler creating", ex);
            }
        }
        if (this.statusHandler == null) {
            this.statusHandler = new WorkbenchErrorHandlerProxy();
        }
        return this.statusHandler;
    }

    public void handle(StatusAdapter statusAdapter, int style) {
        try {
            if (statusAdapter == null) {
                this.logError("Error occurred during status handling", new NullPointerException("StatusAdapter object is null"));
                return;
            }
            if (statusAdapter.getStatus() == null) {
                this.logError("Error occurred during status handling", new NullPointerException("Status object is null"));
                return;
            }
            if (!PlatformUI.isWorkbenchRunning()) {
                if (style != 0) {
                    this.logError(statusAdapter.getStatus());
                }
                return;
            }
            this.getStatusHandler().handle(statusAdapter, style);
            if (!this.getStatusHandler().supportsNotification(1)) {
                this.generateFakeNotification(statusAdapter, style);
            }
        }
        catch (Throwable ex) {
            this.logError(statusAdapter.getStatus());
            this.logError("Error occurred during status handling", ex);
        }
    }

    public void handle(StatusAdapter statusAdapter) {
        this.handle(statusAdapter, 1);
    }

    public void handle(IStatus status, int style) {
        StatusAdapter statusAdapter = new StatusAdapter(status);
        this.handle(statusAdapter, style);
    }

    public void handle(IStatus status) {
        this.handle(status, 1);
    }

    public void handle(CoreException coreException, String pluginId) {
        this.handle((IStatus)new Status(2, pluginId, coreException.getLocalizedMessage(), (Throwable)coreException));
    }

    public void addLoggedStatus(IStatus status) {
        this.loggedStatuses.add(status);
    }

    private void logError(String message, Throwable ex) {
        IStatus status = StatusUtil.newStatus(WorkbenchPlugin.PI_WORKBENCH, message, ex);
        this.addLoggedStatus(status);
        WorkbenchPlugin.log(status);
    }

    private void logError(IStatus status) {
        this.addLoggedStatus(status);
        WorkbenchPlugin.log(status);
    }

    public void fireNotification(int type, StatusAdapter[] adapters) {
        if (this.getStatusHandler().supportsNotification(type)) {
            this.doFireNotification(type, adapters);
        }
    }

    private void doFireNotification(int type, StatusAdapter[] adapters) {
        Object[] oListeners = this.listeners.getListeners();
        int i = 0;
        while (i < oListeners.length) {
            if (oListeners[i] instanceof INotificationListener) {
                ((INotificationListener)oListeners[i]).statusManagerNotified(type, adapters);
            }
            ++i;
        }
    }

    private void generateFakeNotification(StatusAdapter statusAdapter, int style) {
        if (((style & 2) == 2 || (style & 4) == 4) && statusAdapter.getProperty(IProgressConstants.NO_IMMEDIATE_ERROR_PROMPT_PROPERTY) != Boolean.TRUE) {
            this.doFireNotification(1, new StatusAdapter[]{statusAdapter});
        }
    }

    public void addListener(INotificationListener listener) {
        this.listeners.add((Object)listener);
    }

    public void removeListener(INotificationListener listener) {
        this.listeners.remove((Object)listener);
    }

    public static interface INotificationListener {
        public void statusManagerNotified(int var1, StatusAdapter[] var2);
    }

    public static interface INotificationTypes {
        public static final int HANDLED = 1;
    }

    private class StatusManagerLogListener
    implements ILogListener {
        private StatusManagerLogListener() {
        }

        public void logging(IStatus status, String plugin) {
            if (!StatusManager.this.loggedStatuses.contains(status)) {
                StatusManager.this.handle(status, 0);
            } else {
                StatusManager.this.loggedStatuses.remove(status);
            }
        }
    }
}

