/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.ActionContributionItem
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IMenuCreator
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 *  org.eclipse.ui.PlatformUI
 *  org.eclipse.ui.activities.WorkbenchActivityHelper
 */
package org.eclipse.ui.internal.console;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IMenuCreator;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.console.ConsolePlugin;
import org.eclipse.ui.console.IConsoleFactory;
import org.eclipse.ui.internal.console.ConsoleFactoryExtension;
import org.eclipse.ui.internal.console.ConsoleManager;
import org.eclipse.ui.internal.console.ConsoleMessages;
import org.eclipse.ui.internal.console.ConsolePluginImages;
import org.eclipse.ui.internal.console.IConsoleHelpContextIds;

public class OpenConsoleAction
extends Action
implements IMenuCreator {
    private ConsoleFactoryExtension[] fFactoryExtensions = ((ConsoleManager)ConsolePlugin.getDefault().getConsoleManager()).getConsoleFactoryExtensions();
    private Menu fMenu;

    public OpenConsoleAction() {
        this.setText(ConsoleMessages.OpenConsoleAction_0);
        this.setToolTipText(ConsoleMessages.OpenConsoleAction_1);
        this.setImageDescriptor(ConsolePluginImages.getImageDescriptor("IMG_ELCL_NEW_CON"));
        this.setMenuCreator(this);
        PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)this, IConsoleHelpContextIds.CONSOLE_OPEN_CONSOLE_ACTION);
    }

    public void dispose() {
        this.fFactoryExtensions = null;
    }

    public void runWithEvent(Event event) {
        if (event.widget instanceof ToolItem) {
            ToolItem toolItem = (ToolItem)event.widget;
            ToolBar control = toolItem.getParent();
            Menu menu = this.getMenu((Control)control);
            Rectangle bounds = toolItem.getBounds();
            Point topLeft = new Point(bounds.x, bounds.y + bounds.height);
            menu.setLocation(control.toDisplay(topLeft));
            menu.setVisible(true);
        }
    }

    public Menu getMenu(Control parent) {
        if (this.fMenu != null) {
            this.fMenu.dispose();
        }
        this.fMenu = new Menu(parent);
        int accel = 1;
        int i = 0;
        while (i < this.fFactoryExtensions.length) {
            ConsoleFactoryExtension extension = this.fFactoryExtensions[i];
            if (!WorkbenchActivityHelper.filterItem((Object)extension) && extension.isEnabled()) {
                String label = extension.getLabel();
                ImageDescriptor image = extension.getImageDescriptor();
                this.addActionToMenu(this.fMenu, new ConsoleFactoryAction(label, image, extension), accel);
                ++accel;
            }
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

    public Menu getMenu(Menu parent) {
        return null;
    }

    private class ConsoleFactoryAction
    extends Action {
        private ConsoleFactoryExtension fConfig;
        private IConsoleFactory fFactory;

        public ConsoleFactoryAction(String label, ImageDescriptor image, ConsoleFactoryExtension extension) {
            this.setText(label);
            if (image != null) {
                this.setImageDescriptor(image);
            }
            this.fConfig = extension;
        }

        public void run() {
            try {
                if (this.fFactory == null) {
                    this.fFactory = this.fConfig.createFactory();
                }
                this.fFactory.openConsole();
            }
            catch (CoreException e) {
                ConsolePlugin.log(e);
            }
        }

        public void runWithEvent(Event event) {
            this.run();
        }
    }
}

