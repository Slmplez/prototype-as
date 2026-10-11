/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 */
package org.eclipse.ui.actions;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.actions.PerspectiveMenu;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.misc.StatusUtil;

public class OpenNewWindowMenu
extends PerspectiveMenu {
    private IAdaptable pageInput;

    public OpenNewWindowMenu(IWorkbenchWindow window) {
        this(window, (IAdaptable)null);
    }

    public OpenNewWindowMenu(IWorkbenchWindow window, IAdaptable input) {
        super(window, "Open New Page Menu");
        this.pageInput = input;
    }

    protected void run(IPerspectiveDescriptor desc) {
        if (this.pageInput == null) {
            StatusUtil.handleStatus(String.valueOf(WorkbenchMessages.OpenNewWindowMenu_dialogTitle) + ": " + WorkbenchMessages.OpenNewWindowMenu_unknownInput, 2);
            return;
        }
        try {
            this.getWindow().getWorkbench().openWorkbenchWindow(desc.getId(), this.pageInput);
        }
        catch (WorkbenchException e) {
            StatusUtil.handleStatus(String.valueOf(WorkbenchMessages.OpenNewWindowMenu_dialogTitle) + ": " + e.getMessage(), (Throwable)((Object)e), 2);
        }
    }

    public void setPageInput(IAdaptable input) {
        this.pageInput = input;
    }
}

