/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.dnd;

import org.eclipse.swt.SWT;
import org.eclipse.swt.dnd.DropTargetAdapter;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.TreeItem;
import org.eclipse.swt.widgets.Widget;

public class DropTargetEffect
extends DropTargetAdapter {
    Control control;

    public DropTargetEffect(Control control) {
        if (control == null) {
            SWT.error(4);
        }
        this.control = control;
    }

    public Control getControl() {
        return this.control;
    }

    public Widget getItem(int x, int y) {
        if (this.control instanceof Table) {
            return this.getItem((Table)this.control, x, y);
        }
        if (this.control instanceof Tree) {
            return this.getItem((Tree)this.control, x, y);
        }
        return null;
    }

    Widget getItem(Table table, int x, int y) {
        Point coordinates = new Point(x, y);
        TableItem item = table.getItem(coordinates = table.toControl(coordinates));
        if (item != null) {
            return item;
        }
        Rectangle area = table.getClientArea();
        int tableBottom = area.y + area.height;
        int itemCount = table.getItemCount();
        int i = table.getTopIndex();
        while (i < itemCount) {
            item = table.getItem(i);
            Rectangle rect = item.getBounds();
            rect.x = area.x;
            rect.width = area.width;
            if (rect.contains(coordinates)) {
                return item;
            }
            if (rect.y > tableBottom) break;
            ++i;
        }
        return null;
    }

    Widget getItem(Tree tree, int x, int y) {
        Rectangle area;
        Point point = new Point(x, y);
        TreeItem item = tree.getItem(point = tree.toControl(point));
        if (item == null && (area = tree.getClientArea()).contains(point)) {
            int treeBottom = area.y + area.height;
            item = tree.getTopItem();
            while (item != null) {
                Rectangle rect = item.getBounds();
                int itemBottom = rect.y + rect.height;
                if (rect.y <= point.y && point.y < itemBottom) {
                    return item;
                }
                if (itemBottom > treeBottom) break;
                item = this.nextItem(tree, item);
            }
            return null;
        }
        return item;
    }

    TreeItem nextItem(Tree tree, TreeItem item) {
        int count;
        if (item == null) {
            return null;
        }
        if (item.getExpanded() && item.getItemCount() > 0) {
            return item.getItem(0);
        }
        TreeItem childItem = item;
        TreeItem parentItem = childItem.getParentItem();
        int index = parentItem == null ? tree.indexOf(childItem) : parentItem.indexOf(childItem);
        int n = count = parentItem == null ? tree.getItemCount() : parentItem.getItemCount();
        while (index + 1 >= count) {
            if (parentItem == null) {
                return null;
            }
            childItem = parentItem;
            index = (parentItem = childItem.getParentItem()) == null ? tree.indexOf(childItem) : parentItem.indexOf(childItem);
            count = parentItem == null ? tree.getItemCount() : parentItem.getItemCount();
        }
        return parentItem == null ? tree.getItem(index + 1) : parentItem.getItem(index + 1);
    }

    TreeItem previousItem(Tree tree, TreeItem item) {
        int index;
        if (item == null) {
            return null;
        }
        TreeItem childItem = item;
        TreeItem parentItem = childItem.getParentItem();
        int n = index = parentItem == null ? tree.indexOf(childItem) : parentItem.indexOf(childItem);
        if (index == 0) {
            return parentItem;
        }
        TreeItem nextItem = parentItem == null ? tree.getItem(index - 1) : parentItem.getItem(index - 1);
        int count = nextItem.getItemCount();
        while (count > 0 && nextItem.getExpanded()) {
            nextItem = nextItem.getItem(count - 1);
            count = nextItem.getItemCount();
        }
        return nextItem;
    }
}

