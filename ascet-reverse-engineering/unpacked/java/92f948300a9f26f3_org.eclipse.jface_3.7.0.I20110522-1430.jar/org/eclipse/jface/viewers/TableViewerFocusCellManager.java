/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.CellNavigationStrategy;
import org.eclipse.jface.viewers.FocusCellHighlighter;
import org.eclipse.jface.viewers.SWTFocusCellManager;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.jface.viewers.ViewerCell;
import org.eclipse.jface.viewers.ViewerRow;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.Widget;

public class TableViewerFocusCellManager
extends SWTFocusCellManager {
    private static final CellNavigationStrategy TABLE_NAVIGATE = new CellNavigationStrategy();

    public TableViewerFocusCellManager(TableViewer viewer, FocusCellHighlighter focusDrawingDelegate) {
        this(viewer, focusDrawingDelegate, TABLE_NAVIGATE);
    }

    public TableViewerFocusCellManager(TableViewer viewer, FocusCellHighlighter focusDrawingDelegate, CellNavigationStrategy navigationStrategy) {
        super(viewer, focusDrawingDelegate, navigationStrategy);
    }

    ViewerCell getInitialFocusCell() {
        Table table = (Table)this.getViewer().getControl();
        if (!table.isDisposed() && table.getItemCount() > 0 && !table.getItem(table.getTopIndex()).isDisposed()) {
            ViewerRow aViewerRow = this.getViewer().getViewerRowFromItem((Widget)table.getItem(table.getTopIndex()));
            if (table.getColumnCount() == 0) {
                return aViewerRow.getCell(0);
            }
            Rectangle clientArea = table.getClientArea();
            int i = 0;
            while (i < table.getColumnCount()) {
                if (aViewerRow.getWidth(i) > 0 && this.columnInVisibleArea(clientArea, aViewerRow, i)) {
                    return aViewerRow.getCell(i);
                }
                ++i;
            }
        }
        return null;
    }

    private boolean columnInVisibleArea(Rectangle clientArea, ViewerRow row, int colIndex) {
        return row.getBounds((int)colIndex).x >= clientArea.x;
    }

    public ViewerCell getFocusCell() {
        ViewerCell cell = super.getFocusCell();
        Table t = (Table)this.getViewer().getControl();
        if (cell != null && t.getSelection().length == 1 && t.getSelection()[0] != cell.getItem()) {
            this.setFocusCell(this.getViewer().getViewerRowFromItem((Widget)t.getSelection()[0]).getCell(cell.getColumnIndex()));
        }
        return super.getFocusCell();
    }
}

