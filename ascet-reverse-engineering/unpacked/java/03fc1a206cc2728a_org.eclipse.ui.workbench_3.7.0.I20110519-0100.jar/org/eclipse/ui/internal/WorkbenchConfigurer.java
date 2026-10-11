/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.window.WindowManager
 */
package org.eclipse.ui.internal;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.window.WindowManager;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.application.IWorkbenchConfigurer;
import org.eclipse.ui.application.IWorkbenchWindowConfigurer;
import org.eclipse.ui.internal.Workbench;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchWindow;

public final class WorkbenchConfigurer
implements IWorkbenchConfigurer {
    private Map extraData = new HashMap();
    private boolean saveAndRestore = false;
    private boolean isEmergencyClosing = false;
    private boolean exitOnLastWindowClose = true;

    WorkbenchConfigurer() {
    }

    public IWorkbench getWorkbench() {
        return PlatformUI.getWorkbench();
    }

    public WindowManager getWorkbenchWindowManager() {
        return ((Workbench)this.getWorkbench()).getWindowManager();
    }

    public void declareImage(String symbolicName, ImageDescriptor descriptor, boolean shared) {
        if (symbolicName == null || descriptor == null) {
            throw new IllegalArgumentException();
        }
        WorkbenchImages.declareImage(symbolicName, descriptor, shared);
    }

    public IWorkbenchWindowConfigurer getWindowConfigurer(IWorkbenchWindow window) {
        if (window == null) {
            throw new IllegalArgumentException();
        }
        return ((WorkbenchWindow)window).getWindowConfigurer();
    }

    public boolean getSaveAndRestore() {
        return this.saveAndRestore;
    }

    public void setSaveAndRestore(boolean enabled) {
        this.saveAndRestore = enabled;
    }

    public Object getData(String key) {
        if (key == null) {
            throw new IllegalArgumentException();
        }
        return this.extraData.get(key);
    }

    public void setData(String key, Object data) {
        if (key == null) {
            throw new IllegalArgumentException();
        }
        if (data != null) {
            this.extraData.put(key, data);
        } else {
            this.extraData.remove(key);
        }
    }

    public void emergencyClose() {
        if (!this.isEmergencyClosing) {
            this.isEmergencyClosing = true;
            if (Workbench.getInstance() != null && !Workbench.getInstance().isClosing()) {
                Workbench.getInstance().close(3, true);
            }
        }
    }

    public boolean emergencyClosing() {
        return this.isEmergencyClosing;
    }

    public IStatus restoreState() {
        return ((Workbench)this.getWorkbench()).restoreState();
    }

    public void openFirstTimeWindow() {
        ((Workbench)this.getWorkbench()).openFirstTimeWindow();
    }

    public IWorkbenchWindowConfigurer restoreWorkbenchWindow(IMemento memento) throws WorkbenchException {
        return this.getWindowConfigurer(((Workbench)this.getWorkbench()).restoreWorkbenchWindow(memento));
    }

    public boolean getExitOnLastWindowClose() {
        return this.exitOnLastWindowClose;
    }

    public void setExitOnLastWindowClose(boolean enabled) {
        this.exitOnLastWindowClose = enabled;
    }
}

