/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.action.ContributionItem;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.internal.FastViewBar;
import org.eclipse.ui.internal.IChangeListener;
import org.eclipse.ui.internal.IntModel;
import org.eclipse.ui.internal.RadioMenu;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;

public class FastViewBarContextMenuContribution
extends ContributionItem {
    private MenuItem orientationItem;
    private MenuItem restoreItem;
    private MenuItem closeItem;
    private FastViewBar bar;
    private RadioMenu radioButtons;
    private IViewReference selectedView;
    private IntModel currentOrientation = new IntModel(512);
    private IChangeListener orientationChangeListener = new IChangeListener(){

        public void update(boolean changed) {
            if (changed && FastViewBarContextMenuContribution.this.selectedView != null) {
                FastViewBarContextMenuContribution.this.bar.setOrientation(FastViewBarContextMenuContribution.this.selectedView, FastViewBarContextMenuContribution.this.currentOrientation.get());
            }
        }
    };

    public FastViewBarContextMenuContribution(FastViewBar bar) {
        this.bar = bar;
        this.currentOrientation.addChangeListener(this.orientationChangeListener);
    }

    public void fill(Menu menu, int index) {
        super.fill(menu, index);
        this.orientationItem = new MenuItem(menu, 64, index++);
        this.orientationItem.setText(WorkbenchMessages.FastViewBar_view_orientation);
        Menu orientationSwtMenu = new Menu(this.orientationItem);
        RadioMenu orientationMenu = new RadioMenu(orientationSwtMenu, this.currentOrientation);
        orientationMenu.addMenuItem(WorkbenchMessages.FastViewBar_horizontal, new Integer(256));
        orientationMenu.addMenuItem(WorkbenchMessages.FastViewBar_vertical, new Integer(512));
        this.orientationItem.setMenu(orientationSwtMenu);
        this.restoreItem = new MenuItem(menu, 32, index++);
        this.restoreItem.setText(WorkbenchMessages.ViewPane_fastView);
        this.restoreItem.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                FastViewBarContextMenuContribution.this.bar.restoreView(FastViewBarContextMenuContribution.this.selectedView);
            }
        });
        this.closeItem = new MenuItem(menu, 0, index++);
        this.closeItem.setText(WorkbenchMessages.WorkbenchWindow_close);
        this.closeItem.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                WorkbenchPage page;
                if (FastViewBarContextMenuContribution.this.selectedView != null && (page = FastViewBarContextMenuContribution.this.bar.getWindow().getActiveWorkbenchPage()) != null) {
                    page.hideView(FastViewBarContextMenuContribution.this.selectedView);
                }
            }
        });
        WorkbenchPage page = this.bar.getWindow().getActiveWorkbenchPage();
        if (this.selectedView != null) {
            this.restoreItem.setEnabled(page != null && page.isMoveable(this.selectedView));
        } else {
            this.restoreItem.setEnabled(false);
        }
        this.restoreItem.setSelection(true);
        if (this.selectedView != null) {
            this.closeItem.setEnabled(page != null && page.isCloseable(this.selectedView));
        } else {
            this.closeItem.setEnabled(false);
        }
        this.orientationItem.setEnabled(this.selectedView != null);
        if (this.selectedView != null) {
            this.currentOrientation.set(this.bar.getOrientation(this.selectedView), this.orientationChangeListener);
        }
    }

    public void setTarget(IViewReference selectedView) {
        this.selectedView = selectedView;
    }

    public boolean isDynamic() {
        return true;
    }

    public void dispose() {
        if (this.radioButtons != null) {
            this.radioButtons.dispose();
        }
        super.dispose();
    }
}

