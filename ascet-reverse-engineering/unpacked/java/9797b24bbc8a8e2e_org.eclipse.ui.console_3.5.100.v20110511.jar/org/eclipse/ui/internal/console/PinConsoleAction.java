/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.ui.PlatformUI
 *  org.eclipse.ui.texteditor.IUpdate
 */
package org.eclipse.ui.internal.console;

import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.IAction;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.console.IConsoleView;
import org.eclipse.ui.internal.console.ConsoleMessages;
import org.eclipse.ui.internal.console.ConsolePluginImages;
import org.eclipse.ui.internal.console.IConsoleHelpContextIds;
import org.eclipse.ui.texteditor.IUpdate;

public class PinConsoleAction
extends Action
implements IUpdate {
    private IConsoleView fView = null;

    public PinConsoleAction(IConsoleView view) {
        super(ConsoleMessages.PinConsoleAction_0, 2);
        this.setToolTipText(ConsoleMessages.PinConsoleAction_1);
        this.setImageDescriptor(ConsolePluginImages.getImageDescriptor("IMG_ELCL_PIN"));
        this.setDisabledImageDescriptor(ConsolePluginImages.getImageDescriptor("IMG_DLCL_PIN"));
        this.setHoverImageDescriptor(ConsolePluginImages.getImageDescriptor("IMG_LCL_PIN"));
        PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)this, IConsoleHelpContextIds.CONSOLE_PIN_CONSOLE_ACITON);
        this.fView = view;
        this.update();
    }

    public void run() {
        this.fView.setPinned(this.isChecked());
    }

    public void update() {
        this.setEnabled(this.fView.getConsole() != null);
        this.setChecked(this.fView.isPinned());
    }
}

