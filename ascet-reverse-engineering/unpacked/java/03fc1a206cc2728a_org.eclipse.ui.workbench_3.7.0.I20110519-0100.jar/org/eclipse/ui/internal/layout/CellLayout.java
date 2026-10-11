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
package org.eclipse.ui.internal.layout;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.ui.internal.layout.CellData;
import org.eclipse.ui.internal.layout.CellLayoutUtil;
import org.eclipse.ui.internal.layout.GridInfo;
import org.eclipse.ui.internal.layout.LayoutCache;
import org.eclipse.ui.internal.layout.Row;
import org.eclipse.ui.internal.layout.SizeCache;

public class CellLayout
extends Layout {
    private Row defaultRowSettings = new Row(false);
    private Row defaultColSettings = new Row(true);
    int horizontalSpacing = 5;
    int verticalSpacing = 5;
    public int marginWidth = 5;
    public int marginHeight = 5;
    private int numCols;
    private List cols;
    private List rows = new ArrayList(16);
    private GridInfo gridInfo = new GridInfo();
    private int[] cachedRowMin = null;
    private int[] cachedColMin = null;
    public static int cacheMisses;
    public static int cacheHits;
    private LayoutCache cache = new LayoutCache();

    public CellLayout(int numCols) {
        this.numCols = numCols;
        this.cols = new ArrayList(numCols == 0 ? 3 : numCols);
    }

    public CellLayout setSpacing(int horizontalSpacing, int verticalSpacing) {
        this.horizontalSpacing = horizontalSpacing;
        this.verticalSpacing = verticalSpacing;
        return this;
    }

    public CellLayout setSpacing(Point newSpacing) {
        this.horizontalSpacing = newSpacing.x;
        this.verticalSpacing = newSpacing.y;
        return this;
    }

    public Point getSpacing() {
        return new Point(this.horizontalSpacing, this.verticalSpacing);
    }

    public CellLayout setMargins(int marginWidth, int marginHeight) {
        this.marginWidth = marginWidth;
        this.marginHeight = marginHeight;
        return this;
    }

    public CellLayout setMargins(Point newMargins) {
        this.marginWidth = newMargins.x;
        this.marginHeight = newMargins.y;
        return this;
    }

    public Point getMargins() {
        return new Point(this.marginWidth, this.marginHeight);
    }

    public CellLayout setDefaultColumn(Row info) {
        this.defaultColSettings = info;
        return this;
    }

    public CellLayout setColumn(int colNum, Row info) {
        while (this.cols.size() <= colNum) {
            this.cols.add(null);
        }
        this.cols.set(colNum, info);
        return this;
    }

    public CellLayout setDefaultRow(Row info) {
        this.defaultRowSettings = info;
        return this;
    }

    public CellLayout setRow(int rowNum, Row info) {
        while (this.rows.size() <= rowNum) {
            this.rows.add(null);
        }
        this.rows.set(rowNum, info);
        return this;
    }

    private Row getRow(int rowNum, boolean isHorizontal) {
        if (isHorizontal) {
            if (rowNum >= this.rows.size()) {
                return this.defaultRowSettings;
            }
            Row result = (Row)this.rows.get(rowNum);
            if (result == null) {
                result = this.defaultRowSettings;
            }
            return result;
        }
        if (rowNum >= this.cols.size()) {
            return this.defaultColSettings;
        }
        Row result = (Row)this.cols.get(rowNum);
        if (result == null) {
            result = this.defaultColSettings;
        }
        return result;
    }

    private void initGrid(Control[] children) {
        this.cache.setControls(children);
        this.gridInfo.initGrid(children, this);
        this.cachedRowMin = null;
        this.cachedColMin = null;
    }

    protected Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
        boolean taller;
        Control[] children = composite.getChildren();
        this.initGrid(children);
        if (flushCache) {
            this.cache.flush();
        }
        Point emptySpace = this.totalEmptySpace();
        int[] heightConstraints = this.computeConstraints(true);
        int width = wHint == -1 ? this.preferredSize(heightConstraints, false) : wHint - emptySpace.x;
        int height = hHint;
        height = hHint == -1 ? this.preferredSize(this.computeSizes(heightConstraints, width, false), true) : hHint - emptySpace.y;
        Point preferredSize = new Point(width + emptySpace.x, height + emptySpace.y);
        Point minimumSize = CellLayoutUtil.computeMinimumSize(composite);
        boolean wider = preferredSize.x >= minimumSize.x;
        boolean bl = taller = preferredSize.y >= minimumSize.y;
        if (wider) {
            if (taller) {
                return preferredSize;
            }
            return this.computeSize(composite, wHint, minimumSize.y, false);
        }
        if (taller) {
            return this.computeSize(composite, minimumSize.x, hHint, false);
        }
        return minimumSize;
    }

    int[] computeSizes(int[] constraints, int availableSpace, boolean computingRows) {
        int[] result = this.computeMinSizes(constraints, computingRows);
        int totalFixed = CellLayout.sumOfSizes(result);
        int denominator = this.getResizeDenominator(computingRows);
        int numRows = this.gridInfo.getNumRows(computingRows);
        if (totalFixed < availableSpace) {
            int remaining = availableSpace - totalFixed;
            int idx = 0;
            while (idx < numRows && denominator > 0) {
                Row row = this.getRow(idx, computingRows);
                if (row.grows) {
                    int greed = row.size;
                    int amount = remaining * greed / denominator;
                    int n = idx;
                    result[n] = result[n] + amount;
                    remaining -= amount;
                    denominator -= greed;
                }
                ++idx;
            }
        }
        return result;
    }

    int preferredSize(int[] constraints, boolean computingRows) {
        int[] fixedSizes = this.computeMinSizes(constraints, computingRows);
        return CellLayout.sumOfSizes(fixedSizes) + this.getDynamicSize(constraints, fixedSizes, computingRows);
    }

    static int sumOfSizes(int[] input) {
        return CellLayout.sumOfSizes(input, 0, input.length);
    }

    static int sumOfSizes(int[] input, int start, int length) {
        int sum = 0;
        int idx = start;
        while (idx < start + length) {
            int next = input[idx];
            if (next == -1) {
                return -1;
            }
            sum += next;
            ++idx;
        }
        return sum;
    }

    int getDynamicSize(int[] constraints, int[] fixedSizes, boolean computingRows) {
        int result = 0;
        int numerator = this.getResizeDenominator(computingRows);
        if (numerator == 0) {
            return 0;
        }
        int rowSpacing = computingRows ? this.verticalSpacing : this.horizontalSpacing;
        int colSpacing = computingRows ? this.horizontalSpacing : this.verticalSpacing;
        int numControls = this.gridInfo.controls.length;
        int idx = 0;
        while (idx < numControls) {
            int controlRowStart = this.gridInfo.getStartPos(idx, computingRows);
            int controlRowSpan = this.getSpan(idx, computingRows);
            int controlColStart = this.gridInfo.getStartPos(idx, !computingRows);
            int controlColSpan = this.getSpan(idx, !computingRows);
            int denominator = this.getGrowthRatio(controlRowStart, controlRowSpan, computingRows);
            if (denominator > 0) {
                int widthHint = CellLayout.sumOfSizes(constraints, controlColStart, controlColSpan);
                if (widthHint != -1) {
                    widthHint += colSpacing * (controlColSpan - 1);
                }
                int controlSize = this.computeControlSize(idx, widthHint, computingRows);
                controlSize -= CellLayout.sumOfSizes(fixedSizes, controlRowStart, controlRowSpan);
                result = Math.max(result, (controlSize -= rowSpacing * (controlRowSpan - 1)) * numerator / denominator);
            }
            ++idx;
        }
        return result;
    }

    int computeControlSize(int control, int constraint, boolean computingHeight) {
        CellData data = this.gridInfo.getCellData(control);
        if (constraint == -1) {
            Point result = data.computeSize(this.cache.getCache(control), -1, -1);
            if (computingHeight) {
                return result.y;
            }
            return result.x;
        }
        if (computingHeight) {
            return data.computeSize((SizeCache)this.cache.getCache((int)control), (int)constraint, (int)-1).y;
        }
        return data.computeSize((SizeCache)this.cache.getCache((int)control), (int)-1, (int)constraint).x;
    }

    int getGrowthRatio(int start, int length, boolean computingRows) {
        boolean willGrow = false;
        int sum = 0;
        int end = start + length;
        int idx = start;
        while (idx < end) {
            Row row = this.getRow(idx, computingRows);
            if (row.largerThanChildren && row.grows) {
                willGrow = true;
            }
            sum += row.size;
            ++idx;
        }
        if (!willGrow) {
            return 0;
        }
        return sum;
    }

    int[] computeMinSizes(int[] constraints, boolean computingRows) {
        int[] result;
        int[] nArray = result = computingRows ? this.cachedRowMin : this.cachedColMin;
        if (result == null) {
            int rowSpacing;
            int columnSpacing;
            if (computingRows) {
                columnSpacing = this.horizontalSpacing;
                rowSpacing = this.verticalSpacing;
            } else {
                columnSpacing = this.verticalSpacing;
                rowSpacing = this.horizontalSpacing;
            }
            int rowCount = this.gridInfo.getNumRows(computingRows);
            result = new int[rowCount];
            int colCount = this.gridInfo.getNumRows(!computingRows);
            int[] rowControls = new int[colCount];
            int lastGrowingRow = -1;
            int idx = 0;
            while (idx < rowCount) {
                Row row = this.getRow(idx, computingRows);
                if (row.grows) {
                    lastGrowingRow = idx;
                    result[idx] = 0;
                } else {
                    result[idx] = row.size;
                    if (row.largerThanChildren) {
                        this.gridInfo.getRow(rowControls, idx, computingRows);
                        int colIdx = 0;
                        while (colIdx < rowControls.length) {
                            int controlSpan;
                            int controlStart;
                            int control = rowControls[colIdx];
                            if (control != -1 && (controlStart = this.gridInfo.getStartPos(control, computingRows)) + (controlSpan = this.getSpan(control, computingRows)) - 1 == idx && controlStart > lastGrowingRow) {
                                int controlColStart = this.gridInfo.getStartPos(control, !computingRows);
                                int controlColSpan = this.getSpan(control, !computingRows);
                                int controlRowSpan = this.getSpan(control, computingRows);
                                int spannedWidth = CellLayout.sumOfSizes(constraints, controlColStart, controlColSpan);
                                if (spannedWidth != -1) {
                                    spannedWidth += columnSpacing * (controlSpan - 1);
                                }
                                int controlHeight = this.computeControlSize(control, spannedWidth, computingRows);
                                int allocatedHeight = CellLayout.sumOfSizes(result, controlColStart, controlRowSpan - 1) + rowSpacing * (controlRowSpan - 1);
                                result[idx] = Math.max(result[idx], controlHeight - allocatedHeight);
                            }
                            ++colIdx;
                        }
                    }
                }
                ++idx;
            }
        }
        if (computingRows) {
            this.cachedRowMin = result;
        } else {
            this.cachedColMin = result;
        }
        return result;
    }

    private int[] computeConstraints(boolean horizontal) {
        int numRows = this.gridInfo.getNumRows(horizontal);
        int[] result = new int[numRows];
        int idx = 0;
        while (idx < numRows) {
            Row row = this.getRow(idx, horizontal);
            result[idx] = !row.grows && !row.largerThanChildren ? row.size : -1;
            ++idx;
        }
        return result;
    }

    private int getResizeDenominator(boolean horizontal) {
        int result = 0;
        int numRows = this.gridInfo.getNumRows(horizontal);
        int idx = 0;
        while (idx < numRows) {
            Row row = this.getRow(idx, horizontal);
            if (row.grows) {
                result += row.size;
            }
            ++idx;
        }
        return result;
    }

    protected int getSpan(int controlId, boolean isRow) {
        CellData data = this.gridInfo.getCellData(controlId);
        if (isRow) {
            return data.verticalSpan;
        }
        return data.horizontalSpan;
    }

    private Point totalEmptySpace() {
        int numRows = this.gridInfo.getRows();
        return new Point(2 * this.marginWidth + (this.gridInfo.getCols() - 1) * this.horizontalSpacing, 2 * this.marginHeight + (numRows - 1) * this.verticalSpacing);
    }

    private static int[] computeRowPositions(int startPos, int[] sizes, int spacing) {
        int[] result = new int[sizes.length + 1];
        result[0] = startPos;
        int idx = 0;
        while (idx < sizes.length) {
            result[idx + 1] = result[idx] + sizes[idx] + spacing;
            ++idx;
        }
        return result;
    }

    protected void layout(Composite composite, boolean flushCache) {
        Control[] children = composite.getChildren();
        if (children.length == 0) {
            return;
        }
        this.initGrid(children);
        if (flushCache) {
            this.cache.flush();
        }
        Point emptySpace = this.totalEmptySpace();
        int availableWidth = composite.getClientArea().width - emptySpace.x;
        int availableHeight = composite.getClientArea().height - emptySpace.y;
        int[] heights = this.computeConstraints(true);
        int[] widths = new int[this.gridInfo.getCols()];
        widths = this.computeSizes(heights, availableWidth, false);
        heights = this.computeSizes(widths, availableHeight, true);
        Rectangle currentCell = new Rectangle(0, 0, 0, 0);
        int[] starty = CellLayout.computeRowPositions(composite.getClientArea().y + this.marginHeight, heights, this.verticalSpacing);
        int[] startx = CellLayout.computeRowPositions(composite.getClientArea().x + this.marginWidth, widths, this.horizontalSpacing);
        int numChildren = this.gridInfo.controls.length;
        int controlId = 0;
        while (controlId < numChildren) {
            CellData data = this.gridInfo.getCellData(controlId);
            int row = this.gridInfo.controlRow[controlId];
            int col = this.gridInfo.controlCol[controlId];
            currentCell.x = startx[col];
            currentCell.width = startx[col + data.horizontalSpan] - currentCell.x - this.horizontalSpacing;
            currentCell.y = starty[row];
            currentCell.height = starty[row + data.verticalSpan] - currentCell.y - this.verticalSpacing;
            data.positionControl(this.cache.getCache(controlId), currentCell);
            ++controlId;
        }
    }

    public int getColumns() {
        return this.numCols;
    }

    public boolean canGrow(Composite composite, boolean horizontally) {
        this.initGrid(composite.getChildren());
        int numRows = this.gridInfo.getNumRows(horizontally);
        int idx = 0;
        while (idx < numRows) {
            Row row = this.getRow(idx, horizontally);
            if (row.grows) {
                return true;
            }
            ++idx;
        }
        return false;
    }
}

