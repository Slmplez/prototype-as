/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IToolBarManager
 *  org.eclipse.jface.action.ToolBarManager
 *  org.eclipse.jface.viewers.TreeViewer
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.ToolBar
 */
package org.eclipse.ui.part;

import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.action.ToolBarManager;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.ui.part.DrillDownAdapter;

public class DrillDownComposite
extends Composite {
    private ToolBarManager toolBarMgr;
    private TreeViewer fChildTree;
    private DrillDownAdapter adapter;

    public DrillDownComposite(Composite parent, int style) {
        super(parent, style);
        this.createNavigationButtons();
    }

    protected void createNavigationButtons() {
        GridLayout layout = new GridLayout();
        layout.verticalSpacing = 0;
        layout.horizontalSpacing = 0;
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        this.setLayout((Layout)layout);
        this.toolBarMgr = new ToolBarManager(0x800000);
        ToolBar toolBar = this.toolBarMgr.createControl((Composite)this);
        GridData gid = new GridData();
        gid.horizontalAlignment = 4;
        gid.verticalAlignment = 1;
        toolBar.setLayoutData((Object)gid);
    }

    public void setChildTree(TreeViewer aViewer) {
        this.fChildTree = aViewer;
        this.adapter = new DrillDownAdapter(this.fChildTree);
        this.adapter.addNavigationActions((IToolBarManager)this.toolBarMgr);
        this.toolBarMgr.update(true);
        this.fChildTree.getTree().setLayoutData((Object)new GridData(4, 4, true, true));
        this.layout();
    }
}

