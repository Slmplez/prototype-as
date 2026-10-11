/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Item
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableColumn
 *  org.eclipse.swt.widgets.Tree
 *  org.eclipse.swt.widgets.TreeColumn
 */
package org.eclipse.jface.viewers;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.util.Util;
import org.eclipse.jface.viewers.ColumnLayoutData;
import org.eclipse.jface.viewers.ColumnPixelData;
import org.eclipse.jface.viewers.ColumnWeightData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.TreeColumn;

public class TableLayout
extends Layout {
    private static int COLUMN_TRIM = Util.isWindows() ? 4 : (Util.isMac() ? 24 : 3);
    private List columns = new ArrayList();
    private boolean firstTime = true;

    public void addColumnData(ColumnLayoutData data) {
        this.columns.add(data);
    }

    public Point computeSize(Composite c, int wHint, int hHint, boolean flush) {
        if (wHint != -1 && hHint != -1) {
            return new Point(wHint, hHint);
        }
        Table table = (Table)c;
        table.setLayout(null);
        Point result = table.computeSize(wHint, hHint, flush);
        table.setLayout((Layout)this);
        int width = 0;
        int size = this.columns.size();
        int i = 0;
        while (i < size) {
            ColumnLayoutData col;
            ColumnLayoutData layoutData = (ColumnLayoutData)this.columns.get(i);
            if (layoutData instanceof ColumnPixelData) {
                col = (ColumnPixelData)layoutData;
                width += col.width;
                if (col.addTrim) {
                    width += COLUMN_TRIM;
                }
            } else if (layoutData instanceof ColumnWeightData) {
                col = (ColumnWeightData)layoutData;
                width += ((ColumnWeightData)col).minimumWidth;
            } else {
                Assert.isTrue((boolean)false, (String)"Unknown column layout data");
            }
            ++i;
        }
        if (width > result.x) {
            result.x = width;
        }
        return result;
    }

    public void layout(Composite c, boolean flush) {
        if (!this.firstTime) {
            return;
        }
        int width = c.getClientArea().width;
        if (width <= 1) {
            return;
        }
        Item[] tableColumns = this.getColumns(c);
        int size = Math.min(this.columns.size(), tableColumns.length);
        int[] widths = new int[size];
        int fixedWidth = 0;
        int numberOfWeightColumns = 0;
        int totalWeight = 0;
        int i = 0;
        while (i < size) {
            ColumnLayoutData col = (ColumnLayoutData)this.columns.get(i);
            if (col instanceof ColumnPixelData) {
                ColumnPixelData cpd = (ColumnPixelData)col;
                int pixels = cpd.width;
                if (cpd.addTrim) {
                    pixels += COLUMN_TRIM;
                }
                widths[i] = pixels;
                fixedWidth += pixels;
            } else if (col instanceof ColumnWeightData) {
                ColumnWeightData cw = (ColumnWeightData)col;
                ++numberOfWeightColumns;
                int weight = cw.weight;
                totalWeight += weight;
            } else {
                Assert.isTrue((boolean)false, (String)"Unknown column layout data");
            }
            ++i;
        }
        if (numberOfWeightColumns > 0) {
            int rest = width - fixedWidth;
            int totalDistributed = 0;
            int i2 = 0;
            while (i2 < size) {
                ColumnLayoutData col = (ColumnLayoutData)this.columns.get(i2);
                if (col instanceof ColumnWeightData) {
                    int pixels;
                    ColumnWeightData cw = (ColumnWeightData)col;
                    int weight = cw.weight;
                    int n = pixels = totalWeight == 0 ? 0 : weight * rest / totalWeight;
                    if (pixels < cw.minimumWidth) {
                        pixels = cw.minimumWidth;
                    }
                    totalDistributed += pixels;
                    widths[i2] = pixels;
                }
                ++i2;
            }
            int diff = rest - totalDistributed;
            int i3 = 0;
            while (diff > 0) {
                ColumnLayoutData col;
                if (i3 == size) {
                    i3 = 0;
                }
                if ((col = (ColumnLayoutData)this.columns.get(i3)) instanceof ColumnWeightData) {
                    int n = i3;
                    widths[n] = widths[n] + 1;
                    --diff;
                }
                ++i3;
            }
        }
        this.firstTime = false;
        i = 0;
        while (i < size) {
            this.setWidth(tableColumns[i], widths[i]);
            ++i;
        }
    }

    private void setWidth(Item item, int width) {
        if (item instanceof TreeColumn) {
            ((TreeColumn)item).setWidth(width);
        } else {
            ((TableColumn)item).setWidth(width);
        }
    }

    private Item[] getColumns(Composite composite) {
        if (composite instanceof Tree) {
            return ((Tree)composite).getColumns();
        }
        return ((Table)composite).getColumns();
    }
}

