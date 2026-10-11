/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.ICoolBarManager
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IStatusLineManager
 */
package org.eclipse.ui.application;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.ICoolBarManager;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IStatusLineManager;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.actions.ActionFactory;
import org.eclipse.ui.application.IActionBarConfigurer;

public class ActionBarAdvisor {
    public static final int FILL_PROXY = 1;
    public static final int FILL_MENU_BAR = 2;
    public static final int FILL_COOL_BAR = 4;
    public static final int FILL_STATUS_LINE = 8;
    private IActionBarConfigurer actionBarConfigurer;
    private Map actions = new HashMap();

    public ActionBarAdvisor(IActionBarConfigurer configurer) {
        Assert.isNotNull((Object)configurer);
        this.actionBarConfigurer = configurer;
    }

    protected IActionBarConfigurer getActionBarConfigurer() {
        return this.actionBarConfigurer;
    }

    public void fillActionBars(int flags) {
        if ((flags & 1) == 0) {
            this.makeActions(this.actionBarConfigurer.getWindowConfigurer().getWindow());
        }
        if ((flags & 2) != 0) {
            this.fillMenuBar(this.actionBarConfigurer.getMenuManager());
        }
        if ((flags & 4) != 0) {
            this.fillCoolBar(this.actionBarConfigurer.getCoolBarManager());
        }
        if ((flags & 8) != 0) {
            this.fillStatusLine(this.actionBarConfigurer.getStatusLineManager());
        }
    }

    protected void makeActions(IWorkbenchWindow window) {
    }

    protected void register(IAction action) {
        Assert.isNotNull((Object)action, (String)"Action must not be null");
        String id = action.getId();
        Assert.isNotNull((Object)id, (String)"Action must not have null id");
        this.getActionBarConfigurer().registerGlobalAction(action);
        this.actions.put(id, action);
    }

    protected IAction getAction(String id) {
        return (IAction)this.actions.get(id);
    }

    protected void fillMenuBar(IMenuManager menuBar) {
    }

    protected void fillCoolBar(ICoolBarManager coolBar) {
    }

    protected void fillStatusLine(IStatusLineManager statusLine) {
    }

    public boolean isApplicationMenu(String menuId) {
        return false;
    }

    public void dispose() {
        this.disposeActions();
    }

    protected void disposeActions() {
        Iterator i = this.actions.values().iterator();
        while (i.hasNext()) {
            IAction action = (IAction)i.next();
            this.disposeAction(action);
        }
        this.actions.clear();
    }

    protected void disposeAction(IAction action) {
        if (action instanceof ActionFactory.IWorkbenchAction) {
            ((ActionFactory.IWorkbenchAction)action).dispose();
        }
    }

    public IStatus saveState(IMemento memento) {
        return Status.OK_STATUS;
    }

    public IStatus restoreState(IMemento memento) {
        return Status.OK_STATUS;
    }
}

