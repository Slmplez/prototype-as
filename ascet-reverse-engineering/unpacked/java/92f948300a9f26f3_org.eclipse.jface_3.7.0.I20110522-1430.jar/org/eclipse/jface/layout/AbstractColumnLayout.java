/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Scrollable
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.layout;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.util.Util;
import org.eclipse.jface.viewers.ColumnLayoutData;
import org.eclipse.jface.viewers.ColumnPixelData;
import org.eclipse.jface.viewers.ColumnWeightData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Scrollable;
import org.eclipse.swt.widgets.Widget;

public abstract class AbstractColumnLayout
extends Layout {
    private static int COLUMN_TRIM = Util.isWindows() ? 4 : (Util.isMac() ? 24 : 3);
    static final boolean IS_GTK = Util.isGtk();
    protected static final String LAYOUT_DATA = "org.eclipse.jface.LAYOUT_DATA";
    private boolean inupdateMode = false;
    private boolean relayout = true;
    private Listener resizeListener = new Listener(){

        public void handleEvent(Event event) {
            if (!AbstractColumnLayout.this.inupdateMode) {
                AbstractColumnLayout.this.updateColumnData(event.widget);
            }
        }
    };

    public void setColumnData(Widget column, ColumnLayoutData data) {
        if (column.getData(LAYOUT_DATA) == null) {
            column.addListener(11, this.resizeListener);
        }
        column.setData(LAYOUT_DATA, (Object)data);
    }

    private Point computeTableTreeSize(Scrollable scrollable, int wHint, int hHint) {
        Point result = scrollable.computeSize(wHint, hHint);
        int width = 0;
        int size = this.getColumnCount(scrollable);
        int i = 0;
        while (i < size) {
            ColumnLayoutData col;
            ColumnLayoutData layoutData = this.getLayoutData(scrollable, i);
            if (layoutData instanceof ColumnPixelData) {
                col = (ColumnPixelData)layoutData;
                width += col.width;
                if (col.addTrim) {
                    width += this.getColumnTrim();
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

    private void layoutTableTree(Scrollable scrollable, int width, Rectangle area, boolean increase) {
        boolean recalculate;
        int numberOfColumns = this.getColumnCount(scrollable);
        int[] widths = new int[numberOfColumns];
        int[] weightColumnIndices = new int[numberOfColumns];
        int numberOfWeightColumns = 0;
        int fixedWidth = 0;
        int totalWeight = 0;
        int i = 0;
        while (i < numberOfColumns) {
            ColumnLayoutData col = this.getLayoutData(scrollable, i);
            if (col instanceof ColumnPixelData) {
                ColumnPixelData cpd = (ColumnPixelData)col;
                int pixels = cpd.width;
                if (cpd.addTrim) {
                    pixels += this.getColumnTrim();
                }
                widths[i] = pixels;
                fixedWidth += pixels;
            } else if (col instanceof ColumnWeightData) {
                ColumnWeightData cw = (ColumnWeightData)col;
                weightColumnIndices[numberOfWeightColumns] = i;
                ++numberOfWeightColumns;
                totalWeight += cw.weight;
            } else {
                Assert.isTrue((boolean)false, (String)"Unknown column layout data");
            }
            ++i;
        }
        block1: do {
            recalculate = false;
            int i2 = 0;
            while (i2 < numberOfWeightColumns) {
                int allowedWidth;
                int colIndex = weightColumnIndices[i2];
                ColumnWeightData cw = (ColumnWeightData)this.getLayoutData(scrollable, colIndex);
                int minWidth = cw.minimumWidth;
                int n = allowedWidth = totalWeight == 0 ? 0 : (width - fixedWidth) * cw.weight / totalWeight;
                if (allowedWidth < minWidth) {
                    totalWeight -= cw.weight;
                    fixedWidth += minWidth;
                    widths[colIndex] = minWidth;
                    System.arraycopy(weightColumnIndices, i2 + 1, weightColumnIndices, i2, --numberOfWeightColumns - i2);
                    recalculate = true;
                    continue block1;
                }
                widths[colIndex] = allowedWidth;
                ++i2;
            }
        } while (recalculate);
        if (increase) {
            scrollable.setSize(area.width, area.height);
        }
        this.inupdateMode = true;
        this.setColumnWidths(scrollable, widths);
        scrollable.update();
        this.inupdateMode = false;
        if (!increase) {
            scrollable.setSize(area.width, area.height);
        }
    }

    protected Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
        return this.computeTableTreeSize(this.getControl(composite), wHint, hHint);
    }

    protected void layout(Composite composite, boolean flushCache) {
        int tableWidth;
        Scrollable table;
        Rectangle area = composite.getClientArea();
        int trim = this.computeTrim(area, table = this.getControl(composite), tableWidth = table.getSize().x);
        int width = Math.max(0, area.width - trim);
        if (width > 1) {
            this.layoutTableTree(table, width, area, tableWidth < area.width);
        }
        if (this.relayout) {
            this.relayout = false;
            composite.layout();
        }
    }

    private int computeTrim(Rectangle area, Scrollable scrollable, int currentWidth) {
        int trim = currentWidth > 1 ? currentWidth - scrollable.getClientArea().width : 2 * scrollable.getBorderWidth() + 1;
        return trim;
    }

    Scrollable getControl(Composite composite) {
        return (Scrollable)composite.getChildren()[0];
    }

    protected abstract int getColumnCount(Scrollable var1);

    protected abstract void setColumnWidths(Scrollable var1, int[] var2);

    protected abstract ColumnLayoutData getLayoutData(Scrollable var1, int var2);

    protected abstract void updateColumnData(Widget var1);

    protected int getColumnTrim() {
        return COLUMN_TRIM;
    }
}

