/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.StyleRange
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.ViewerRow;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Widget;

public class ViewerCell {
    private int columnIndex;
    private ViewerRow row;
    private Object element;
    public static int ABOVE = 1;
    public static int BELOW = 2;
    public static int LEFT = 4;
    public static int RIGHT = 8;

    ViewerCell(ViewerRow row, int columnIndex, Object element) {
        this.row = row;
        this.columnIndex = columnIndex;
        this.element = element;
    }

    public int getColumnIndex() {
        return this.columnIndex;
    }

    public Rectangle getBounds() {
        return this.row.getBounds(this.columnIndex);
    }

    public Object getElement() {
        if (this.element != null) {
            return this.element;
        }
        if (this.row != null) {
            return this.row.getElement();
        }
        return null;
    }

    public String getText() {
        return this.row.getText(this.columnIndex);
    }

    public Image getImage() {
        return this.row.getImage(this.columnIndex);
    }

    public void setBackground(Color background) {
        this.row.setBackground(this.columnIndex, background);
    }

    public void setForeground(Color foreground) {
        this.row.setForeground(this.columnIndex, foreground);
    }

    public void setFont(Font font) {
        this.row.setFont(this.columnIndex, font);
    }

    public void setText(String text) {
        this.row.setText(this.columnIndex, text);
    }

    public void setImage(Image image) {
        this.row.setImage(this.columnIndex, image);
    }

    public void setStyleRanges(StyleRange[] styleRanges) {
        this.row.setStyleRanges(this.columnIndex, styleRanges);
    }

    public StyleRange[] getStyleRanges() {
        return this.row.getStyleRanges(this.columnIndex);
    }

    void setColumn(int column) {
        this.columnIndex = column;
    }

    void update(ViewerRow rowItem, int column, Object element) {
        this.row = rowItem;
        this.columnIndex = column;
        this.element = element;
    }

    public Widget getItem() {
        return this.row.getItem();
    }

    public Control getControl() {
        return this.row.getControl();
    }

    public int getVisualIndex() {
        return this.row.getVisualIndex(this.getColumnIndex());
    }

    public ViewerCell getNeighbor(int directionMask, boolean sameLevel) {
        ViewerRow row = (directionMask & ABOVE) == ABOVE ? this.row.getNeighbor(1, sameLevel) : ((directionMask & BELOW) == BELOW ? this.row.getNeighbor(2, sameLevel) : this.row);
        if (row != null) {
            int columnIndex = this.getVisualIndex();
            int modifier = 0;
            if ((directionMask & LEFT) == LEFT) {
                modifier = -1;
            } else if ((directionMask & RIGHT) == RIGHT) {
                modifier = 1;
            }
            if ((columnIndex += modifier) >= 0 && columnIndex < row.getColumnCount()) {
                ViewerCell cell = row.getCellAtVisualIndex(columnIndex);
                if (cell != null) {
                    while (cell != null && columnIndex < row.getColumnCount() - 1 && columnIndex > 0) {
                        if (cell.isVisible() || (cell = row.getCellAtVisualIndex(columnIndex += modifier)) == null) break;
                    }
                }
                return cell;
            }
        }
        return null;
    }

    public ViewerRow getViewerRow() {
        return this.row;
    }

    public Rectangle getTextBounds() {
        return this.row.getTextBounds(this.columnIndex);
    }

    public Rectangle getImageBounds() {
        return this.row.getImageBounds(this.columnIndex);
    }

    public Color getForeground() {
        return this.row.getForeground(this.columnIndex);
    }

    public Color getBackground() {
        return this.row.getBackground(this.columnIndex);
    }

    public Font getFont() {
        return this.row.getFont(this.columnIndex);
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + this.columnIndex;
        result = 31 * result + (this.row == null ? 0 : this.row.hashCode());
        return result;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (this.getClass() != obj.getClass()) {
            return false;
        }
        ViewerCell other = (ViewerCell)obj;
        if (this.columnIndex != other.columnIndex) {
            return false;
        }
        return !(this.row == null ? other.row != null : !this.row.equals(other.row));
    }

    private boolean isVisible() {
        return this.row.isColumnVisible(this.columnIndex);
    }

    public boolean scrollIntoView() {
        return this.row.scrollCellIntoView(this.columnIndex);
    }
}

