/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IMenuManager
 */
package org.eclipse.ui.actions;

import org.eclipse.jface.action.IMenuManager;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.actions.ActionContext;

public abstract class ActionGroup {
    private ActionContext context;

    public ActionContext getContext() {
        return this.context;
    }

    public void setContext(ActionContext context) {
        this.context = context;
    }

    public void fillContextMenu(IMenuManager menu) {
    }

    public void fillActionBars(IActionBars actionBars) {
    }

    public void updateActionBars() {
    }

    public void dispose() {
        this.setContext(null);
    }
}

