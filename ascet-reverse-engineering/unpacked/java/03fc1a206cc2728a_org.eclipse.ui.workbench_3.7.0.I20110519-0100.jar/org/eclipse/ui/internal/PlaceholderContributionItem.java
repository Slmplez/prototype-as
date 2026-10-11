/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IContributionManager
 *  org.eclipse.jface.internal.provisional.action.IToolBarContributionItem
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.CoolBar
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.ToolBar
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IContributionManager;
import org.eclipse.jface.internal.provisional.action.IToolBarContributionItem;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.CoolBar;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.ToolBar;

final class PlaceholderContributionItem
implements IContributionItem {
    private final String id;
    private final int storedHeight;
    private final int storedMinimumItems;
    private final boolean storedUseChevron;
    private final int storedWidth;

    PlaceholderContributionItem(IToolBarContributionItem item) {
        item.saveWidgetState();
        this.id = item.getId();
        this.storedHeight = item.getCurrentHeight();
        this.storedWidth = item.getCurrentWidth();
        this.storedMinimumItems = item.getMinimumItemsToShow();
        this.storedUseChevron = item.getUseChevron();
    }

    public void dispose() {
    }

    public void fill(Composite parent) {
        throw new UnsupportedOperationException();
    }

    public void fill(CoolBar parent, int index) {
        throw new UnsupportedOperationException();
    }

    public void fill(Menu parent, int index) {
        throw new UnsupportedOperationException();
    }

    public void fill(ToolBar parent, int index) {
        throw new UnsupportedOperationException();
    }

    int getHeight() {
        return this.storedHeight;
    }

    public String getId() {
        return this.id;
    }

    int getWidth() {
        return this.storedWidth;
    }

    int getMinimumItemsToShow() {
        return this.storedMinimumItems;
    }

    boolean getUseChevron() {
        return this.storedUseChevron;
    }

    public boolean isDirty() {
        return false;
    }

    public boolean isDynamic() {
        return false;
    }

    public boolean isEnabled() {
        return false;
    }

    public boolean isGroupMarker() {
        return false;
    }

    public boolean isSeparator() {
        return false;
    }

    public boolean isVisible() {
        return false;
    }

    public void saveWidgetState() {
    }

    public void setParent(IContributionManager parent) {
    }

    public void setVisible(boolean visible) {
    }

    public String toString() {
        return "PlaceholderContributionItem(" + this.id + ")";
    }

    public void update() {
        this.update(null);
    }

    public void update(String identifier) {
    }
}

