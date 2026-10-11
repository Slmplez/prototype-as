/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.forms.widgets;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.ui.forms.widgets.ILayoutExtension;
import org.eclipse.ui.forms.widgets.LayoutCache;
import org.eclipse.ui.forms.widgets.SizeCache;
import org.eclipse.ui.forms.widgets.TableWrapData;

public final class TableWrapLayout
extends Layout
implements ILayoutExtension {
    public int numColumns = 1;
    public int leftMargin = 5;
    public int rightMargin = 5;
    public int topMargin = 5;
    public int bottomMargin = 5;
    public int horizontalSpacing = 5;
    public int verticalSpacing = 5;
    public boolean makeColumnsEqualWidth = false;
    private boolean initialLayout = true;
    private Vector grid = null;
    private Hashtable rowspans;
    private int[] minColumnWidths;
    private int[] maxColumnWidths;
    private int widestColumnWidth;
    private int[] growingColumns;
    private int[] growingRows;
    private LayoutCache cache = new LayoutCache();

    public int computeMinimumWidth(Composite parent, boolean changed) {
        Control[] children = parent.getChildren();
        if (changed) {
            this.cache.flush();
        }
        this.cache.setControls(children);
        changed = true;
        this.initializeIfNeeded(parent, changed);
        if (this.initialLayout) {
            changed = true;
            this.initialLayout = false;
        }
        if (this.grid == null || changed) {
            changed = true;
            this.grid = new Vector();
            this.createGrid(parent);
        }
        if (this.minColumnWidths == null) {
            this.minColumnWidths = new int[this.numColumns];
        }
        int i = 0;
        while (i < this.numColumns) {
            this.minColumnWidths[i] = 0;
            ++i;
        }
        return this.internalGetMinimumWidth(parent, changed);
    }

    public int computeMaximumWidth(Composite parent, boolean changed) {
        Control[] children = parent.getChildren();
        if (changed) {
            this.cache.flush();
        }
        this.cache.setControls(children);
        changed = true;
        this.initializeIfNeeded(parent, changed);
        if (this.initialLayout) {
            changed = true;
            this.initialLayout = false;
        }
        if (this.grid == null || changed) {
            changed = true;
            this.grid = new Vector();
            this.createGrid(parent);
        }
        if (this.maxColumnWidths == null) {
            this.maxColumnWidths = new int[this.numColumns];
        }
        int i = 0;
        while (i < this.numColumns) {
            this.maxColumnWidths[i] = 0;
            ++i;
        }
        return this.internalGetMaximumWidth(parent, changed);
    }

    protected void layout(Composite parent, boolean changed) {
        int i;
        int[] columnWidths;
        Rectangle clientArea = parent.getClientArea();
        Control[] children = parent.getChildren();
        if (changed) {
            this.cache.flush();
        }
        if (children.length == 0) {
            return;
        }
        this.cache.setControls(children);
        int parentWidth = clientArea.width;
        changed = true;
        this.initializeIfNeeded(parent, changed);
        if (this.initialLayout) {
            changed = true;
            this.initialLayout = false;
        }
        if (this.grid == null || changed) {
            changed = true;
            this.grid = new Vector();
            this.createGrid(parent);
        }
        this.resetColumnWidths();
        int minWidth = this.internalGetMinimumWidth(parent, changed);
        int maxWidth = this.internalGetMaximumWidth(parent, changed);
        int tableWidth = parentWidth;
        if (parentWidth <= minWidth) {
            tableWidth = minWidth;
            if (this.makeColumnsEqualWidth) {
                columnWidths = new int[this.numColumns];
                int i2 = 0;
                while (i2 < this.numColumns) {
                    columnWidths[i2] = this.widestColumnWidth;
                    ++i2;
                }
            } else {
                columnWidths = this.minColumnWidths;
            }
        } else if (parentWidth > maxWidth) {
            if (this.growingColumns.length == 0) {
                tableWidth = maxWidth;
                columnWidths = this.maxColumnWidths;
            } else {
                columnWidths = new int[this.numColumns];
                int extra = parentWidth - maxWidth;
                int colExtra = extra / this.growingColumns.length;
                i = 0;
                while (i < this.numColumns) {
                    columnWidths[i] = this.maxColumnWidths[i];
                    if (this.isGrowingColumn(i)) {
                        int n = i;
                        columnWidths[n] = columnWidths[n] + colExtra;
                    }
                    ++i;
                }
            }
        } else {
            columnWidths = new int[this.numColumns];
            if (this.makeColumnsEqualWidth) {
                int colSpace = tableWidth - this.leftMargin - this.rightMargin;
                int col = (colSpace -= (this.numColumns - 1) * this.horizontalSpacing) / this.numColumns;
                i = 0;
                while (i < this.numColumns) {
                    columnWidths[i] = col;
                    ++i;
                }
            } else {
                columnWidths = this.assignExtraSpace(tableWidth, maxWidth, minWidth);
            }
        }
        int y = this.topMargin + clientArea.y;
        int[] rowHeights = this.computeRowHeights(children, columnWidths, changed);
        i = 0;
        while (i < this.grid.size()) {
            int rowHeight = rowHeights[i];
            int x = this.leftMargin + clientArea.x;
            TableWrapData[] row = (TableWrapData[])this.grid.elementAt(i);
            int j = 0;
            while (j < this.numColumns) {
                TableWrapData td = row[j];
                if (td.isItemData) {
                    Control child = children[td.childIndex];
                    this.placeControl(child, td, x, y, rowHeights, i);
                }
                x += columnWidths[j];
                if (j < this.numColumns - 1) {
                    x += this.horizontalSpacing;
                }
                ++j;
            }
            y += rowHeight + this.verticalSpacing;
            ++i;
        }
    }

    int[] computeRowHeights(Control[] children, int[] columnWidths, boolean changed) {
        TableWrapData td;
        int[] rowHeights = new int[this.grid.size()];
        int i = 0;
        while (i < this.grid.size()) {
            TableWrapData[] row = (TableWrapData[])this.grid.elementAt(i);
            rowHeights[i] = 0;
            int j = 0;
            while (j < this.numColumns) {
                td = row[j];
                if (td.isItemData) {
                    Control child = children[td.childIndex];
                    int span = td.colspan;
                    int cwidth = 0;
                    int k = j;
                    while (k < j + span) {
                        cwidth += columnWidths[k];
                        if (k < j + span - 1) {
                            cwidth += this.horizontalSpacing;
                        }
                        ++k;
                    }
                    Point size = this.computeSize(td.childIndex, cwidth, td.indent, td.maxWidth, td.maxHeight);
                    td.compWidth = cwidth;
                    if (td.heightHint != -1) {
                        size = new Point(size.x, td.heightHint);
                    }
                    td.compSize = size;
                    RowSpan rowspan = (RowSpan)this.rowspans.get(child);
                    if (rowspan == null) {
                        rowHeights[i] = Math.max(rowHeights[i], size.y);
                    } else {
                        rowspan.height = size.y;
                    }
                }
                ++j;
            }
            this.updateRowSpans(i, rowHeights[i]);
            ++i;
        }
        Enumeration enm = this.rowspans.elements();
        while (enm.hasMoreElements()) {
            RowSpan rowspan = (RowSpan)enm.nextElement();
            int increase = rowspan.getRequiredHeightIncrease();
            if (increase == 0) continue;
            td = (TableWrapData)rowspan.child.getLayoutData();
            int ngrowing = 0;
            int[] affectedRows = new int[this.grid.size()];
            int i2 = 0;
            while (i2 < this.growingRows.length) {
                int growingRow = this.growingRows[i2];
                if (growingRow >= rowspan.row && growingRow < rowspan.row + td.rowspan) {
                    affectedRows[ngrowing++] = growingRow;
                }
                ++i2;
            }
            if (ngrowing == 0) {
                ngrowing = 1;
                affectedRows[0] = rowspan.row + td.rowspan - 1;
            }
            increase += increase % ngrowing;
            int perRowIncrease = increase / ngrowing;
            int i3 = 0;
            while (i3 < ngrowing) {
                int growingRow;
                int n = growingRow = affectedRows[i3];
                rowHeights[n] = rowHeights[n] + perRowIncrease;
                ++i3;
            }
        }
        return rowHeights;
    }

    boolean isGrowingColumn(int col) {
        if (this.growingColumns == null) {
            return false;
        }
        int i = 0;
        while (i < this.growingColumns.length) {
            if (col == this.growingColumns[i]) {
                return true;
            }
            ++i;
        }
        return false;
    }

    int[] assignExtraSpace(int tableWidth, int maxWidth, int minWidth) {
        int fixedPart = this.leftMargin + this.rightMargin + (this.numColumns - 1) * this.horizontalSpacing;
        int D = maxWidth - minWidth;
        int W = tableWidth - minWidth;
        int[] widths = new int[this.numColumns];
        int rem = 0;
        int i = 0;
        while (i < this.numColumns) {
            int extra;
            int cmin = this.minColumnWidths[i];
            int cmax = this.maxColumnWidths[i];
            int d = cmax - cmin;
            int n = extra = D != 0 ? d * W / D : 0;
            if (i < this.numColumns - 1) {
                widths[i] = cmin + extra;
                rem += widths[i];
            } else {
                widths[i] = tableWidth - fixedPart - rem;
            }
            ++i;
        }
        return widths;
    }

    Point computeSize(int childIndex, int width, int indent, int maxWidth, int maxHeight) {
        int widthArg = width - indent;
        SizeCache controlCache = this.cache.getCache(childIndex);
        if (!this.isWrap(controlCache.getControl())) {
            widthArg = -1;
        }
        Point size = controlCache.computeSize(widthArg, -1);
        if (maxWidth != -1) {
            size.x = Math.min(size.x, maxWidth);
        }
        if (maxHeight != -1) {
            size.y = Math.min(size.y, maxHeight);
        }
        size.x += indent;
        return size;
    }

    void placeControl(Control control, TableWrapData td, int x, int y, int[] rowHeights, int row) {
        int xloc = x + td.indent;
        int yloc = y;
        int height = td.compSize.y;
        int colWidth = td.compWidth - td.indent;
        int width = td.compSize.x - td.indent;
        width = Math.min(width, colWidth);
        int slotHeight = rowHeights[row];
        RowSpan rowspan = (RowSpan)this.rowspans.get(control);
        if (rowspan != null) {
            slotHeight = 0;
            int i = row;
            while (i < row + td.rowspan) {
                if (i > row) {
                    slotHeight += this.verticalSpacing;
                }
                slotHeight += rowHeights[i];
                ++i;
            }
        }
        if (td.align == 4) {
            xloc = x + colWidth / 2 - width / 2;
        } else if (td.align == 8) {
            xloc = x + colWidth - width;
        } else if (td.align == 128) {
            width = colWidth;
        }
        if (td.valign == 32) {
            yloc = y + slotHeight / 2 - height / 2;
        } else if (td.valign == 64) {
            yloc = y + slotHeight - height;
        } else if (td.valign == 128) {
            height = slotHeight;
        }
        control.setBounds(xloc, yloc, width, height);
    }

    void createGrid(Composite composite) {
        TableWrapData spacerSpec;
        Vector growingCols = new Vector();
        Vector growingRows = new Vector();
        this.rowspans = new Hashtable();
        Control[] children = composite.getChildren();
        if (children.length == 0) {
            return;
        }
        this.grid.addElement(this.createEmptyRow());
        int row = 0;
        int column = 0;
        int i = 0;
        while (i < children.length) {
            Control child = children[i];
            TableWrapData spec = (TableWrapData)child.getLayoutData();
            while (((TableWrapData[])this.grid.elementAt(row))[column] != null) {
                if (++column < this.numColumns) continue;
                column = 0;
                if (++row < this.grid.size()) continue;
                this.grid.addElement(this.createEmptyRow());
            }
            if (column + spec.colspan - 1 >= this.numColumns) {
                this.grid.addElement(this.createEmptyRow());
                ++row;
                column = 0;
            }
            if (spec.rowspan > 1) {
                this.rowspans.put(child, new RowSpan(child, column, row));
            }
            int j = 2;
            while (j <= spec.rowspan) {
                if (row + j > this.grid.size()) {
                    this.grid.addElement(this.createEmptyRow());
                }
                ++j;
            }
            ((TableWrapData[])this.grid.elementAt((int)row))[column] = spec;
            spec.childIndex = i;
            if (spec.grabHorizontal) {
                this.updateGrowingColumns(growingCols, spec, column);
            }
            if (spec.grabVertical) {
                this.updateGrowingRows(growingRows, spec, row);
            }
            int rowFill = spec.rowspan - 1;
            int columnFill = spec.colspan - 1;
            int r = 1;
            while (r <= rowFill) {
                int c = 0;
                while (c < spec.colspan) {
                    spacerSpec = new TableWrapData();
                    spacerSpec.isItemData = false;
                    ((TableWrapData[])this.grid.elementAt((int)(row + r)))[column + c] = spacerSpec;
                    ++c;
                }
                ++r;
            }
            int c = 1;
            while (c <= columnFill) {
                int r2 = 0;
                while (r2 < spec.rowspan) {
                    spacerSpec = new TableWrapData();
                    spacerSpec.isItemData = false;
                    ((TableWrapData[])this.grid.elementAt((int)(row + r2)))[column + c] = spacerSpec;
                    ++r2;
                }
                ++c;
            }
            column = column + spec.colspan - 1;
            ++i;
        }
        int k = column + 1;
        while (k < this.numColumns) {
            spacerSpec = new TableWrapData();
            spacerSpec.isItemData = false;
            ((TableWrapData[])this.grid.elementAt((int)row))[k] = spacerSpec;
            ++k;
        }
        k = row + 1;
        while (k < this.grid.size()) {
            spacerSpec = new TableWrapData();
            spacerSpec.isItemData = false;
            ((TableWrapData[])this.grid.elementAt((int)k))[column] = spacerSpec;
            ++k;
        }
        this.growingColumns = new int[growingCols.size()];
        i = 0;
        while (i < growingCols.size()) {
            this.growingColumns[i] = (Integer)growingCols.get(i);
            ++i;
        }
        this.growingRows = new int[growingRows.size()];
        i = 0;
        while (i < growingRows.size()) {
            this.growingRows[i] = (Integer)growingRows.get(i);
            ++i;
        }
    }

    private void updateGrowingColumns(Vector growingColumns, TableWrapData spec, int column) {
        int affectedColumn = column + spec.colspan - 1;
        int i = 0;
        while (i < growingColumns.size()) {
            Integer col = (Integer)growingColumns.get(i);
            if (col == affectedColumn) {
                return;
            }
            ++i;
        }
        growingColumns.add(new Integer(affectedColumn));
    }

    private void updateGrowingRows(Vector growingRows, TableWrapData spec, int row) {
        int affectedRow = row + spec.rowspan - 1;
        int i = 0;
        while (i < growingRows.size()) {
            Integer irow = (Integer)growingRows.get(i);
            if (irow == affectedRow) {
                return;
            }
            ++i;
        }
        growingRows.add(new Integer(affectedRow));
    }

    private TableWrapData[] createEmptyRow() {
        TableWrapData[] row = new TableWrapData[this.numColumns];
        int i = 0;
        while (i < this.numColumns) {
            row[i] = null;
            ++i;
        }
        return row;
    }

    protected Point computeSize(Composite parent, int wHint, int hHint, boolean changed) {
        int i;
        int col;
        int colSpace;
        int[] columnWidths;
        Control[] children = parent.getChildren();
        if (changed) {
            this.cache.flush();
        }
        if (children.length == 0) {
            return new Point(0, 0);
        }
        this.cache.setControls(children);
        int parentWidth = wHint;
        changed = true;
        this.initializeIfNeeded(parent, changed);
        if (this.initialLayout) {
            changed = true;
            this.initialLayout = false;
        }
        if (this.grid == null || changed) {
            changed = true;
            this.grid = new Vector();
            this.createGrid(parent);
        }
        this.resetColumnWidths();
        int minWidth = this.internalGetMinimumWidth(parent, changed);
        int maxWidth = this.internalGetMaximumWidth(parent, changed);
        if (wHint == -1) {
            parentWidth = maxWidth;
        }
        int tableWidth = parentWidth;
        if (parentWidth <= minWidth) {
            tableWidth = minWidth;
            if (this.makeColumnsEqualWidth) {
                columnWidths = new int[this.numColumns];
                int i2 = 0;
                while (i2 < this.numColumns) {
                    columnWidths[i2] = this.widestColumnWidth;
                    ++i2;
                }
            } else {
                columnWidths = this.minColumnWidths;
            }
        } else if (parentWidth >= maxWidth) {
            if (this.makeColumnsEqualWidth) {
                columnWidths = new int[this.numColumns];
                colSpace = parentWidth - this.leftMargin - this.rightMargin;
                col = (colSpace -= (this.numColumns - 1) * this.horizontalSpacing) / this.numColumns;
                i = 0;
                while (i < this.numColumns) {
                    columnWidths[i] = col;
                    ++i;
                }
            } else {
                tableWidth = maxWidth;
                columnWidths = this.maxColumnWidths;
            }
        } else {
            columnWidths = new int[this.numColumns];
            if (this.makeColumnsEqualWidth) {
                colSpace = tableWidth - this.leftMargin - this.rightMargin;
                col = (colSpace -= (this.numColumns - 1) * this.horizontalSpacing) / this.numColumns;
                i = 0;
                while (i < this.numColumns) {
                    columnWidths[i] = col;
                    ++i;
                }
            } else {
                columnWidths = this.assignExtraSpace(tableWidth, maxWidth, minWidth);
            }
        }
        int totalHeight = 0;
        int innerHeight = 0;
        i = 0;
        while (i < this.grid.size()) {
            TableWrapData[] row = (TableWrapData[])this.grid.elementAt(i);
            int rowHeight = 0;
            int j = 0;
            while (j < this.numColumns) {
                TableWrapData td = row[j];
                if (td.isItemData) {
                    RowSpan rowspan;
                    Control child = children[td.childIndex];
                    int span = td.colspan;
                    int cwidth = 0;
                    int k = j;
                    while (k < j + span) {
                        if (k > j) {
                            cwidth += this.horizontalSpacing;
                        }
                        cwidth += columnWidths[k];
                        ++k;
                    }
                    int cy = td.heightHint;
                    if (cy == -1) {
                        Point size = this.computeSize(td.childIndex, cwidth, td.indent, td.maxWidth, td.maxHeight);
                        cy = size.y;
                    }
                    if ((rowspan = (RowSpan)this.rowspans.get(child)) != null) {
                        rowspan.height = cy;
                    } else {
                        rowHeight = Math.max(rowHeight, cy);
                    }
                }
                ++j;
            }
            this.updateRowSpans(i, rowHeight);
            if (i > 0) {
                innerHeight += this.verticalSpacing;
            }
            innerHeight += rowHeight;
            ++i;
        }
        if (!this.rowspans.isEmpty()) {
            innerHeight = this.compensateForRowSpans(innerHeight);
        }
        totalHeight = this.topMargin + innerHeight + this.bottomMargin;
        return new Point(tableWidth, totalHeight);
    }

    private void updateRowSpans(int row, int rowHeight) {
        if (this.rowspans == null || this.rowspans.size() == 0) {
            return;
        }
        Enumeration enm = this.rowspans.elements();
        while (enm.hasMoreElements()) {
            RowSpan rowspan = (RowSpan)enm.nextElement();
            rowspan.update(row, rowHeight);
        }
    }

    private int compensateForRowSpans(int totalHeight) {
        Enumeration enm = this.rowspans.elements();
        while (enm.hasMoreElements()) {
            RowSpan rowspan = (RowSpan)enm.nextElement();
            totalHeight += rowspan.getRequiredHeightIncrease();
        }
        return totalHeight;
    }

    int internalGetMinimumWidth(Composite parent, boolean changed) {
        int i;
        if (changed) {
            this.calculateColumnWidths(parent, this.minColumnWidths, false, true, this.makeColumnsEqualWidth);
        }
        int minimumWidth = 0;
        this.widestColumnWidth = 0;
        if (this.makeColumnsEqualWidth) {
            i = 0;
            while (i < this.numColumns) {
                this.widestColumnWidth = Math.max(this.widestColumnWidth, this.minColumnWidths[i]);
                ++i;
            }
        }
        i = 0;
        while (i < this.numColumns) {
            if (i > 0) {
                minimumWidth += this.horizontalSpacing;
            }
            minimumWidth = this.makeColumnsEqualWidth ? (minimumWidth += this.widestColumnWidth) : (minimumWidth += this.minColumnWidths[i]);
            ++i;
        }
        return minimumWidth += this.leftMargin + this.rightMargin;
    }

    int internalGetMaximumWidth(Composite parent, boolean changed) {
        if (changed) {
            this.calculateColumnWidths(parent, this.maxColumnWidths, true, true, this.makeColumnsEqualWidth);
        }
        int maximumWidth = 0;
        int i = 0;
        while (i < this.numColumns) {
            if (i > 0) {
                maximumWidth += this.horizontalSpacing;
            }
            maximumWidth += this.maxColumnWidths[i];
            ++i;
        }
        return maximumWidth += this.leftMargin + this.rightMargin;
    }

    void resetColumnWidths() {
        if (this.minColumnWidths == null) {
            this.minColumnWidths = new int[this.numColumns];
        }
        if (this.maxColumnWidths == null) {
            this.maxColumnWidths = new int[this.numColumns];
        }
        int i = 0;
        while (i < this.numColumns) {
            this.minColumnWidths[i] = 0;
            ++i;
        }
        i = 0;
        while (i < this.numColumns) {
            this.maxColumnWidths[i] = 0;
            ++i;
        }
    }

    void calculateColumnWidths(Composite parent, int[] columnWidths, boolean max, boolean changed, boolean makeColumnsEqualWidth2) {
        int width;
        SizeCache childCache;
        TableWrapData td;
        int j;
        TableWrapData[] row;
        boolean secondPassNeeded = false;
        int widestColumnWidth = 0;
        int i = 0;
        while (i < this.grid.size()) {
            row = (TableWrapData[])this.grid.elementAt(i);
            j = 0;
            while (j < this.numColumns) {
                td = row[j];
                if (td.isItemData) {
                    if (td.colspan > 1) {
                        secondPassNeeded = true;
                        j += td.colspan - 1;
                    } else {
                        childCache = this.cache.getCache(td.childIndex);
                        int n = width = max ? childCache.computeMaximumWidth() : childCache.computeMinimumWidth();
                        if (td.maxWidth != -1) {
                            width = Math.min(width, td.maxWidth);
                        }
                        columnWidths[j] = Math.max(columnWidths[j], width += td.indent);
                        widestColumnWidth = Math.max(widestColumnWidth, columnWidths[j]);
                    }
                }
                ++j;
            }
            ++i;
        }
        if (this.makeColumnsEqualWidth) {
            i = 0;
            while (i < this.numColumns) {
                columnWidths[i] = widestColumnWidth;
                ++i;
            }
        }
        if (!secondPassNeeded) {
            return;
        }
        i = 0;
        while (i < this.grid.size()) {
            row = (TableWrapData[])this.grid.elementAt(i);
            j = 0;
            while (j < this.numColumns) {
                td = row[j];
                if (td.isItemData && td.colspan != 1) {
                    childCache = this.cache.getCache(td.childIndex);
                    int n = width = max ? childCache.computeMaximumWidth() : childCache.computeMinimumWidth();
                    if (td.maxWidth != -1) {
                        width = Math.min(width, td.maxWidth);
                    }
                    width += td.indent;
                    int current = 0;
                    int k = j;
                    while (k < j + td.colspan) {
                        if (k > j) {
                            current += this.horizontalSpacing;
                        }
                        current += columnWidths[k];
                        ++k;
                    }
                    if (width > current) {
                        int ndiv = 0;
                        if (this.growingColumns != null) {
                            int k2 = j;
                            while (k2 < j + td.colspan) {
                                if (this.isGrowingColumn(k2)) {
                                    ++ndiv;
                                }
                                ++k2;
                            }
                        }
                        if (ndiv == 0) {
                            int n2 = j + td.colspan - 1;
                            columnWidths[n2] = columnWidths[n2] + (width - current);
                        } else {
                            int percolumn = (width - current) / ndiv;
                            if ((width - current) % ndiv > 0) {
                                ++percolumn;
                            }
                            int k3 = j;
                            while (k3 < j + td.colspan) {
                                if (this.isGrowingColumn(k3)) {
                                    int n3 = k3;
                                    columnWidths[n3] = columnWidths[n3] + percolumn;
                                }
                                ++k3;
                            }
                        }
                    }
                }
                ++j;
            }
            ++i;
        }
    }

    boolean isWrap(Control control) {
        if (control instanceof Composite && ((Composite)control).getLayout() instanceof ILayoutExtension) {
            return true;
        }
        return (control.getStyle() & 0x40) != 0;
    }

    private void initializeIfNeeded(Composite parent, boolean changed) {
        if (changed) {
            this.initialLayout = true;
        }
        if (this.initialLayout) {
            this.initializeLayoutData(parent);
            this.initialLayout = false;
        }
    }

    void initializeLayoutData(Composite composite) {
        Control[] children = composite.getChildren();
        int i = 0;
        while (i < children.length) {
            Control child = children[i];
            if (child.getLayoutData() == null) {
                child.setLayoutData((Object)new TableWrapData());
            }
            ++i;
        }
    }

    private class RowSpan {
        Control child;
        int row;
        int height;
        int totalHeight;

        public RowSpan(Control child, int column, int row) {
            this.child = child;
            this.row = row;
        }

        public void update(int currentRow, int rowHeight) {
            TableWrapData td = (TableWrapData)this.child.getLayoutData();
            if (currentRow >= this.row && currentRow < this.row + td.rowspan) {
                this.totalHeight += rowHeight;
                if (currentRow > this.row) {
                    this.totalHeight += TableWrapLayout.this.verticalSpacing;
                }
            }
        }

        public int getRequiredHeightIncrease() {
            if (this.totalHeight < this.height) {
                return this.height - this.totalHeight;
            }
            return 0;
        }
    }
}

