/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.common.CommandException
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.menus.IWidget
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.CoolBar
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.ui.internal.menus;

import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.common.CommandException;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.menus.IWidget;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.CoolBar;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.ui.IWorkbenchWindowPulldownDelegate;
import org.eclipse.ui.IWorkbenchWindowPulldownDelegate2;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.services.IServiceLocator;

final class PulldownDelegateWidgetProxy
implements IWidget {
    private final ParameterizedCommand command;
    private IConfigurationElement configurationElement;
    private IWorkbenchWindowPulldownDelegate delegate = null;
    private final String delegateAttributeName;
    private final DisposeListener disposeListener = new DisposeListener(){

        public void widgetDisposed(DisposeEvent e) {
            if (e.widget == PulldownDelegateWidgetProxy.this.widget) {
                PulldownDelegateWidgetProxy.this.dispose();
                PulldownDelegateWidgetProxy.this.widget = null;
            }
        }
    };
    private final IServiceLocator locator;
    private final Listener selectionListener = new Listener(){

        public final void handleEvent(Event event) {
            Widget item = event.widget;
            if (item == null) {
                return;
            }
            int style = item.getStyle();
            if ((style & 4) != 0 && event.detail == 4 && item instanceof ToolItem) {
                ToolItem toolItem = (ToolItem)item;
                ToolBar toolBar = toolItem.getParent();
                if (PulldownDelegateWidgetProxy.this.loadDelegate() && PulldownDelegateWidgetProxy.this.delegate instanceof IWorkbenchWindowPulldownDelegate2) {
                    IWorkbenchWindowPulldownDelegate2 delegate2 = (IWorkbenchWindowPulldownDelegate2)PulldownDelegateWidgetProxy.this.delegate;
                    MenuLoader loader = new MenuLoader((IWorkbenchWindowPulldownDelegate)delegate2, (Control)toolBar);
                    SafeRunner.run((ISafeRunnable)loader);
                    Menu subMenu = loader.getMenu();
                    if (subMenu != null) {
                        Rectangle bounds = toolItem.getBounds();
                        Point location = toolBar.toDisplay(new Point(bounds.x, bounds.y + bounds.height));
                        subMenu.setLocation(location);
                        subMenu.setVisible(true);
                        return;
                    }
                }
            }
            IServiceLocator iServiceLocator = PulldownDelegateWidgetProxy.this.locator;
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            IHandlerService service = (IHandlerService)iServiceLocator.getService(clazz);
            try {
                service.executeCommand(PulldownDelegateWidgetProxy.this.command, event);
            }
            catch (CommandException commandException) {}
        }
    };
    private Widget widget = null;
    static /* synthetic */ Class class$0;

    public PulldownDelegateWidgetProxy(IConfigurationElement configurationElement, String delegateAttributeName, ParameterizedCommand command, IServiceLocator locator) {
        if (configurationElement == null) {
            throw new NullPointerException("The configuration element backing a handler proxy cannot be null");
        }
        if (delegateAttributeName == null) {
            throw new NullPointerException("The attribute containing the handler class must be known");
        }
        if (command == null) {
            throw new NullPointerException("The command cannot be null");
        }
        this.configurationElement = configurationElement;
        this.delegateAttributeName = delegateAttributeName;
        this.command = command;
        this.locator = locator;
    }

    public final void dispose() {
        if (this.delegate != null) {
            this.delegate.dispose();
        }
    }

    public final void fill(Composite parent) {
    }

    public final void fill(CoolBar parent, int index) {
    }

    public final void fill(Menu parent, int index) {
        if (this.widget != null || parent == null) {
            return;
        }
        MenuItem menuItem = index >= 0 ? new MenuItem(parent, 64, index) : new MenuItem(parent, 64);
        menuItem.setData((Object)this);
        this.widget = menuItem;
        if (this.loadDelegate() && this.delegate instanceof IWorkbenchWindowPulldownDelegate2) {
            IWorkbenchWindowPulldownDelegate2 delegate2 = (IWorkbenchWindowPulldownDelegate2)this.delegate;
            MenuLoader loader = new MenuLoader(delegate2, parent);
            SafeRunner.run((ISafeRunnable)loader);
            Menu subMenu = loader.getMenu();
            if (subMenu != null) {
                menuItem.setMenu(subMenu);
            }
        }
        menuItem.addDisposeListener(this.disposeListener);
        menuItem.addListener(13, this.selectionListener);
    }

    public final void fill(ToolBar parent, int index) {
        if (this.widget != null && parent == null) {
            return;
        }
        ToolItem toolItem = index >= 0 ? new ToolItem(parent, 4, index) : new ToolItem(parent, 4);
        toolItem.setData((Object)this);
        this.widget = toolItem;
        toolItem.addDisposeListener(this.disposeListener);
        toolItem.addListener(13, this.selectionListener);
    }

    private final boolean loadDelegate() {
        if (this.delegate == null) {
            try {
                this.delegate = (IWorkbenchWindowPulldownDelegate)this.configurationElement.createExecutableExtension(this.delegateAttributeName);
                this.configurationElement = null;
                return true;
            }
            catch (ClassCastException e) {
                Status status = new Status(4, WorkbenchPlugin.PI_WORKBENCH, 0, "The proxied delegate was the wrong class", (Throwable)e);
                WorkbenchPlugin.log("The proxied delegate was the wrong class", (IStatus)status);
                return false;
            }
            catch (CoreException e) {
                String message = "The proxied delegate for '" + this.configurationElement.getAttribute(this.delegateAttributeName) + "' could not be loaded";
                Status status = new Status(4, WorkbenchPlugin.PI_WORKBENCH, 0, message, (Throwable)e);
                WorkbenchPlugin.log(message, (IStatus)status);
                return false;
            }
        }
        return true;
    }

    public final String toString() {
        if (this.delegate == null) {
            return this.configurationElement.getAttribute(this.delegateAttributeName);
        }
        return this.delegate.toString();
    }

    private static final class MenuLoader
    implements ISafeRunnable {
        private final Control control;
        private final IWorkbenchWindowPulldownDelegate delegate;
        private Menu menu = null;
        private final Menu parent;

        private MenuLoader(IWorkbenchWindowPulldownDelegate delegate, Control parent) {
            this.delegate = delegate;
            this.parent = null;
            this.control = parent;
        }

        private MenuLoader(IWorkbenchWindowPulldownDelegate2 delegate, Menu parent) {
            this.delegate = delegate;
            this.parent = parent;
            this.control = null;
        }

        private Menu getMenu() {
            return this.menu;
        }

        public void handleException(Throwable exception) {
        }

        public void run() throws Exception {
            this.menu = this.parent == null ? this.delegate.getMenu(this.control) : ((IWorkbenchWindowPulldownDelegate2)this.delegate).getMenu(this.parent);
        }
    }
}

