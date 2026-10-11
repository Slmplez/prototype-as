/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.viewers.ColumnLayoutData
 *  org.eclipse.jface.viewers.ColumnPixelData
 *  org.eclipse.jface.viewers.ColumnWeightData
 *  org.eclipse.swt.SWT
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.ScrollBar
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableColumn
 */
package org.eclipse.ui.texteditor.templates;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.ColumnLayoutData;
import org.eclipse.jface.viewers.ColumnPixelData;
import org.eclipse.jface.viewers.ColumnWeightData;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.ScrollBar;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;

final class ColumnLayout
extends Layout {
    private static final String RECALCULATE_LAYOUT = "recalculateKey";
    private static int COLUMN_TRIM;
    private List columns = new ArrayList();

    static {
        String platform = SWT.getPlatform();
        COLUMN_TRIM = "win32".equals(platform) ? 4 : ("carbon".equals(platform) ? 24 : 3);
    }

    ColumnLayout() {
    }

    public void addColumnData(ColumnLayoutData data) {
        this.columns.add(data);
    }

    private Point computeTableSize(Table table, int wHint, int hHint) {
        Point result = table.computeSize(wHint, hHint);
        int width = 0;
        int size = this.columns.size();
        int i = 0;
        while (i < size) {
            ColumnPixelData col;
            ColumnLayoutData layoutData = (ColumnLayoutData)this.columns.get(i);
            if (layoutData instanceof ColumnPixelData) {
                col = (ColumnPixelData)layoutData;
                width += col.width;
                if (col.addTrim) {
                    width += COLUMN_TRIM;
                }
            } else if (layoutData instanceof ColumnWeightData) {
                col = (ColumnWeightData)layoutData;
                width += col.minimumWidth;
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

    private void layoutTable(Table table, int width, Rectangle area, boolean increase) {
        TableColumn[] tableColumns = table.getColumns();
        int size = Math.min(this.columns.size(), tableColumns.length);
        int[] widths = new int[size];
        int[] weightIteration = new int[size];
        int numberOfWeightColumns = 0;
        int fixedWidth = 0;
        int minWeightWidth = 0;
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
                weightIteration[numberOfWeightColumns] = i;
                ++numberOfWeightColumns;
                totalWeight += cw.weight;
                minWeightWidth += cw.minimumWidth;
                widths[i] = cw.minimumWidth;
            } else {
                Assert.isTrue((boolean)false, (String)"Unknown column layout data");
            }
            ++i;
        }
        int restIncludingMinWidths = width - fixedWidth;
        int rest = restIncludingMinWidths - minWeightWidth;
        if (numberOfWeightColumns > 0 && rest > 0) {
            int totalWantedPixels = 0;
            int[] wantedPixels = new int[numberOfWeightColumns];
            int i2 = 0;
            while (i2 < numberOfWeightColumns) {
                ColumnWeightData cw = (ColumnWeightData)this.columns.get(weightIteration[i2]);
                wantedPixels[i2] = totalWeight == 0 ? 0 : cw.weight * restIncludingMinWidths / totalWeight;
                totalWantedPixels += wantedPixels[i2];
                ++i2;
            }
            int totalDistributed = 0;
            int i3 = 0;
            while (i3 < numberOfWeightColumns) {
                int pixels = totalWantedPixels == 0 ? 0 : wantedPixels[i3] * rest / totalWantedPixels;
                totalDistributed += pixels;
                int n = weightIteration[i3];
                widths[n] = widths[n] + pixels;
                ++i3;
            }
            int diff = rest - totalDistributed;
            int i4 = 0;
            while (diff > 0) {
                int n = weightIteration[i4];
                widths[n] = widths[n] + 1;
                --diff;
                i4 = (i4 + 1) % numberOfWeightColumns;
            }
        }
        if (increase) {
            table.setSize(area.width, area.height);
        }
        int i5 = 0;
        while (i5 < size) {
            tableColumns[i5].setWidth(widths[i5]);
            ++i5;
        }
        if (!increase) {
            table.setSize(area.width, area.height);
        }
    }

    protected Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
        return this.computeTableSize(this.getTable(composite), wHint, hHint);
    }

    protected void layout(Composite composite, boolean flushCache) {
        int tableWidth;
        Table table;
        Rectangle area = composite.getClientArea();
        int trim = this.computeTrim(area, table = this.getTable(composite), tableWidth = table.getSize().x);
        int width = Math.max(0, area.width - trim);
        if (width > 1) {
            this.layoutTable(table, width, area, tableWidth < area.width);
        }
        if (composite.getData(RECALCULATE_LAYOUT) == null) {
            composite.setData(RECALCULATE_LAYOUT, (Object)Boolean.FALSE);
            composite.layout();
        }
    }

    private int computeTrim(Rectangle area, Table table, int tableWidth) {
        ScrollBar vBar;
        Point preferredSize = this.computeTableSize(table, area.width, area.height);
        int trim = tableWidth > 1 ? tableWidth - table.getClientArea().width : 2 * table.getBorderWidth() + 1;
        if (preferredSize.y > area.height && !(vBar = table.getVerticalBar()).isVisible()) {
            Point vBarSize = vBar.getSize();
            trim += vBarSize.x;
        }
        return trim;
    }

    private Table getTable(Composite composite) {
        return (Table)composite.getChildren()[0];
    }
}

