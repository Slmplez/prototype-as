/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 */
package org.eclipse.ui.console.actions;

import org.eclipse.jface.action.Action;
import org.eclipse.ui.console.ConsolePlugin;
import org.eclipse.ui.console.IConsole;
import org.eclipse.ui.internal.console.ConsoleMessages;
import org.eclipse.ui.internal.console.ConsolePluginImages;

public class CloseConsoleAction
extends Action {
    private IConsole fConsole;

    public CloseConsoleAction(IConsole console) {
        super(ConsoleMessages.CloseConsoleAction_0, ConsolePluginImages.getImageDescriptor("IMG_ELCL_CLOSE"));
        this.setToolTipText(ConsoleMessages.CloseConsoleAction_1);
        this.fConsole = console;
    }

    public void run() {
        ConsolePlugin.getDefault().getConsoleManager().removeConsoles(new IConsole[]{this.fConsole});
    }
}

