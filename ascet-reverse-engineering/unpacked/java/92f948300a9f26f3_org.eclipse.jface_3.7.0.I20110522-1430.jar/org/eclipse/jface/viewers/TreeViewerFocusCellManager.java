/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Item
 *  org.eclipse.swt.widgets.Tree
 *  org.eclipse.swt.widgets.TreeItem
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.CellNavigationStrategy;
import org.eclipse.jface.viewers.ColumnViewer;
import org.eclipse.jface.viewers.FocusCellHighlighter;
import org.eclipse.jface.viewers.SWTFocusCellManager;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.jface.viewers.ViewerCell;
import org.eclipse.jface.viewers.ViewerRow;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.TreeItem;
import org.eclipse.swt.widgets.Widget;

public class TreeViewerFocusCellManager
extends SWTFocusCellManager {
    private static final CellNavigationStrategy TREE_NAVIGATE = new CellNavigationStrategy(){

        public void collapse(ColumnViewer viewer, ViewerCell cellToCollapse, Event event) {
            if (cellToCollapse != null) {
                ((TreeItem)cellToCollapse.getItem()).setExpanded(false);
            }
        }

        public void expand(ColumnViewer viewer, ViewerCell cellToExpand, Event event) {
            if (cellToExpand != null) {
                TreeViewer v = (TreeViewer)viewer;
                v.setExpandedState(v.getTreePathFromItem((Item)cellToExpand.getItem()), true);
            }
        }

        public boolean isCollapseEvent(ColumnViewer viewer, ViewerCell cellToCollapse, Event event) {
            if (cellToCollapse == null) {
                return false;
            }
            return cellToCollapse != null && ((TreeItem)cellToCollapse.getItem()).getExpanded() && event.keyCode == 0x1000003 && this.isFirstColumnCell(cellToCollapse);
        }

        public boolean isExpandEvent(ColumnViewer viewer, ViewerCell cellToExpand, Event event) {
            if (cellToExpand == null) {
                return false;
            }
            return cellToExpand != null && ((TreeItem)cellToExpand.getItem()).getItemCount() > 0 && !((TreeItem)cellToExpand.getItem()).getExpanded() && event.keyCode == 0x1000004 && this.isFirstColumnCell(cellToExpand);
        }

        private boolean isFirstColumnCell(ViewerCell cell) {
            return cell.getViewerRow().getVisualIndex(cell.getColumnIndex()) == 0;
        }
    };

    public TreeViewerFocusCellManager(TreeViewer viewer, FocusCellHighlighter focusDrawingDelegate) {
        this(viewer, focusDrawingDelegate, TREE_NAVIGATE);
    }

    public TreeViewerFocusCellManager(TreeViewer viewer, FocusCellHighlighter focusDrawingDelegate, CellNavigationStrategy navigationStrategy) {
        super(viewer, focusDrawingDelegate, navigationStrategy);
    }

    ViewerCell getInitialFocusCell() {
        Tree tree = (Tree)this.getViewer().getControl();
        if (!tree.isDisposed() && tree.getItemCount() > 0 && !tree.getTopItem().isDisposed()) {
            ViewerRow aViewerRow = this.getViewer().getViewerRowFromItem((Widget)tree.getTopItem());
            if (tree.getColumnCount() == 0) {
                return aViewerRow.getCell(0);
            }
            Rectangle clientArea = tree.getClientArea();
            int i = 0;
            while (i < tree.getColumnCount()) {
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
        Tree t = (Tree)this.getViewer().getControl();
        if (cell != null && t.getSelection().length == 1 && t.getSelection()[0] != cell.getItem()) {
            this.setFocusCell(this.getViewer().getViewerRowFromItem((Widget)t.getSelection()[0]).getCell(cell.getColumnIndex()));
        }
        return super.getFocusCell();
    }
}

