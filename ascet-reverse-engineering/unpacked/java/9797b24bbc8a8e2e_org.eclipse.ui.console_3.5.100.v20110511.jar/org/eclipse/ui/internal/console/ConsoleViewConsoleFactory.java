/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.ui.IWorkbenchPage
 *  org.eclipse.ui.IWorkbenchWindow
 *  org.eclipse.ui.PartInitException
 *  org.eclipse.ui.PlatformUI
 */
package org.eclipse.ui.internal.console;

import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.console.ConsolePlugin;
import org.eclipse.ui.console.IConsoleFactory;

public class ConsoleViewConsoleFactory
implements IConsoleFactory {
    int counter = 1;

    public void openConsole() {
        IWorkbenchPage page;
        IWorkbenchWindow window = PlatformUI.getWorkbench().getActiveWorkbenchWindow();
        if (window != null && (page = window.getActivePage()) != null) {
            try {
                String secondaryId = "Console View #" + this.counter;
                page.showView("org.eclipse.ui.console.ConsoleView", secondaryId, 1);
                ++this.counter;
            }
            catch (PartInitException e) {
                ConsolePlugin.log(e);
            }
        }
    }
}

