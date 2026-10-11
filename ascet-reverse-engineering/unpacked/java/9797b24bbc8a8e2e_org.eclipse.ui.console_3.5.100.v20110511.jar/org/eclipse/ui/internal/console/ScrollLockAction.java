/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.ui.PlatformUI
 */
package org.eclipse.ui.internal.console;

import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.IAction;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.console.IConsoleView;
import org.eclipse.ui.internal.console.ConsoleMessages;
import org.eclipse.ui.internal.console.ConsolePluginImages;
import org.eclipse.ui.internal.console.IConsoleHelpContextIds;

public class ScrollLockAction
extends Action {
    private IConsoleView fConsoleView;

    public ScrollLockAction(IConsoleView consoleView) {
        super(ConsoleMessages.ScrollLockAction_0);
        this.fConsoleView = consoleView;
        this.setToolTipText(ConsoleMessages.ScrollLockAction_1);
        this.setHoverImageDescriptor(ConsolePluginImages.getImageDescriptor("IMG_LCL_LOCK"));
        this.setDisabledImageDescriptor(ConsolePluginImages.getImageDescriptor("IMG_DLCL_LOCK"));
        this.setImageDescriptor(ConsolePluginImages.getImageDescriptor("IMG_ELCL_LOCK"));
        PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)this, IConsoleHelpContextIds.CONSOLE_SCROLL_LOCK_ACTION);
        boolean checked = this.fConsoleView.getScrollLock();
        this.setChecked(checked);
    }

    public void run() {
        this.fConsoleView.setScrollLock(this.isChecked());
    }

    public void dispose() {
        this.fConsoleView = null;
    }
}

