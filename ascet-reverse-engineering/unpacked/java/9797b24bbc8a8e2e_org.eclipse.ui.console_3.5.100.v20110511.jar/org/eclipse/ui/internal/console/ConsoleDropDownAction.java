/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.ActionContributionItem
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IMenuCreator
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.ui.PlatformUI
 *  org.eclipse.ui.progress.UIJob
 *  org.eclipse.ui.texteditor.IUpdate
 */
package org.eclipse.ui.internal.console;

import java.util.List;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IMenuCreator;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.console.ConsolePlugin;
import org.eclipse.ui.console.IConsole;
import org.eclipse.ui.console.IConsoleListener;
import org.eclipse.ui.console.IConsoleView;
import org.eclipse.ui.internal.console.ConsoleMessages;
import org.eclipse.ui.internal.console.ConsolePluginImages;
import org.eclipse.ui.internal.console.ConsoleView;
import org.eclipse.ui.internal.console.IConsoleHelpContextIds;
import org.eclipse.ui.internal.console.ShowConsoleAction;
import org.eclipse.ui.progress.UIJob;
import org.eclipse.ui.texteditor.IUpdate;

class ConsoleDropDownAction
extends Action
implements IMenuCreator,
IConsoleListener,
IUpdate {
    private IConsoleView fView;
    private Menu fMenu;

    public void update() {
        IConsole[] consoles = ConsolePlugin.getDefault().getConsoleManager().getConsoles();
        this.setEnabled(consoles.length > 1);
    }

    public ConsoleDropDownAction(IConsoleView view) {
        this.fView = view;
        this.setText(ConsoleMessages.ConsoleDropDownAction_0);
        this.setToolTipText(ConsoleMessages.ConsoleDropDownAction_1);
        this.setImageDescriptor(ConsolePluginImages.getImageDescriptor("IMG_VIEW_CONSOLE"));
        PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)this, IConsoleHelpContextIds.CONSOLE_DISPLAY_CONSOLE_ACTION);
        this.setMenuCreator(this);
        ConsolePlugin.getDefault().getConsoleManager().addConsoleListener(this);
        this.update();
    }

    public void dispose() {
        if (this.fMenu != null) {
            this.fMenu.dispose();
        }
        this.fView = null;
        ConsolePlugin.getDefault().getConsoleManager().removeConsoleListener(this);
    }

    public Menu getMenu(Menu parent) {
        return null;
    }

    public Menu getMenu(Control parent) {
        if (this.fMenu != null) {
            this.fMenu.dispose();
        }
        this.fMenu = new Menu(parent);
        IConsole[] consoles = ConsolePlugin.getDefault().getConsoleManager().getConsoles();
        IConsole current = this.fView.getConsole();
        int i = 0;
        while (i < consoles.length) {
            IConsole console = consoles[i];
            ShowConsoleAction action = new ShowConsoleAction(this.fView, console);
            action.setChecked(console.equals(current));
            this.addActionToMenu(this.fMenu, action, i + 1);
            ++i;
        }
        return this.fMenu;
    }

    private void addActionToMenu(Menu parent, Action action, int accelerator) {
        if (accelerator < 10) {
            StringBuffer label = new StringBuffer();
            label.append('&');
            label.append(accelerator);
            label.append(' ');
            label.append(action.getText());
            action.setText(label.toString());
        }
        ActionContributionItem item = new ActionContributionItem((IAction)action);
        item.fill(parent, -1);
    }

    public void run() {
        List stack;
        ConsoleView consoleView = (ConsoleView)this.fView;
        boolean pinned = consoleView.isPinned();
        if (pinned) {
            consoleView.setPinned(false);
        }
        if ((stack = consoleView.getConsoleStack()).size() > 1) {
            IConsole console = (IConsole)stack.get(1);
            this.fView.display(console);
        }
        if (pinned) {
            consoleView.setPinned(true);
        }
    }

    public void consolesAdded(IConsole[] consoles) {
        UIJob job = new UIJob(""){

            public IStatus runInUIThread(IProgressMonitor monitor) {
                ConsoleDropDownAction.this.update();
                return Status.OK_STATUS;
            }
        };
        job.setSystem(true);
        job.setPriority(10);
        job.schedule();
    }

    public void consolesRemoved(IConsole[] consoles) {
        UIJob job = new UIJob(""){

            public IStatus runInUIThread(IProgressMonitor monitor) {
                if (ConsoleDropDownAction.this.fMenu != null) {
                    ConsoleDropDownAction.this.fMenu.dispose();
                }
                ConsoleDropDownAction.this.update();
                return Status.OK_STATUS;
            }
        };
        job.setSystem(true);
        job.setPriority(10);
        job.schedule();
    }
}

