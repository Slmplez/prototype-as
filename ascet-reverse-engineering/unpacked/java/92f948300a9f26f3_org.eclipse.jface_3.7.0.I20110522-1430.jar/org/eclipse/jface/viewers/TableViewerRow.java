/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.TableItem
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.TreePath;
import org.eclipse.jface.viewers.ViewerRow;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.Widget;

public class TableViewerRow
extends ViewerRow {
    private TableItem item;

    TableViewerRow(TableItem item) {
        this.item = item;
    }

    public Rectangle getBounds(int columnIndex) {
        return this.item.getBounds(columnIndex);
    }

    public Rectangle getBounds() {
        return this.item.getBounds();
    }

    public Widget getItem() {
        return this.item;
    }

    void setItem(TableItem item) {
        this.item = item;
    }

    public int getColumnCount() {
        return this.item.getParent().getColumnCount();
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
        if (oldImage != image) {
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
            return this.getRowAbove();
        }
        if (direction == 2) {
            return this.getRowBelow();
        }
        throw new IllegalArgumentException("Illegal value of direction argument.");
    }

    private ViewerRow getRowAbove() {
        int index = this.item.getParent().indexOf(this.item) - 1;
        if (index >= 0) {
            return new TableViewerRow(this.item.getParent().getItem(index));
        }
        return null;
    }

    private ViewerRow getRowBelow() {
        TableItem tmp;
        int index = this.item.getParent().indexOf(this.item) + 1;
        if (index < this.item.getParent().getItemCount() && (tmp = this.item.getParent().getItem(index)) != null) {
            return new TableViewerRow(tmp);
        }
        return null;
    }

    public TreePath getTreePath() {
        return new TreePath(new Object[]{this.item.getData()});
    }

    public Object clone() {
        return new TableViewerRow(this.item);
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

