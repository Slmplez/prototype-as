/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.help.IContext
 *  org.eclipse.help.IHelp
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.swt.events.HelpListener
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 */
package org.eclipse.ui.help;

import org.eclipse.help.IContext;
import org.eclipse.help.IHelp;
import org.eclipse.jface.action.IAction;
import org.eclipse.swt.events.HelpListener;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.commands.ICommand;
import org.eclipse.ui.help.IContextComputer;
import org.eclipse.ui.internal.help.WorkbenchHelpSystem;

public class WorkbenchHelp {
    private WorkbenchHelp() {
    }

    public static void displayHelp() {
        PlatformUI.getWorkbench().getHelpSystem().displayHelp();
    }

    public static void displayContext(IContext context, int x, int y) {
        PlatformUI.getWorkbench().getHelpSystem().displayContext(context, x, y);
    }

    public static void displayHelpResource(String href) {
        PlatformUI.getWorkbench().getHelpSystem().displayHelpResource(href);
    }

    public static HelpListener createHelpListener(ICommand command) {
        return WorkbenchHelpSystem.getInstance().createHelpListener(command);
    }

    public static void displayHelp(String contextId) {
        PlatformUI.getWorkbench().getHelpSystem().displayHelp(contextId);
    }

    public static void displayHelp(IContext context) {
        PlatformUI.getWorkbench().getHelpSystem().displayHelp(context);
    }

    public static Object getHelp(Control control) {
        return control.getData("org.eclipse.ui.help");
    }

    public static Object getHelp(Menu menu) {
        return menu.getData("org.eclipse.ui.help");
    }

    public static Object getHelp(MenuItem menuItem) {
        return menuItem.getData("org.eclipse.ui.help");
    }

    public static IHelp getHelpSupport() {
        return WorkbenchHelpSystem.getInstance().getHelpSupport();
    }

    public static boolean isContextHelpDisplayed() {
        return PlatformUI.getWorkbench().getHelpSystem().isContextHelpDisplayed();
    }

    public static void setHelp(IAction action, Object[] contexts) {
        WorkbenchHelpSystem.getInstance().setHelp(action, contexts);
    }

    public static void setHelp(IAction action, IContextComputer computer) {
        WorkbenchHelpSystem.getInstance().setHelp(action, computer);
    }

    public static void setHelp(Control control, Object[] contexts) {
        WorkbenchHelpSystem.getInstance().setHelp(control, contexts);
    }

    public static void setHelp(Control control, IContextComputer computer) {
        WorkbenchHelpSystem.getInstance().setHelp(control, computer);
    }

    public static void setHelp(Menu menu, Object[] contexts) {
        WorkbenchHelpSystem.getInstance().setHelp(menu, contexts);
    }

    public static void setHelp(Menu menu, IContextComputer computer) {
        WorkbenchHelpSystem.getInstance().setHelp(menu, computer);
    }

    public static void setHelp(MenuItem item, Object[] contexts) {
        WorkbenchHelpSystem.getInstance().setHelp(item, contexts);
    }

    public static void setHelp(MenuItem item, IContextComputer computer) {
        WorkbenchHelpSystem.getInstance().setHelp(item, computer);
    }

    public static void setHelp(IAction action, String contextId) {
        PlatformUI.getWorkbench().getHelpSystem().setHelp(action, contextId);
    }

    public static void setHelp(Control control, String contextId) {
        PlatformUI.getWorkbench().getHelpSystem().setHelp(control, contextId);
    }

    public static void setHelp(Menu menu, String contextId) {
        PlatformUI.getWorkbench().getHelpSystem().setHelp(menu, contextId);
    }

    public static void setHelp(MenuItem item, String contextId) {
        PlatformUI.getWorkbench().getHelpSystem().setHelp(item, contextId);
    }
}

