/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 */
package org.eclipse.ui.internal.console;

import org.eclipse.jface.action.Action;
import org.eclipse.ui.console.IConsole;
import org.eclipse.ui.console.IConsoleView;

public class ShowConsoleAction
extends Action {
    private IConsole fConsole;
    private IConsoleView fView;

    public void run() {
        ShowConsoleAction.showConsole(this.fConsole, this.fView);
    }

    public static void showConsole(IConsole console, IConsoleView consoleView) {
        if (!console.equals(consoleView.getConsole())) {
            boolean pinned = consoleView.isPinned();
            if (pinned) {
                consoleView.setPinned(false);
            }
            consoleView.display(console);
            if (pinned) {
                consoleView.setPinned(true);
            }
        }
    }

    public ShowConsoleAction(IConsoleView view, IConsole console) {
        super(console.getName(), 8);
        this.fConsole = console;
        this.fView = view;
        this.setImageDescriptor(console.getImageDescriptor());
    }
}

