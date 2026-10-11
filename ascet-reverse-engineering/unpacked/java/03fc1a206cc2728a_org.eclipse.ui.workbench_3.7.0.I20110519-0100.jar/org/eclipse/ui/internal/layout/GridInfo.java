/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal.layout;

import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.internal.layout.CellData;
import org.eclipse.ui.internal.layout.CellLayout;
import org.eclipse.ui.internal.layout.CellLayoutUtil;

class GridInfo {
    private int cols = 0;
    private int rows = 0;
    private int[] gridInfo;
    int[] controlRow;
    int[] controlCol;
    private CellData[] cellData;
    Control[] controls;

    GridInfo() {
    }

    public void initGrid(Control[] newControls, CellLayout layout) {
        this.cols = layout.getColumns();
        this.controls = newControls;
        int area = 0;
        int totalWidth = 0;
        this.controlRow = new int[this.controls.length];
        this.controlCol = new int[this.controls.length];
        this.cellData = new CellData[this.controls.length];
        int idx = 0;
        while (idx < this.controls.length) {
            if (this.controls[idx] != null) {
                CellData next;
                this.cellData[idx] = next = CellLayoutUtil.getData(this.controls[idx]);
                area += next.horizontalSpan * next.verticalSpan;
                totalWidth += next.horizontalSpan;
            }
            ++idx;
        }
        if (this.cols == 0) {
            this.cols = totalWidth;
        }
        this.rows = area / this.cols;
        if (area % this.cols > 0) {
            ++this.rows;
        }
        area = this.rows * this.cols;
        this.gridInfo = new int[area];
        idx = 0;
        while (idx < area) {
            this.gridInfo[idx] = -1;
            ++idx;
        }
        int infoIdx = 0;
        int idx2 = 0;
        while (idx2 < this.controls.length) {
            CellData data = this.cellData[idx2];
            while (this.gridInfo[infoIdx] >= 0) {
                ++infoIdx;
            }
            this.controlRow[idx2] = infoIdx / this.cols;
            this.controlCol[idx2] = infoIdx % this.cols;
            int rowIdx = 0;
            while (rowIdx < data.verticalSpan) {
                int colIdx = 0;
                while (colIdx < data.horizontalSpan) {
                    this.gridInfo[infoIdx + rowIdx * this.cols + colIdx] = idx2;
                    ++colIdx;
                }
                ++rowIdx;
            }
            infoIdx += data.horizontalSpan;
            ++idx2;
        }
    }

    public int getRows() {
        return this.rows;
    }

    public int getStartPos(int control, boolean row) {
        if (row) {
            return this.controlRow[control];
        }
        return this.controlCol[control];
    }

    public int getNumRows(boolean isRow) {
        if (isRow) {
            return this.rows;
        }
        return this.cols;
    }

    public void getRow(int[] result, int rowId, boolean horizontal) {
        if (horizontal) {
            int prev = -1;
            int colIdx = 0;
            while (colIdx < this.cols) {
                int next = this.gridInfo[this.cols * rowId + colIdx];
                result[colIdx] = prev == next ? -1 : next;
                prev = next;
                ++colIdx;
            }
        } else {
            int prev = -1;
            int rowIdx = 0;
            while (rowIdx < this.rows) {
                int next = this.gridInfo[this.cols * rowIdx + rowId];
                result[rowIdx] = prev == next ? -1 : next;
                prev = next;
                ++rowIdx;
            }
        }
    }

    public CellData getCellData(int controlId) {
        return this.cellData[controlId];
    }

    public int getCols() {
        return this.cols;
    }
}

