/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.action.ContributionItem;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.ui.internal.IActionSetContributionItem;

public class ActionSetSeparator
extends ContributionItem
implements IActionSetContributionItem {
    private String actionSetId;

    public ActionSetSeparator(String groupName, String newActionSetId) {
        super(groupName);
        this.actionSetId = newActionSetId;
    }

    public void fill(Menu menu, int index) {
        if (index >= 0) {
            new MenuItem(menu, 2, index);
        } else {
            new MenuItem(menu, 2);
        }
    }

    public void fill(ToolBar toolbar, int index) {
        if (index >= 0) {
            new ToolItem(toolbar, 2, index);
        } else {
            new ToolItem(toolbar, 2);
        }
    }

    public String getActionSetId() {
        return this.actionSetId;
    }

    public boolean isSeparator() {
        return true;
    }

    public void setActionSetId(String newActionSetId) {
        this.actionSetId = newActionSetId;
    }
}

