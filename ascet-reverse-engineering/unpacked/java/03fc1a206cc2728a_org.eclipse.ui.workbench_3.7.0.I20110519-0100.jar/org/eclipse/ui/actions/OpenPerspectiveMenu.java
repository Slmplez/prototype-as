/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.swt.events.SelectionEvent
 */
package org.eclipse.ui.actions;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.actions.PerspectiveMenu;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.internal.util.PrefUtil;

public class OpenPerspectiveMenu
extends PerspectiveMenu {
    private IAdaptable pageInput;
    private IMenuManager parentMenuManager;
    private boolean replaceEnabled = true;
    private static String PAGE_PROBLEMS_TITLE = WorkbenchMessages.OpenPerspectiveMenu_pageProblemsTitle;
    private static String PAGE_PROBLEMS_MESSAGE = WorkbenchMessages.OpenPerspectiveMenu_errorUnknownInput;

    public OpenPerspectiveMenu(IMenuManager menuManager, IWorkbenchWindow window) {
        this(window);
        this.parentMenuManager = menuManager;
    }

    public OpenPerspectiveMenu(IWorkbenchWindow window) {
        this(window, (IAdaptable)null);
        this.showActive(true);
    }

    public OpenPerspectiveMenu(IWorkbenchWindow window, IAdaptable input) {
        super(window, "Open New Page Menu");
        this.pageInput = input;
    }

    private boolean canRun() {
        if (this.openPerspectiveSetting().equals("OPEN_PERSPECTIVE_REPLACE")) {
            return this.replaceEnabled;
        }
        return true;
    }

    private String openPerspectiveSetting() {
        return PrefUtil.getAPIPreferenceStore().getString("OPEN_NEW_PERSPECTIVE");
    }

    protected void run(IPerspectiveDescriptor desc) {
        this.openPage(desc, 0);
    }

    protected void run(IPerspectiveDescriptor desc, SelectionEvent event) {
        this.openPage(desc, event.stateMask);
    }

    private void openPage(IPerspectiveDescriptor desc, int keyStateMask) {
        if (this.pageInput == null) {
            StatusUtil.handleStatus(String.valueOf(PAGE_PROBLEMS_TITLE) + ": " + PAGE_PROBLEMS_MESSAGE, 2);
            return;
        }
        try {
            this.getWindow().getWorkbench().showPerspective(desc.getId(), this.getWindow(), this.pageInput);
        }
        catch (WorkbenchException e) {
            StatusUtil.handleStatus(String.valueOf(PAGE_PROBLEMS_TITLE) + ": " + e.getMessage(), (Throwable)((Object)e), 2);
        }
    }

    public void setPageInput(IAdaptable input) {
        this.pageInput = input;
    }

    public void setReplaceEnabled(boolean isEnabled) {
        if (this.replaceEnabled != isEnabled) {
            this.replaceEnabled = isEnabled;
            if (this.canRun() && this.parentMenuManager != null) {
                this.parentMenuManager.update(true);
            }
        }
    }
}

