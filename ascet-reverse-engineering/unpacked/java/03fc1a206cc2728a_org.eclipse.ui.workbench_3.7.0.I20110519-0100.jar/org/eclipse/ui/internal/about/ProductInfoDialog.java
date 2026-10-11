/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.TabFolder
 *  org.eclipse.swt.widgets.TabItem
 */
package org.eclipse.ui.internal.about;

import org.eclipse.core.runtime.Assert;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.TabFolder;
import org.eclipse.swt.widgets.TabItem;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.about.InstallationPage;
import org.eclipse.ui.internal.about.InstallationDialog;
import org.eclipse.ui.internal.about.ProductInfoPage;

public abstract class ProductInfoDialog
extends InstallationDialog {
    ProductInfoPage page;
    String title;
    String helpContextId;

    protected ProductInfoDialog(Shell shell) {
        super(shell, PlatformUI.getWorkbench().getActiveWorkbenchWindow());
    }

    public void initializeDialog(ProductInfoPage page, String title, String helpContextId) {
        this.page = page;
        this.title = title;
        this.helpContextId = helpContextId;
    }

    protected void createFolderItems(TabFolder folder) {
        TabItem item = new TabItem(folder, 0);
        item.setText(this.title);
        Composite control = new Composite((Composite)folder, 2048);
        control.setLayout((Layout)new GridLayout());
        item.setControl((Control)control);
        this.page.createControl(control);
        item.setData((Object)this.page);
        item.setData("ID", (Object)this.page.getId());
        this.page.setPageContainer(this);
        item.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                ProductInfoDialog.this.page.dispose();
            }
        });
        control.layout(true, true);
    }

    protected void createButtonsForButtonBar(Composite parent) {
        super.createButtonsForButtonBar(parent);
        this.createButtons(this.page);
    }

    protected void configureShell(Shell newShell) {
        super.configureShell(newShell);
        newShell.setText(this.title);
        if (this.helpContextId != null) {
            PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)newShell, this.helpContextId);
        }
    }

    protected String pageToId(InstallationPage page) {
        Assert.isLegal((page == this.page ? 1 : 0) != 0);
        return this.page.getId();
    }
}

