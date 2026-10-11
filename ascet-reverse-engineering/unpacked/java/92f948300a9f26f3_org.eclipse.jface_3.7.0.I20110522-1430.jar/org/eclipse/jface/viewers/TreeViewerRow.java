/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Tree
 *  org.eclipse.swt.widgets.TreeItem
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.viewers;

import java.util.LinkedList;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.TreePath;
import org.eclipse.jface.viewers.ViewerRow;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.TreeItem;
import org.eclipse.swt.widgets.Widget;

public class TreeViewerRow
extends ViewerRow {
    private TreeItem item;

    TreeViewerRow(TreeItem item) {
        this.item = item;
    }

    public Rectangle getBounds(int columnIndex) {
        return this.item.getBounds(columnIndex);
    }

    public Rectangle getBounds() {
        return this.item.getBounds();
    }

    public int getColumnCount() {
        return this.item.getParent().getColumnCount();
    }

    public Widget getItem() {
        return this.item;
    }

    public Color getBackground(int columnIndex) {
        return this.item.getBackground(columnIndex);
    }

    public Font getFont(int columnIndex) {
        return this.item.getFont(columnIndex);
    }

    public Color getForeground(int columnIndex) {
        return this.item.getForeground(columnIndex);
    }

    public Image getImage(int columnIndex) {
        return this.item.getImage(columnIndex);
    }

    public String getText(int columnIndex) {
        return this.item.getText(columnIndex);
    }

    public void setBackground(int columnIndex, Color color) {
        this.item.setBackground(columnIndex, color);
    }

    public void setFont(int columnIndex, Font font) {
        this.item.setFont(columnIndex, font);
    }

    public void setForeground(int columnIndex, Color color) {
        this.item.setForeground(columnIndex, color);
    }

    public void setImage(int columnIndex, Image image) {
        Image oldImage = this.item.getImage(columnIndex);
        if (image != oldImage) {
            this.item.setImage(columnIndex, image);
        }
    }

    public void setText(int columnIndex, String text) {
        this.item.setText(columnIndex, text == null ? "" : text);
    }

    public Control getControl() {
        return this.item.getParent();
    }

    public ViewerRow getNeighbor(int direction, boolean sameLevel) {
        if (direction == 1) {
            return this.getRowAbove(sameLevel);
        }
        if (direction == 2) {
            return this.getRowBelow(sameLevel);
        }
        throw new IllegalArgumentException("Illegal value of direction argument.");
    }

    private ViewerRow getRowBelow(boolean sameLevel) {
        Tree tree = this.item.getParent();
        if (this.item.getParentItem() == null) {
            if (sameLevel || !this.item.getExpanded()) {
                int index = tree.indexOf(this.item) + 1;
                if (index < tree.getItemCount()) {
                    return new TreeViewerRow(tree.getItem(index));
                }
            } else if (this.item.getExpanded() && this.item.getItemCount() > 0) {
                return new TreeViewerRow(this.item.getItem(0));
            }
        } else if (sameLevel || !this.item.getExpanded()) {
            int totalIndex;
            TreeItem parentItem = this.item.getParentItem();
            int nextIndex = parentItem.indexOf(this.item) + 1;
            TreeItem itemAfter = nextIndex == (totalIndex = parentItem.getItemCount()) ? this.findNextItem(parentItem) : parentItem.getItem(nextIndex);
            if (itemAfter != null) {
                return new TreeViewerRow(itemAfter);
            }
        } else if (this.item.getExpanded() && this.item.getItemCount() > 0) {
            return new TreeViewerRow(this.item.getItem(0));
        }
        return null;
    }

    private ViewerRow getRowAbove(boolean sameLevel) {
        Tree tree = this.item.getParent();
        if (this.item.getParentItem() == null) {
            int index = tree.indexOf(this.item) - 1;
            TreeItem nextTopItem = null;
            if (index >= 0) {
                nextTopItem = tree.getItem(index);
            }
            if (nextTopItem != null) {
                if (sameLevel) {
                    return new TreeViewerRow(nextTopItem);
                }
                return new TreeViewerRow(this.findLastVisibleItem(nextTopItem));
            }
        } else {
            TreeItem parentItem = this.item.getParentItem();
            int previousIndex = parentItem.indexOf(this.item) - 1;
            TreeItem itemBefore = previousIndex >= 0 ? (sameLevel ? parentItem.getItem(previousIndex) : this.findLastVisibleItem(parentItem.getItem(previousIndex))) : parentItem;
            if (itemBefore != null) {
                return new TreeViewerRow(itemBefore);
            }
        }
        return null;
    }

    private TreeItem findLastVisibleItem(TreeItem parentItem) {
        TreeItem rv = parentItem;
        while (rv.getExpanded() && rv.getItemCount() > 0) {
            rv = rv.getItem(rv.getItemCount() - 1);
        }
        return rv;
    }

    private TreeItem findNextItem(TreeItem item) {
        int totalItems;
        int nextIndex;
        TreeItem rv = null;
        Tree tree = item.getParent();
        TreeItem parentItem = item.getParentItem();
        if (parentItem == null) {
            nextIndex = tree.indexOf(item) + 1;
            totalItems = tree.getItemCount();
        } else {
            nextIndex = parentItem.indexOf(item) + 1;
            totalItems = parentItem.getItemCount();
        }
        if (nextIndex == totalItems) {
            if (item.getParentItem() != null) {
                rv = this.findNextItem(item.getParentItem());
            }
        } else {
            rv = parentItem == null ? tree.getItem(nextIndex) : parentItem.getItem(nextIndex);
        }
        return rv;
    }

    public TreePath getTreePath() {
        TreeItem tItem = this.item;
        LinkedList<Object> segments = new LinkedList<Object>();
        while (tItem != null) {
            Object segment = tItem.getData();
            Assert.isNotNull((Object)segment);
            segments.addFirst(segment);
            tItem = tItem.getParentItem();
        }
        return new TreePath(segments.toArray());
    }

    void setItem(TreeItem item) {
        this.item = item;
    }

    public Object clone() {
        return new TreeViewerRow(this.item);
    }

    public Object getElement() {
        return this.item.getData();
    }

    public int getVisualIndex(int creationIndex) {
        int[] order = this.item.getParent().getColumnOrder();
        int i = 0;
        while (i < order.length) {
            if (order[i] == creationIndex) {
                return i;
            }
            ++i;
        }
        return super.getVisualIndex(creationIndex);
    }

    public int getCreationIndex(int visualIndex) {
        if (this.item != null && !this.item.isDisposed() && this.hasColumns() && this.isValidOrderIndex(visualIndex)) {
            return this.item.getParent().getColumnOrder()[visualIndex];
        }
        return super.getCreationIndex(visualIndex);
    }

    public Rectangle getTextBounds(int index) {
        return this.item.getTextBounds(index);
    }

    public Rectangle getImageBounds(int index) {
        return this.item.getImageBounds(index);
    }

    private boolean hasColumns() {
        return this.item.getParent().getColumnCount() != 0;
    }

    private boolean isValidOrderIndex(int currentIndex) {
        return currentIndex < this.item.getParent().getColumnOrder().length;
    }

    int getWidth(int columnIndex) {
        return this.item.getParent().getColumn(columnIndex).getWidth();
    }

    protected boolean scrollCellIntoView(int columnIndex) {
        this.item.getParent().showItem(this.item);
        if (this.hasColumns()) {
            this.item.getParent().showColumn(this.item.getParent().getColumn(columnIndex));
        }
        return true;
    }
}

