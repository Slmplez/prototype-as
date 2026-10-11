/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.jface.action.IMenuCreator
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Menu
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.jface.action.IMenuCreator;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.ui.IActionDelegate;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.IWorkbenchWindowPulldownDelegate;
import org.eclipse.ui.IWorkbenchWindowPulldownDelegate2;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.internal.WWinPluginAction;

public class WWinPluginPulldown
extends WWinPluginAction {
    private final IMenuCreator menuProxy = new MenuProxy();

    public WWinPluginPulldown(IConfigurationElement actionElement, IWorkbenchWindow window, String id, int style) {
        super(actionElement, window, id, style);
        this.setMenuCreator(this.menuProxy);
    }

    protected IActionDelegate validateDelegate(Object obj) throws WorkbenchException {
        if (obj instanceof IWorkbenchWindowPulldownDelegate) {
            return (IWorkbenchWindowPulldownDelegate)obj;
        }
        throw new WorkbenchException("Action must implement IWorkbenchWindowPulldownDelegate");
    }

    protected IWorkbenchWindowPulldownDelegate getPulldownDelegate() {
        IActionDelegate delegate = this.getDelegate();
        if (delegate == null) {
            this.createDelegate();
            delegate = this.getDelegate();
        }
        return (IWorkbenchWindowPulldownDelegate)delegate;
    }

    private class MenuProxy
    implements IMenuCreator {
        private MenuProxy() {
        }

        public Menu getMenu(Control parent) {
            IWorkbenchWindowPulldownDelegate delegate = WWinPluginPulldown.this.getPulldownDelegate();
            if (delegate != null) {
                MenuLoader menuLoader = new MenuLoader(delegate, parent);
                SafeRunner.run((ISafeRunnable)menuLoader);
                return menuLoader.getMenu();
            }
            return null;
        }

        public Menu getMenu(Menu parent) {
            IWorkbenchWindowPulldownDelegate delegate = WWinPluginPulldown.this.getPulldownDelegate();
            if (delegate instanceof IWorkbenchWindowPulldownDelegate2) {
                IWorkbenchWindowPulldownDelegate2 delegate2 = (IWorkbenchWindowPulldownDelegate2)delegate;
                MenuLoader menuLoader = new MenuLoader(delegate2, parent);
                SafeRunner.run((ISafeRunnable)menuLoader);
                return menuLoader.getMenu();
            }
            return null;
        }

        public void dispose() {
        }

        private class MenuLoader
        implements ISafeRunnable {
            private final Control control;
            private final IWorkbenchWindowPulldownDelegate delegate;
            private Menu menu = null;
            private final Menu parent;

            private MenuLoader(IWorkbenchWindowPulldownDelegate2 delegate, Menu parent) {
                this.delegate = delegate;
                this.parent = parent;
                this.control = null;
            }

            private MenuLoader(IWorkbenchWindowPulldownDelegate delegate, Control parent) {
                this.delegate = delegate;
                this.parent = null;
                this.control = parent;
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
}

