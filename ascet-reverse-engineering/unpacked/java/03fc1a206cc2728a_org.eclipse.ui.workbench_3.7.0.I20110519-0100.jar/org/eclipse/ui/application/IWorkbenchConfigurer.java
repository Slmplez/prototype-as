/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.window.WindowManager
 */
package org.eclipse.ui.application;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.window.WindowManager;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.application.IWorkbenchWindowConfigurer;

public interface IWorkbenchConfigurer {
    public static final int RESTORE_CODE_RESET = 1;
    public static final int RESTORE_CODE_EXIT = 2;

    public IWorkbench getWorkbench();

    public boolean getSaveAndRestore();

    public void setSaveAndRestore(boolean var1);

    public IWorkbenchWindowConfigurer restoreWorkbenchWindow(IMemento var1) throws WorkbenchException;

    public WindowManager getWorkbenchWindowManager();

    public void declareImage(String var1, ImageDescriptor var2, boolean var3);

    public void emergencyClose();

    public boolean emergencyClosing();

    public IWorkbenchWindowConfigurer getWindowConfigurer(IWorkbenchWindow var1);

    public Object getData(String var1);

    public void setData(String var1, Object var2);

    public IStatus restoreState();

    public void openFirstTimeWindow();

    public boolean getExitOnLastWindowClose();

    public void setExitOnLastWindowClose(boolean var1);
}

