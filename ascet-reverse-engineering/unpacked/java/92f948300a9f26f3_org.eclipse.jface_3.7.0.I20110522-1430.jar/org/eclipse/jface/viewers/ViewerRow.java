/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.StyleRange
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.TreePath;
import org.eclipse.jface.viewers.ViewerCell;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Widget;

public abstract class ViewerRow
implements Cloneable {
    public static final int ABOVE = 1;
    public static final int BELOW = 2;
    private static final String KEY_TEXT_LAYOUT = "org.eclipse.jfacestyled_label_key_";
    private static final String KEY_TEXT_LAYOUT_0 = "org.eclipse.jfacestyled_label_key_0";
    private static String[] cachedDataKeys;

    public abstract Rectangle getBounds(int var1);

    public abstract Rectangle getBounds();

    public abstract Widget getItem();

    public abstract int getColumnCount();

    public abstract Image getImage(int var1);

    public abstract void setImage(int var1, Image var2);

    public abstract String getText(int var1);

    public abstract void setText(int var1, String var2);

    public abstract Color getBackground(int var1);

    public abstract void setBackground(int var1, Color var2);

    public abstract Color getForeground(int var1);

    public abstract void setForeground(int var1, Color var2);

    public abstract Font getFont(int var1);

    public abstract void setFont(int var1, Font var2);

    public ViewerCell getCell(Point point) {
        int index = this.getColumnIndex(point);
        return this.getCell(index);
    }

    public int getColumnIndex(Point point) {
        int count = this.getColumnCount();
        if (count == 0) {
            return 0;
        }
        int i = 0;
        while (i < count) {
            if (this.getBounds(i).contains(point)) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    public ViewerCell getCell(int column) {
        if (column >= 0) {
            return new ViewerCell((ViewerRow)this.clone(), column, this.getElement());
        }
        return null;
    }

    public abstract Control getControl();

    public abstract ViewerRow getNeighbor(int var1, boolean var2);

    public abstract TreePath getTreePath();

    public abstract Object clone();

    public abstract Object getElement();

    public int hashCode() {
        int result = 1;
        result = 31 * result + (this.getItem() == null ? 0 : this.getItem().hashCode());
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
        ViewerRow other = (ViewerRow)obj;
        return !(this.getItem() == null ? other.getItem() != null : !this.getItem().equals(other.getItem()));
    }

    ViewerCell getCellAtVisualIndex(int visualIndex) {
        return this.getCell(this.getCreationIndex(visualIndex));
    }

    protected int getVisualIndex(int creationIndex) {
        return creationIndex;
    }

    protected int getCreationIndex(int visualIndex) {
        return visualIndex;
    }

    public Rectangle getTextBounds(int index) {
        return null;
    }

    public Rectangle getImageBounds(int index) {
        return null;
    }

    public void setStyleRanges(int columnIndex, StyleRange[] styleRanges) {
        this.getItem().setData(this.getStyleRangesDataKey(columnIndex), (Object)styleRanges);
    }

    private String getStyleRangesDataKey(int columnIndex) {
        if (columnIndex == 0) {
            return KEY_TEXT_LAYOUT_0;
        }
        if (cachedDataKeys == null) {
            int size = Math.max(10, columnIndex + 1);
            cachedDataKeys = new String[size];
            int i = 1;
            while (i < cachedDataKeys.length) {
                ViewerRow.cachedDataKeys[i] = KEY_TEXT_LAYOUT + i;
                ++i;
            }
        } else if (columnIndex >= cachedDataKeys.length) {
            String[] newCachedDataKeys = new String[columnIndex + 1];
            System.arraycopy(cachedDataKeys, 0, newCachedDataKeys, 0, cachedDataKeys.length);
            int i = cachedDataKeys.length;
            while (i < newCachedDataKeys.length) {
                newCachedDataKeys[i] = KEY_TEXT_LAYOUT + i;
                ++i;
            }
            cachedDataKeys = newCachedDataKeys;
        }
        return cachedDataKeys[columnIndex];
    }

    public StyleRange[] getStyleRanges(int columnIndex) {
        return (StyleRange[])this.getItem().getData(this.getStyleRangesDataKey(columnIndex));
    }

    int getWidth(int columnIndex) {
        return this.getBounds((int)columnIndex).width;
    }

    protected boolean scrollCellIntoView(int columnIndex) {
        return false;
    }

    protected boolean isColumnVisible(int columnIndex) {
        return this.getWidth(columnIndex) > 0;
    }
}

