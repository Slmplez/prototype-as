/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.layout.FormAttachment
 *  org.eclipse.swt.layout.FormData
 *  org.eclipse.swt.layout.FormLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.ui.dialogs.FilteredTree
 *  org.eclipse.ui.dialogs.PatternFilter
 */
package org.eclipse.pde.internal.runtime.registry;

import org.eclipse.pde.internal.runtime.registry.RegistryBrowser;
import org.eclipse.swt.layout.FormAttachment;
import org.eclipse.swt.layout.FormData;
import org.eclipse.swt.layout.FormLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.ui.dialogs.FilteredTree;
import org.eclipse.ui.dialogs.PatternFilter;

public class RegistryFilteredTree
extends FilteredTree {
    private RegistryBrowser browser;

    public RegistryFilteredTree(RegistryBrowser browser, Composite parent, int treeStyle, PatternFilter filter) {
        super(parent, treeStyle, filter, true);
        this.browser = browser;
    }

    protected void createControl(Composite parent, int treeStyle) {
        super.createControl(parent, treeStyle);
        FormLayout layout = new FormLayout();
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        this.setLayout((Layout)layout);
        FormData data = new FormData();
        data.left = new FormAttachment(0, 0);
        data.right = new FormAttachment(100, 0);
        data.bottom = new FormAttachment(100, 0);
        if (this.showFilterControls) {
            FormData filterData = new FormData();
            filterData.top = new FormAttachment(0, 2);
            filterData.left = new FormAttachment(0, 2);
            filterData.right = new FormAttachment(100, -2);
            this.filterComposite.setLayoutData((Object)filterData);
            data.top = new FormAttachment((Control)this.filterComposite, 2);
        } else {
            data.top = new FormAttachment(0, 0);
        }
        this.treeComposite.setLayoutData((Object)data);
    }

    protected void updateToolbar(boolean visible) {
        super.updateToolbar(visible);
        this.browser.updateTitle();
    }
}

