/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Event
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.ColumnViewer;
import org.eclipse.jface.viewers.ViewerCell;
import org.eclipse.swt.widgets.Event;

public class CellNavigationStrategy {
    public boolean isNavigationEvent(ColumnViewer viewer, Event event) {
        switch (event.keyCode) {
            case 0x1000001: 
            case 0x1000002: 
            case 0x1000003: 
            case 0x1000004: 
            case 0x1000005: 
            case 0x1000006: 
            case 0x1000007: 
            case 0x1000008: {
                return true;
            }
        }
        return false;
    }

    public boolean isCollapseEvent(ColumnViewer viewer, ViewerCell cellToCollapse, Event event) {
        return false;
    }

    public boolean isExpandEvent(ColumnViewer viewer, ViewerCell cellToExpand, Event event) {
        return false;
    }

    public void expand(ColumnViewer viewer, ViewerCell cellToExpand, Event event) {
    }

    public void collapse(ColumnViewer viewer, ViewerCell cellToCollapse, Event event) {
    }

    public ViewerCell findSelectedCell(ColumnViewer viewer, ViewerCell currentSelectedCell, Event event) {
        switch (event.keyCode) {
            case 0x1000001: {
                if (currentSelectedCell == null) break;
                return currentSelectedCell.getNeighbor(ViewerCell.ABOVE, false);
            }
            case 0x1000002: {
                if (currentSelectedCell == null) break;
                return currentSelectedCell.getNeighbor(ViewerCell.BELOW, false);
            }
            case 0x1000003: {
                if (currentSelectedCell == null) break;
                return currentSelectedCell.getNeighbor(ViewerCell.LEFT, true);
            }
            case 0x1000004: {
                if (currentSelectedCell == null) break;
                return currentSelectedCell.getNeighbor(ViewerCell.RIGHT, true);
            }
        }
        return null;
    }

    public boolean shouldCancelEvent(ColumnViewer viewer, Event event) {
        return event.keyCode == 0x1000003 || event.keyCode == 0x1000004;
    }

    protected void init() {
    }
}

