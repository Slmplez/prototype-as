/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IToolBarManager
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.SubActionBars;
import org.eclipse.ui.internal.ViewPane;
import org.eclipse.ui.services.IServiceLocator;

public class ViewActionBars
extends SubActionBars {
    private ViewPane pane;

    public ViewActionBars(IActionBars parent, IServiceLocator serviceLocator, ViewPane pane) {
        super(parent, serviceLocator);
        this.pane = pane;
    }

    public IMenuManager getMenuManager() {
        return this.pane.getMenuManager();
    }

    public IToolBarManager getToolBarManager() {
        return this.pane.getToolBarManager();
    }

    public void updateActionBars() {
        this.pane.updateActionBars();
        this.getStatusLineManager().update(false);
        this.fireActionHandlersChanged();
    }
}

