/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.ICoolBarManager
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IStatusLineManager
 *  org.eclipse.jface.action.IToolBarManager
 */
package org.eclipse.ui.part;

import org.eclipse.jface.action.ICoolBarManager;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IStatusLineManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.IActionBars2;
import org.eclipse.ui.IEditorActionBarContributor;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IWorkbenchPage;

public class EditorActionBarContributor
implements IEditorActionBarContributor {
    private IActionBars bars;
    private IWorkbenchPage page;

    public void contributeToMenu(IMenuManager menuManager) {
    }

    public void contributeToStatusLine(IStatusLineManager statusLineManager) {
    }

    public void contributeToToolBar(IToolBarManager toolBarManager) {
    }

    public void contributeToCoolBar(ICoolBarManager coolBarManager) {
    }

    public IActionBars getActionBars() {
        return this.bars;
    }

    public IWorkbenchPage getPage() {
        return this.page;
    }

    public void dispose() {
    }

    public void init(IActionBars bars, IWorkbenchPage page) {
        this.page = page;
        this.init(bars);
    }

    public void init(IActionBars bars) {
        this.bars = bars;
        this.contributeToMenu(bars.getMenuManager());
        this.contributeToToolBar(bars.getToolBarManager());
        if (bars instanceof IActionBars2) {
            this.contributeToCoolBar(((IActionBars2)bars).getCoolBarManager());
        }
        this.contributeToStatusLine(bars.getStatusLineManager());
    }

    public void setActiveEditor(IEditorPart targetEditor) {
    }
}

