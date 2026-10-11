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

public abstract class ContributionItem
implements IContributionItem {
    private String id = null;
    private boolean visible = true;
    private IContributionManager parent;

    protected ContributionItem() {
        this(null);
    }

    protected ContributionItem(String id) {
        this.id = id;
    }

    public void dispose() {
    }

    public void fill(Composite parent) {
    }

    public void fill(Menu menu, int index) {
    }

    public void fill(ToolBar parent, int index) {
    }

    public void fill(CoolBar parent, int index) {
    }

    public void saveWidgetState() {
    }

    public String getId() {
        return this.id;
    }

    public IContributionManager getParent() {
        return this.parent;
    }

    public boolean isDirty() {
        return this.isDynamic();
    }

    public boolean isEnabled() {
        return true;
    }

    public boolean isDynamic() {
        return false;
    }

    public boolean isGroupMarker() {
        return false;
    }

    public boolean isSeparator() {
        return false;
    }

    public boolean isVisible() {
        return this.visible;
    }

    public void setVisible(boolean visible) {
        this.visible = visible;
    }

    public String toString() {
        return String.valueOf(this.getClass().getName()) + "(id=" + this.getId() + ")";
    }

    public void update() {
    }

    public void setParent(IContributionManager parent) {
        this.parent = parent;
    }

    public void update(String id) {
    }

    public void setId(String itemId) {
        this.id = itemId;
    }
}

