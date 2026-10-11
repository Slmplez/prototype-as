/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 */
package org.eclipse.jface.viewers;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.ColumnViewer;
import org.eclipse.jface.viewers.FocusCellHighlighter;
import org.eclipse.jface.viewers.ViewerCell;
import org.eclipse.jface.viewers.ViewerRow;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;

public class FocusCellOwnerDrawHighlighter
extends FocusCellHighlighter {
    public FocusCellOwnerDrawHighlighter(ColumnViewer viewer) {
        super(viewer);
        this.hookListener(viewer);
    }

    private void markFocusedCell(Event event, ViewerCell cell) {
        Color foreground;
        Color background = cell.getControl().isFocusControl() ? this.getSelectedCellBackgroundColor(cell) : this.getSelectedCellBackgroundColorNoFocus(cell);
        Color color = foreground = cell.getControl().isFocusControl() ? this.getSelectedCellForegroundColor(cell) : this.getSelectedCellForegroundColorNoFocus(cell);
        if (foreground != null || background != null || this.onlyTextHighlighting(cell)) {
            GC gc = event.gc;
            if (background == null) {
                background = cell.getItem().getDisplay().getSystemColor(26);
            }
            if (foreground == null) {
                foreground = cell.getItem().getDisplay().getSystemColor(27);
            }
            gc.setBackground(background);
            gc.setForeground(foreground);
            if (this.onlyTextHighlighting(cell)) {
                Rectangle area = event.getBounds();
                Rectangle rect = cell.getTextBounds();
                if (rect != null) {
                    area.x = rect.x;
                }
                gc.fillRectangle(area);
            } else {
                gc.fillRectangle(event.getBounds());
            }
            event.detail &= 0xFFFFFFFD;
        }
    }

    private void removeSelectionInformation(Event event, ViewerCell cell) {
        GC gc = event.gc;
        gc.setBackground(cell.getViewerRow().getBackground(cell.getColumnIndex()));
        gc.setForeground(cell.getViewerRow().getForeground(cell.getColumnIndex()));
        gc.fillRectangle(cell.getBounds());
        event.detail &= 0xFFFFFFFD;
    }

    private void hookListener(final ColumnViewer viewer) {
        Listener listener = new Listener(){

            public void handleEvent(Event event) {
                if ((event.detail & 2) > 0) {
                    ViewerCell focusCell = FocusCellOwnerDrawHighlighter.this.getFocusCell();
                    ViewerRow row = viewer.getViewerRowFromItem(event.item);
                    Assert.isNotNull((Object)row, (String)"Internal structure invalid. Item without associated row is not possible.");
                    ViewerCell cell = row.getCell(event.index);
                    if (focusCell == null || !cell.equals(focusCell)) {
                        FocusCellOwnerDrawHighlighter.this.removeSelectionInformation(event, cell);
                    } else {
                        FocusCellOwnerDrawHighlighter.this.markFocusedCell(event, cell);
                    }
                }
            }
        };
        viewer.getControl().addListener(40, listener);
    }

    protected Color getSelectedCellBackgroundColor(ViewerCell cell) {
        return null;
    }

    protected Color getSelectedCellForegroundColor(ViewerCell cell) {
        return null;
    }

    protected Color getSelectedCellForegroundColorNoFocus(ViewerCell cell) {
        return null;
    }

    protected Color getSelectedCellBackgroundColorNoFocus(ViewerCell cell) {
        return null;
    }

    protected boolean onlyTextHighlighting(ViewerCell cell) {
        return false;
    }

    protected void focusCellChanged(ViewerCell newCell, ViewerCell oldCell) {
        int width;
        int x;
        Rectangle rect;
        super.focusCellChanged(newCell, oldCell);
        if (newCell != null) {
            rect = newCell.getBounds();
            x = newCell.getColumnIndex() == 0 ? 0 : rect.x;
            width = newCell.getColumnIndex() == 0 ? rect.x + rect.width : rect.width;
            newCell.getControl().redraw(x, rect.y - 1, width, rect.height + 1, true);
        }
        if (oldCell != null) {
            rect = oldCell.getBounds();
            x = oldCell.getColumnIndex() == 0 ? 0 : rect.x;
            width = oldCell.getColumnIndex() == 0 ? rect.x + rect.width : rect.width;
            oldCell.getControl().redraw(x, rect.y - 1, width, rect.height + 1, true);
        }
    }
}

