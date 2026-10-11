/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IStatusLineManager
 *  org.eclipse.jface.action.IToolBarManager
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.part;

import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IStatusLineManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.part.IPageBookViewPage;
import org.eclipse.ui.part.IPageSite;

public abstract class Page
implements IPageBookViewPage {
    private IPageSite site;

    protected Page() {
    }

    public abstract void createControl(Composite var1);

    public void dispose() {
        Control ctrl = this.getControl();
        if (ctrl != null && !ctrl.isDisposed()) {
            ctrl.dispose();
        }
    }

    public abstract Control getControl();

    public void makeContributions(IMenuManager menuManager, IToolBarManager toolBarManager, IStatusLineManager statusLineManager) {
    }

    public void setActionBars(IActionBars actionBars) {
        this.makeContributions(actionBars.getMenuManager(), actionBars.getToolBarManager(), actionBars.getStatusLineManager());
    }

    public void init(IPageSite pageSite) {
        this.site = pageSite;
    }

    public IPageSite getSite() {
        return this.site;
    }

    public abstract void setFocus();
}

