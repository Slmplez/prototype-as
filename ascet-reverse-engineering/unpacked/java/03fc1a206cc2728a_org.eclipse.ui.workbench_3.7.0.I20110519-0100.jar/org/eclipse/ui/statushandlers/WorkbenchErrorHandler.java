/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.statushandlers;

import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.statushandlers.IStatusDialogConstants;
import org.eclipse.ui.statushandlers.AbstractStatusHandler;
import org.eclipse.ui.statushandlers.StatusAdapter;
import org.eclipse.ui.statushandlers.StatusManager;
import org.eclipse.ui.statushandlers.WorkbenchStatusDialogManager;

public class WorkbenchErrorHandler
extends AbstractStatusHandler {
    private WorkbenchStatusDialogManager statusDialogManager;

    public boolean supportsNotification(int type) {
        if (type == 1) {
            return true;
        }
        return super.supportsNotification(type);
    }

    public void handle(final StatusAdapter statusAdapter, int style) {
        statusAdapter.setProperty(WorkbenchStatusDialogManager.HINT, new Integer(style));
        if ((style & 2) == 2 || (style & 4) == 4) {
            boolean block;
            boolean bl = block = (style & 4) == 4;
            if (Display.getCurrent() != null) {
                this.showStatusAdapter(statusAdapter, block);
            } else if (block) {
                Display.getDefault().syncExec(new Runnable(){

                    public void run() {
                        WorkbenchErrorHandler.this.showStatusAdapter(statusAdapter, true);
                    }
                });
            } else {
                Display.getDefault().asyncExec(new Runnable(){

                    public void run() {
                        WorkbenchErrorHandler.this.showStatusAdapter(statusAdapter, false);
                    }
                });
            }
        }
        if ((style & 1) == 1) {
            StatusManager.getManager().addLoggedStatus(statusAdapter.getStatus());
            WorkbenchPlugin.getDefault().getLog().log(statusAdapter.getStatus());
        }
    }

    private void showStatusAdapter(StatusAdapter statusAdapter, boolean block) {
        if (!PlatformUI.isWorkbenchRunning()) {
            WorkbenchPlugin.log(statusAdapter.getStatus());
            return;
        }
        this.getStatusDialogManager().addStatusAdapter(statusAdapter, block);
        if (block) {
            Shell shell;
            while ((shell = this.getStatusDialogShell()) != null && !shell.isDisposed()) {
                if (shell.getDisplay().readAndDispatch()) continue;
                Display.getDefault().sleep();
            }
        }
    }

    private Shell getStatusDialogShell() {
        return (Shell)this.getStatusDialogManager().getProperty(IStatusDialogConstants.SHELL);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private WorkbenchStatusDialogManager getStatusDialogManager() {
        if (this.statusDialogManager == null) {
            WorkbenchErrorHandler workbenchErrorHandler = this;
            synchronized (workbenchErrorHandler) {
                if (this.statusDialogManager == null) {
                    this.statusDialogManager = new WorkbenchStatusDialogManager(null);
                    this.statusDialogManager.setProperty(IStatusDialogConstants.SHOW_SUPPORT, Boolean.TRUE);
                    this.statusDialogManager.setProperty(IStatusDialogConstants.HANDLE_OK_STATUSES, Boolean.TRUE);
                    this.statusDialogManager.setProperty(IStatusDialogConstants.ERRORLOG_LINK, Boolean.TRUE);
                    this.configureStatusDialog(this.statusDialogManager);
                }
            }
        }
        return this.statusDialogManager;
    }

    protected void configureStatusDialog(WorkbenchStatusDialogManager statusDialog) {
    }
}

