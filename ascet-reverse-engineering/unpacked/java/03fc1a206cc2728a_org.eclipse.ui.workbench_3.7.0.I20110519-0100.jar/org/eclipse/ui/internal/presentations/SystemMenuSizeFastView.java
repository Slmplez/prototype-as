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
package org.eclipse.ui.internal.presentations;

import org.eclipse.jface.action.ContributionItem;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.ui.internal.FastViewPane;
import org.eclipse.ui.internal.WorkbenchMessages;

public class SystemMenuSizeFastView
extends ContributionItem {
    private FastViewPane fastViewPane;

    public SystemMenuSizeFastView(FastViewPane fastViewPane) {
        this.fastViewPane = fastViewPane;
    }

    public void dispose() {
        this.fastViewPane = null;
    }

    public void fill(Menu menu, int index) {
        MenuItem item = new MenuItem(menu, 0, index);
        item.setText(WorkbenchMessages.PartPane_size);
        item.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                SystemMenuSizeFastView.this.fastViewPane.moveSash();
            }
        });
        item.setEnabled(this.fastViewPane.getCurrentPane() != null);
    }

    public boolean isDynamic() {
        return true;
    }
}

