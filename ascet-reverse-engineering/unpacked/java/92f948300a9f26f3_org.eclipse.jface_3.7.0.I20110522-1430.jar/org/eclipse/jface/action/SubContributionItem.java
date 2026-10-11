/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.CoolBar
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.ToolBar
 */
package org.eclipse.jface.action;

import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IContributionManager;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.CoolBar;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.ToolBar;

public class SubContributionItem
implements IContributionItem {
    private boolean visible;
    private IContributionItem innerItem;

    public SubContributionItem(IContributionItem item) {
        this.innerItem = item;
    }

    public void dispose() {
        this.innerItem.dispose();
    }

    public void fill(Composite parent) {
        if (this.visible) {
            this.innerItem.fill(parent);
        }
    }

    public void fill(Menu parent, int index) {
        if (this.visible) {
            this.innerItem.fill(parent, index);
        }
    }

    public void fill(ToolBar parent, int index) {
        if (this.visible) {
            this.innerItem.fill(parent, index);
        }
    }

    public String getId() {
        return this.innerItem.getId();
    }

    public IContributionItem getInnerItem() {
        return this.innerItem;
    }

    public boolean isEnabled() {
        return this.innerItem.isEnabled();
    }

    public boolean isDirty() {
        return this.innerItem.isDirty();
    }

    public boolean isDynamic() {
        return this.innerItem.isDynamic();
    }

    public boolean isGroupMarker() {
        return this.innerItem.isGroupMarker();
    }

    public boolean isSeparator() {
        return this.innerItem.isSeparator();
    }

    public boolean isVisible() {
        return this.visible && this.innerItem.isVisible();
    }

    public void setParent(IContributionManager parent) {
    }

    public void setVisible(boolean visible) {
        this.visible = visible;
    }

    public void update() {
        this.innerItem.update();
    }

    public void update(String id) {
        this.innerItem.update(id);
    }

    public void fill(CoolBar parent, int index) {
        if (this.visible) {
            this.innerItem.fill(parent, index);
        }
    }

    public void saveWidgetState() {
    }
}

