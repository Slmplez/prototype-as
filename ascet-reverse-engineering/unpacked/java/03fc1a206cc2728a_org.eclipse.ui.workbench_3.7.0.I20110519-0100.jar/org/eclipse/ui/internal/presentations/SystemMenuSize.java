/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.swt.widgets.Menu
 */
package org.eclipse.ui.internal.presentations;

import org.eclipse.jface.action.ContributionItem;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.ui.internal.PartPane;

public class SystemMenuSize
extends ContributionItem {
    private PartPane partPane;

    public SystemMenuSize(PartPane pane) {
        this.setPane(pane);
    }

    public void setPane(PartPane pane) {
        this.partPane = pane;
    }

    public void dispose() {
        this.partPane = null;
    }

    public void fill(Menu menu, int index) {
        if (this.partPane != null) {
            this.partPane.addSizeMenuItem(menu, index);
        }
    }

    public boolean isDynamic() {
        return true;
    }
}

