/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 */
package org.eclipse.jface.action;

import org.eclipse.jface.action.AbstractGroupMarker;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;

public class Separator
extends AbstractGroupMarker {
    public Separator() {
    }

    public Separator(String groupName) {
        super(groupName);
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

    public boolean isSeparator() {
        return true;
    }
}

