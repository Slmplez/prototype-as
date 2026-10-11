/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.layout;

import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Scrollable;

public final class GridLayout
extends Layout {
    public int numColumns = 1;
    public boolean makeColumnsEqualWidth = false;
    public int marginWidth = 5;
    public int marginHeight = 5;
    public int marginLeft = 0;
    public int marginTop = 0;
    public int marginRight = 0;
    public int marginBottom = 0;
    public int horizontalSpacing = 5;
    public int verticalSpacing = 5;

    public GridLayout() {
    }

    public GridLayout(int numColumns, boolean makeColumnsEqualWidth) {
        this.numColumns = numColumns;
        this.makeColumnsEqualWidth = makeColumnsEqualWidth;
    }

    protected Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
        Point size = this.layout(composite, false, 0, 0, wHint, hHint, flushCache);
        if (wHint != -1) {
            size.x = wHint;
        }
        if (hHint != -1) {
            size.y = hHint;
        }
        return size;
    }

    protected boolean flushCache(Control control) {
        Object data = control.getLayoutData();
        if (data != null) {
            ((GridData)data).flushCache();
        }
        return true;
    }

    GridData getData(Control[][] grid, int row, int column, int rowCount, int columnCount, boolean first) {
        Control control = grid[row][column];
        if (control != null) {
            int j;
            GridData data = (GridData)control.getLayoutData();
            int hSpan = Math.max(1, Math.min(data.horizontalSpan, columnCount));
            int vSpan = Math.max(1, data.verticalSpan);
            int i = first ? row + vSpan - 1 : row - vSpan + 1;
            int n = j = first ? column + hSpan - 1 : column - hSpan + 1;
            if (i >= 0 && i < rowCount && j >= 0 && j < columnCount && control == grid[i][j]) {
                return data;
            }
        }
        return null;
    }

    protected void layout(Composite composite, boolean flushCache) {
        Rectangle rect = composite.getClientArea();
        this.layout(composite, true, rect.x, rect.y, rect.width, rect.height, flushCache);
    }

    Point layout(Composite composite, boolean move, int x, int y, int width, int height, boolean flushCache) {
        int k;
        int k2;
        int i;
        int k3;
        int last;
        int i2;
        int j;
        GridData data;
        if (this.numColumns < 1) {
            return new Point(this.marginLeft + this.marginWidth * 2 + this.marginRight, this.marginTop + this.marginHeight * 2 + this.marginBottom);
        }
        Control[] children = composite.getChildren();
        int count = 0;
        int i3 = 0;
        while (i3 < children.length) {
            Control control = children[i3];
            data = (GridData)control.getLayoutData();
            if (data == null || !data.exclude) {
                children[count++] = children[i3];
            }
            ++i3;
        }
        if (count == 0) {
            return new Point(this.marginLeft + this.marginWidth * 2 + this.marginRight, this.marginTop + this.marginHeight * 2 + this.marginBottom);
        }
        i3 = 0;
        while (i3 < count) {
            Control child = children[i3];
            data = (GridData)child.getLayoutData();
            if (data == null) {
                data = new GridData();
                child.setLayoutData(data);
            }
            if (flushCache) {
                data.flushCache();
            }
            data.computeSize(child, data.widthHint, data.heightHint, flushCache);
            if (data.grabExcessHorizontalSpace && data.minimumWidth > 0 && data.cacheWidth < data.minimumWidth) {
                int trim = 0;
                if (child instanceof Scrollable) {
                    Rectangle rect = ((Scrollable)child).computeTrim(0, 0, 0, 0);
                    trim = rect.width;
                } else {
                    trim = child.getBorderWidth() * 2;
                }
                data.cacheHeight = -1;
                data.cacheWidth = -1;
                data.computeSize(child, Math.max(0, data.minimumWidth - trim), data.heightHint, false);
            }
            if (data.grabExcessVerticalSpace && data.minimumHeight > 0) {
                data.cacheHeight = Math.max(data.cacheHeight, data.minimumHeight);
            }
            ++i3;
        }
        int row = 0;
        int column = 0;
        int rowCount = 0;
        int columnCount = this.numColumns;
        Control[][] grid = new Control[4][columnCount];
        int i4 = 0;
        while (i4 < count) {
            Control child = children[i4];
            GridData data2 = (GridData)child.getLayoutData();
            int hSpan = Math.max(1, Math.min(data2.horizontalSpan, columnCount));
            int vSpan = Math.max(1, data2.verticalSpan);
            while (true) {
                int lastRow;
                if ((lastRow = row + vSpan) >= grid.length) {
                    Control[][] newGrid = new Control[lastRow + 4][columnCount];
                    System.arraycopy(grid, 0, newGrid, 0, grid.length);
                    grid = newGrid;
                }
                if (grid[row] == null) {
                    grid[row] = new Control[columnCount];
                }
                while (column < columnCount && grid[row][column] != null) {
                    ++column;
                }
                int endCount = column + hSpan;
                if (endCount <= columnCount) {
                    int index = column;
                    while (index < endCount && grid[row][index] == null) {
                        ++index;
                    }
                    if (index == endCount) break;
                    column = index;
                }
                if (column + hSpan < columnCount) continue;
                column = 0;
                ++row;
            }
            j = 0;
            while (j < vSpan) {
                if (grid[row + j] == null) {
                    grid[row + j] = new Control[columnCount];
                }
                int k4 = 0;
                while (k4 < hSpan) {
                    grid[row + j][column + k4] = child;
                    ++k4;
                }
                ++j;
            }
            rowCount = Math.max(rowCount, row + vSpan);
            column += hSpan;
            ++i4;
        }
        int availableWidth = width - this.horizontalSpacing * (columnCount - 1) - (this.marginLeft + this.marginWidth * 2 + this.marginRight);
        int expandCount = 0;
        int[] widths = new int[columnCount];
        int[] minWidths = new int[columnCount];
        boolean[] expandColumn = new boolean[columnCount];
        j = 0;
        while (j < columnCount) {
            int hSpan;
            i2 = 0;
            while (i2 < rowCount) {
                GridData data3 = this.getData(grid, i2, j, rowCount, columnCount, true);
                if (data3 != null && (hSpan = Math.max(1, Math.min(data3.horizontalSpan, columnCount))) == 1) {
                    int w = data3.cacheWidth + data3.horizontalIndent;
                    widths[j] = Math.max(widths[j], w);
                    if (data3.grabExcessHorizontalSpace) {
                        if (!expandColumn[j]) {
                            ++expandCount;
                        }
                        expandColumn[j] = true;
                    }
                    if (!data3.grabExcessHorizontalSpace || data3.minimumWidth != 0) {
                        w = !data3.grabExcessHorizontalSpace || data3.minimumWidth == -1 ? data3.cacheWidth : data3.minimumWidth;
                        minWidths[j] = Math.max(minWidths[j], w += data3.horizontalIndent);
                    }
                }
                ++i2;
            }
            i2 = 0;
            while (i2 < rowCount) {
                GridData data4 = this.getData(grid, i2, j, rowCount, columnCount, false);
                if (data4 != null && (hSpan = Math.max(1, Math.min(data4.horizontalSpan, columnCount))) > 1) {
                    int delta;
                    int remainder;
                    int w;
                    int spanWidth = 0;
                    int spanMinWidth = 0;
                    int spanExpandCount = 0;
                    int k5 = 0;
                    while (k5 < hSpan) {
                        spanWidth += widths[j - k5];
                        spanMinWidth += minWidths[j - k5];
                        if (expandColumn[j - k5]) {
                            ++spanExpandCount;
                        }
                        ++k5;
                    }
                    if (data4.grabExcessHorizontalSpace && spanExpandCount == 0) {
                        ++expandCount;
                        expandColumn[j] = true;
                    }
                    if ((w = data4.cacheWidth + data4.horizontalIndent - spanWidth - (hSpan - 1) * this.horizontalSpacing) > 0) {
                        if (this.makeColumnsEqualWidth) {
                            int equalWidth = (w + spanWidth) / hSpan;
                            remainder = (w + spanWidth) % hSpan;
                            last = -1;
                            k3 = 0;
                            while (k3 < hSpan) {
                                last = j - k3;
                                widths[last] = Math.max(equalWidth, widths[j - k3]);
                                ++k3;
                            }
                            if (last > -1) {
                                int n = last;
                                widths[n] = widths[n] + remainder;
                            }
                        } else if (spanExpandCount == 0) {
                            int n = j;
                            widths[n] = widths[n] + w;
                        } else {
                            delta = w / spanExpandCount;
                            remainder = w % spanExpandCount;
                            last = -1;
                            k3 = 0;
                            while (k3 < hSpan) {
                                if (expandColumn[j - k3]) {
                                    last = j - k3;
                                    widths[last] = widths[last] + delta;
                                }
                                ++k3;
                            }
                            if (last > -1) {
                                int n = last;
                                widths[n] = widths[n] + remainder;
                            }
                        }
                    }
                    if (!data4.grabExcessHorizontalSpace || data4.minimumWidth != 0) {
                        int n = w = !data4.grabExcessHorizontalSpace || data4.minimumWidth == -1 ? data4.cacheWidth : data4.minimumWidth;
                        if ((w += data4.horizontalIndent - spanMinWidth - (hSpan - 1) * this.horizontalSpacing) > 0) {
                            if (spanExpandCount == 0) {
                                int n2 = j;
                                minWidths[n2] = minWidths[n2] + w;
                            } else {
                                delta = w / spanExpandCount;
                                remainder = w % spanExpandCount;
                                last = -1;
                                k3 = 0;
                                while (k3 < hSpan) {
                                    if (expandColumn[j - k3]) {
                                        last = j - k3;
                                        minWidths[last] = minWidths[last] + delta;
                                    }
                                    ++k3;
                                }
                                if (last > -1) {
                                    int n3 = last;
                                    minWidths[n3] = minWidths[n3] + remainder;
                                }
                            }
                        }
                    }
                }
                ++i2;
            }
            ++j;
        }
        if (this.makeColumnsEqualWidth) {
            int minColumnWidth = 0;
            int columnWidth = 0;
            int i5 = 0;
            while (i5 < columnCount) {
                minColumnWidth = Math.max(minColumnWidth, minWidths[i5]);
                columnWidth = Math.max(columnWidth, widths[i5]);
                ++i5;
            }
            columnWidth = width == -1 || expandCount == 0 ? columnWidth : Math.max(minColumnWidth, availableWidth / columnCount);
            i5 = 0;
            while (i5 < columnCount) {
                expandColumn[i5] = expandCount > 0;
                widths[i5] = columnWidth;
                ++i5;
            }
        } else if (width != -1 && expandCount > 0) {
            int totalWidth = 0;
            i2 = 0;
            while (i2 < columnCount) {
                totalWidth += widths[i2];
                ++i2;
            }
            int c = expandCount;
            int delta = (availableWidth - totalWidth) / c;
            int remainder = (availableWidth - totalWidth) % c;
            int last2 = -1;
            while (totalWidth != availableWidth) {
                int j2 = 0;
                while (j2 < columnCount) {
                    if (expandColumn[j2]) {
                        if (widths[j2] + delta > minWidths[j2]) {
                            last2 = j2;
                            widths[last2] = widths[j2] + delta;
                        } else {
                            widths[j2] = minWidths[j2];
                            expandColumn[j2] = false;
                            --c;
                        }
                    }
                    ++j2;
                }
                if (last2 > -1) {
                    int n = last2;
                    widths[n] = widths[n] + remainder;
                }
                j2 = 0;
                while (j2 < columnCount) {
                    i = 0;
                    while (i < rowCount) {
                        int hSpan;
                        GridData data5 = this.getData(grid, i, j2, rowCount, columnCount, false);
                        if (!(data5 == null || (hSpan = Math.max(1, Math.min(data5.horizontalSpan, columnCount))) <= 1 || data5.grabExcessHorizontalSpace && data5.minimumWidth == 0)) {
                            int w;
                            int spanWidth = 0;
                            int spanExpandCount = 0;
                            k3 = 0;
                            while (k3 < hSpan) {
                                spanWidth += widths[j2 - k3];
                                if (expandColumn[j2 - k3]) {
                                    ++spanExpandCount;
                                }
                                ++k3;
                            }
                            int n = w = !data5.grabExcessHorizontalSpace || data5.minimumWidth == -1 ? data5.cacheWidth : data5.minimumWidth;
                            if ((w += data5.horizontalIndent - spanWidth - (hSpan - 1) * this.horizontalSpacing) > 0) {
                                if (spanExpandCount == 0) {
                                    int n4 = j2;
                                    widths[n4] = widths[n4] + w;
                                } else {
                                    int delta2 = w / spanExpandCount;
                                    int remainder2 = w % spanExpandCount;
                                    int last22 = -1;
                                    k2 = 0;
                                    while (k2 < hSpan) {
                                        if (expandColumn[j2 - k2]) {
                                            last22 = j2 - k2;
                                            widths[last22] = widths[last22] + delta2;
                                        }
                                        ++k2;
                                    }
                                    if (last22 > -1) {
                                        int n5 = last22;
                                        widths[n5] = widths[n5] + remainder2;
                                    }
                                }
                            }
                        }
                        ++i;
                    }
                    ++j2;
                }
                if (c != 0) {
                    totalWidth = 0;
                    int i6 = 0;
                    while (i6 < columnCount) {
                        totalWidth += widths[i6];
                        ++i6;
                    }
                    delta = (availableWidth - totalWidth) / c;
                    remainder = (availableWidth - totalWidth) % c;
                    last2 = -1;
                    continue;
                }
                break;
            }
        }
        GridData[] flush = null;
        int flushLength = 0;
        if (width != -1) {
            int j3 = 0;
            while (j3 < columnCount) {
                int i7 = 0;
                while (i7 < rowCount) {
                    GridData data6 = this.getData(grid, i7, j3, rowCount, columnCount, false);
                    if (data6 != null && data6.heightHint == -1) {
                        Control child = grid[i7][j3];
                        int hSpan = Math.max(1, Math.min(data6.horizontalSpan, columnCount));
                        int currentWidth = 0;
                        int k6 = 0;
                        while (k6 < hSpan) {
                            currentWidth += widths[j3 - k6];
                            ++k6;
                        }
                        if ((currentWidth += (hSpan - 1) * this.horizontalSpacing - data6.horizontalIndent) != data6.cacheWidth && data6.horizontalAlignment == 4 || data6.cacheWidth > currentWidth) {
                            int trim = 0;
                            if (child instanceof Scrollable) {
                                Rectangle rect = ((Scrollable)child).computeTrim(0, 0, 0, 0);
                                trim = rect.width;
                            } else {
                                trim = child.getBorderWidth() * 2;
                            }
                            data6.cacheHeight = -1;
                            data6.cacheWidth = -1;
                            data6.computeSize(child, Math.max(0, currentWidth - trim), data6.heightHint, false);
                            if (data6.grabExcessVerticalSpace && data6.minimumHeight > 0) {
                                data6.cacheHeight = Math.max(data6.cacheHeight, data6.minimumHeight);
                            }
                            if (flush == null) {
                                flush = new GridData[count];
                            }
                            flush[flushLength++] = data6;
                        }
                    }
                    ++i7;
                }
                ++j3;
            }
        }
        int availableHeight = height - this.verticalSpacing * (rowCount - 1) - (this.marginTop + this.marginHeight * 2 + this.marginBottom);
        expandCount = 0;
        int[] heights = new int[rowCount];
        int[] minHeights = new int[rowCount];
        boolean[] expandRow = new boolean[rowCount];
        i = 0;
        while (i < rowCount) {
            int j4 = 0;
            while (j4 < columnCount) {
                int vSpan;
                GridData data7 = this.getData(grid, i, j4, rowCount, columnCount, true);
                if (data7 != null && (vSpan = Math.max(1, Math.min(data7.verticalSpan, rowCount))) == 1) {
                    int h = data7.cacheHeight + data7.verticalIndent;
                    heights[i] = Math.max(heights[i], h);
                    if (data7.grabExcessVerticalSpace) {
                        if (!expandRow[i]) {
                            ++expandCount;
                        }
                        expandRow[i] = true;
                    }
                    if (!data7.grabExcessVerticalSpace || data7.minimumHeight != 0) {
                        h = !data7.grabExcessVerticalSpace || data7.minimumHeight == -1 ? data7.cacheHeight : data7.minimumHeight;
                        minHeights[i] = Math.max(minHeights[i], h += data7.verticalIndent);
                    }
                }
                ++j4;
            }
            j4 = 0;
            while (j4 < columnCount) {
                int vSpan;
                GridData data8 = this.getData(grid, i, j4, rowCount, columnCount, false);
                if (data8 != null && (vSpan = Math.max(1, Math.min(data8.verticalSpan, rowCount))) > 1) {
                    int last3;
                    int remainder;
                    int delta;
                    int h;
                    int spanHeight = 0;
                    int spanMinHeight = 0;
                    int spanExpandCount = 0;
                    int k7 = 0;
                    while (k7 < vSpan) {
                        spanHeight += heights[i - k7];
                        spanMinHeight += minHeights[i - k7];
                        if (expandRow[i - k7]) {
                            ++spanExpandCount;
                        }
                        ++k7;
                    }
                    if (data8.grabExcessVerticalSpace && spanExpandCount == 0) {
                        ++expandCount;
                        expandRow[i] = true;
                    }
                    if ((h = data8.cacheHeight + data8.verticalIndent - spanHeight - (vSpan - 1) * this.verticalSpacing) > 0) {
                        if (spanExpandCount == 0) {
                            int n = i;
                            heights[n] = heights[n] + h;
                        } else {
                            delta = h / spanExpandCount;
                            remainder = h % spanExpandCount;
                            last3 = -1;
                            k = 0;
                            while (k < vSpan) {
                                if (expandRow[i - k]) {
                                    last3 = i - k;
                                    heights[last3] = heights[last3] + delta;
                                }
                                ++k;
                            }
                            if (last3 > -1) {
                                int n = last3;
                                heights[n] = heights[n] + remainder;
                            }
                        }
                    }
                    if (!data8.grabExcessVerticalSpace || data8.minimumHeight != 0) {
                        int n = h = !data8.grabExcessVerticalSpace || data8.minimumHeight == -1 ? data8.cacheHeight : data8.minimumHeight;
                        if ((h += data8.verticalIndent - spanMinHeight - (vSpan - 1) * this.verticalSpacing) > 0) {
                            if (spanExpandCount == 0) {
                                int n6 = i;
                                minHeights[n6] = minHeights[n6] + h;
                            } else {
                                delta = h / spanExpandCount;
                                remainder = h % spanExpandCount;
                                last3 = -1;
                                k = 0;
                                while (k < vSpan) {
                                    if (expandRow[i - k]) {
                                        last3 = i - k;
                                        minHeights[last3] = minHeights[last3] + delta;
                                    }
                                    ++k;
                                }
                                if (last3 > -1) {
                                    int n7 = last3;
                                    minHeights[n7] = minHeights[n7] + remainder;
                                }
                            }
                        }
                    }
                }
                ++j4;
            }
            ++i;
        }
        if (height != -1 && expandCount > 0) {
            int totalHeight = 0;
            int i8 = 0;
            while (i8 < rowCount) {
                totalHeight += heights[i8];
                ++i8;
            }
            int c = expandCount;
            int delta = (availableHeight - totalHeight) / c;
            int remainder = (availableHeight - totalHeight) % c;
            last = -1;
            while (totalHeight != availableHeight) {
                int i9 = 0;
                while (i9 < rowCount) {
                    if (expandRow[i9]) {
                        if (heights[i9] + delta > minHeights[i9]) {
                            last = i9;
                            heights[last] = heights[i9] + delta;
                        } else {
                            heights[i9] = minHeights[i9];
                            expandRow[i9] = false;
                            --c;
                        }
                    }
                    ++i9;
                }
                if (last > -1) {
                    int n = last;
                    heights[n] = heights[n] + remainder;
                }
                i9 = 0;
                while (i9 < rowCount) {
                    int j5 = 0;
                    while (j5 < columnCount) {
                        int vSpan;
                        GridData data9 = this.getData(grid, i9, j5, rowCount, columnCount, false);
                        if (!(data9 == null || (vSpan = Math.max(1, Math.min(data9.verticalSpan, rowCount))) <= 1 || data9.grabExcessVerticalSpace && data9.minimumHeight == 0)) {
                            int h;
                            int spanHeight = 0;
                            int spanExpandCount = 0;
                            k = 0;
                            while (k < vSpan) {
                                spanHeight += heights[i9 - k];
                                if (expandRow[i9 - k]) {
                                    ++spanExpandCount;
                                }
                                ++k;
                            }
                            int n = h = !data9.grabExcessVerticalSpace || data9.minimumHeight == -1 ? data9.cacheHeight : data9.minimumHeight;
                            if ((h += data9.verticalIndent - spanHeight - (vSpan - 1) * this.verticalSpacing) > 0) {
                                if (spanExpandCount == 0) {
                                    int n8 = i9;
                                    heights[n8] = heights[n8] + h;
                                } else {
                                    int delta2 = h / spanExpandCount;
                                    int remainder2 = h % spanExpandCount;
                                    int last2 = -1;
                                    int k8 = 0;
                                    while (k8 < vSpan) {
                                        if (expandRow[i9 - k8]) {
                                            last2 = i9 - k8;
                                            heights[last2] = heights[last2] + delta2;
                                        }
                                        ++k8;
                                    }
                                    if (last2 > -1) {
                                        int n9 = last2;
                                        heights[n9] = heights[n9] + remainder2;
                                    }
                                }
                            }
                        }
                        ++j5;
                    }
                    ++i9;
                }
                if (c == 0) break;
                totalHeight = 0;
                i9 = 0;
                while (i9 < rowCount) {
                    totalHeight += heights[i9];
                    ++i9;
                }
                delta = (availableHeight - totalHeight) / c;
                remainder = (availableHeight - totalHeight) % c;
                last = -1;
            }
        }
        if (move) {
            int gridY = y + this.marginTop + this.marginHeight;
            int i10 = 0;
            while (i10 < rowCount) {
                int gridX = x + this.marginLeft + this.marginWidth;
                int j6 = 0;
                while (j6 < columnCount) {
                    GridData data10 = this.getData(grid, i10, j6, rowCount, columnCount, true);
                    if (data10 != null) {
                        int hSpan = Math.max(1, Math.min(data10.horizontalSpan, columnCount));
                        int vSpan = Math.max(1, data10.verticalSpan);
                        int cellWidth = 0;
                        int cellHeight = 0;
                        k2 = 0;
                        while (k2 < hSpan) {
                            cellWidth += widths[j6 + k2];
                            ++k2;
                        }
                        k2 = 0;
                        while (k2 < vSpan) {
                            cellHeight += heights[i10 + k2];
                            ++k2;
                        }
                        int childX = gridX + data10.horizontalIndent;
                        int childWidth = Math.min(data10.cacheWidth, cellWidth += this.horizontalSpacing * (hSpan - 1));
                        switch (data10.horizontalAlignment) {
                            case 2: 
                            case 0x1000000: {
                                childX += Math.max(0, (cellWidth - data10.horizontalIndent - childWidth) / 2);
                                break;
                            }
                            case 3: 
                            case 131072: 
                            case 0x1000008: {
                                childX += Math.max(0, cellWidth - data10.horizontalIndent - childWidth);
                                break;
                            }
                            case 4: {
                                childWidth = cellWidth - data10.horizontalIndent;
                            }
                        }
                        int childY = gridY + data10.verticalIndent;
                        int childHeight = Math.min(data10.cacheHeight, cellHeight += this.verticalSpacing * (vSpan - 1));
                        switch (data10.verticalAlignment) {
                            case 2: 
                            case 0x1000000: {
                                childY += Math.max(0, (cellHeight - data10.verticalIndent - childHeight) / 2);
                                break;
                            }
                            case 3: 
                            case 1024: 
                            case 0x1000008: {
                                childY += Math.max(0, cellHeight - data10.verticalIndent - childHeight);
                                break;
                            }
                            case 4: {
                                childHeight = cellHeight - data10.verticalIndent;
                            }
                        }
                        Control child = grid[i10][j6];
                        if (child != null) {
                            child.setBounds(childX, childY, childWidth, childHeight);
                        }
                    }
                    gridX += widths[j6] + this.horizontalSpacing;
                    ++j6;
                }
                gridY += heights[i10] + this.verticalSpacing;
                ++i10;
            }
        }
        i = 0;
        while (i < flushLength) {
            flush[i].cacheHeight = -1;
            flush[i].cacheWidth = -1;
            ++i;
        }
        int totalDefaultWidth = 0;
        int totalDefaultHeight = 0;
        int i11 = 0;
        while (i11 < columnCount) {
            totalDefaultWidth += widths[i11];
            ++i11;
        }
        i11 = 0;
        while (i11 < rowCount) {
            totalDefaultHeight += heights[i11];
            ++i11;
        }
        return new Point(totalDefaultWidth += this.horizontalSpacing * (columnCount - 1) + this.marginLeft + this.marginWidth * 2 + this.marginRight, totalDefaultHeight += this.verticalSpacing * (rowCount - 1) + this.marginTop + this.marginHeight * 2 + this.marginBottom);
    }

    String getName() {
        String string = this.getClass().getName();
        int index = string.lastIndexOf(46);
        if (index == -1) {
            return string;
        }
        return string.substring(index + 1, string.length());
    }

    public String toString() {
        String string = String.valueOf(this.getName()) + " {";
        if (this.numColumns != 1) {
            string = String.valueOf(string) + "numColumns=" + this.numColumns + " ";
        }
        if (this.makeColumnsEqualWidth) {
            string = String.valueOf(string) + "makeColumnsEqualWidth=" + this.makeColumnsEqualWidth + " ";
        }
        if (this.marginWidth != 0) {
            string = String.valueOf(string) + "marginWidth=" + this.marginWidth + " ";
        }
        if (this.marginHeight != 0) {
            string = String.valueOf(string) + "marginHeight=" + this.marginHeight + " ";
        }
        if (this.marginLeft != 0) {
            string = String.valueOf(string) + "marginLeft=" + this.marginLeft + " ";
        }
        if (this.marginRight != 0) {
            string = String.valueOf(string) + "marginRight=" + this.marginRight + " ";
        }
        if (this.marginTop != 0) {
            string = String.valueOf(string) + "marginTop=" + this.marginTop + " ";
        }
        if (this.marginBottom != 0) {
            string = String.valueOf(string) + "marginBottom=" + this.marginBottom + " ";
        }
        if (this.horizontalSpacing != 0) {
            string = String.valueOf(string) + "horizontalSpacing=" + this.horizontalSpacing + " ";
        }
        if (this.verticalSpacing != 0) {
            string = String.valueOf(string) + "verticalSpacing=" + this.verticalSpacing + " ";
        }
        string = string.trim();
        string = String.valueOf(string) + "}";
        return string;
    }
}

