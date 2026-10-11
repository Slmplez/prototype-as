/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IToolBarManager
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.ui.actions.ActionFactory
 */
package org.eclipse.ui.internal.console;

import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.actions.ActionFactory;
import org.eclipse.ui.console.IConsoleConstants;
import org.eclipse.ui.console.IConsoleView;
import org.eclipse.ui.console.TextConsole;
import org.eclipse.ui.console.TextConsolePage;
import org.eclipse.ui.console.TextConsoleViewer;
import org.eclipse.ui.internal.console.IOConsoleViewer;
import org.eclipse.ui.internal.console.ScrollLockAction;

public class IOConsolePage
extends TextConsolePage {
    private ScrollLockAction fScrollLockAction;
    private boolean fReadOnly;
    private IPropertyChangeListener fPropertyChangeListener = new IPropertyChangeListener(){

        public void propertyChange(PropertyChangeEvent event) {
            String property = event.getProperty();
            if (property.equals(IConsoleConstants.P_CONSOLE_OUTPUT_COMPLETE)) {
                IOConsolePage.this.setReadOnly();
            }
        }
    };

    public IOConsolePage(TextConsole console, IConsoleView view) {
        super(console, view);
        console.addPropertyChangeListener(this.fPropertyChangeListener);
    }

    public void createControl(Composite parent) {
        super.createControl(parent);
        if (this.fReadOnly) {
            IOConsoleViewer viewer = (IOConsoleViewer)this.getViewer();
            viewer.setReadOnly();
        }
    }

    protected TextConsoleViewer createViewer(Composite parent) {
        return new IOConsoleViewer(parent, (TextConsole)this.getConsole());
    }

    public void setAutoScroll(boolean scroll) {
        IOConsoleViewer viewer = (IOConsoleViewer)this.getViewer();
        if (viewer != null) {
            viewer.setAutoScroll(scroll);
            this.fScrollLockAction.setChecked(!scroll);
        }
    }

    public void setReadOnly() {
        this.fReadOnly = true;
        IOConsoleViewer viewer = (IOConsoleViewer)this.getViewer();
        if (viewer != null) {
            viewer.setReadOnly();
        }
    }

    protected void createActions() {
        super.createActions();
        this.fScrollLockAction = new ScrollLockAction(this.getConsoleView());
        this.setAutoScroll(!this.fScrollLockAction.isChecked());
    }

    protected void contextMenuAboutToShow(IMenuManager menuManager) {
        super.contextMenuAboutToShow(menuManager);
        menuManager.add((IAction)this.fScrollLockAction);
        IOConsoleViewer viewer = (IOConsoleViewer)this.getViewer();
        if (!viewer.isReadOnly()) {
            menuManager.remove(ActionFactory.CUT.getId());
            menuManager.remove(ActionFactory.PASTE.getId());
        }
    }

    protected void configureToolBar(IToolBarManager mgr) {
        super.configureToolBar(mgr);
        mgr.appendToGroup("outputGroup", (IAction)this.fScrollLockAction);
    }

    public void dispose() {
        if (this.fScrollLockAction != null) {
            this.fScrollLockAction.dispose();
            this.fScrollLockAction = null;
        }
        this.getConsole().removePropertyChangeListener(this.fPropertyChangeListener);
        super.dispose();
    }
}

