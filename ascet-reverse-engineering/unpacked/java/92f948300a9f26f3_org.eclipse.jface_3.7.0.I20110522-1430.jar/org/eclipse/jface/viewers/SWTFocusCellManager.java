/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.accessibility.AccessibleAdapter
 *  org.eclipse.swt.accessibility.AccessibleEvent
 *  org.eclipse.swt.accessibility.AccessibleListener
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 */
package org.eclipse.jface.viewers;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.CellLabelProvider;
import org.eclipse.jface.viewers.CellNavigationStrategy;
import org.eclipse.jface.viewers.ColumnViewer;
import org.eclipse.jface.viewers.FocusCellHighlighter;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.ViewerCell;
import org.eclipse.jface.viewers.ViewerColumn;
import org.eclipse.jface.viewers.ViewerRow;
import org.eclipse.swt.accessibility.AccessibleAdapter;
import org.eclipse.swt.accessibility.AccessibleEvent;
import org.eclipse.swt.accessibility.AccessibleListener;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;

abstract class SWTFocusCellManager {
    private CellNavigationStrategy navigationStrategy;
    private ColumnViewer viewer;
    private ViewerCell focusCell;
    private FocusCellHighlighter cellHighlighter;
    private DisposeListener itemDeletionListener = new DisposeListener(){

        public void widgetDisposed(DisposeEvent e) {
            SWTFocusCellManager.this.setFocusCell(null);
        }
    };

    public SWTFocusCellManager(ColumnViewer viewer, FocusCellHighlighter focusDrawingDelegate, CellNavigationStrategy navigationDelegate) {
        this.viewer = viewer;
        this.cellHighlighter = focusDrawingDelegate;
        if (this.cellHighlighter != null) {
            this.cellHighlighter.setMgr(this);
        }
        this.navigationStrategy = navigationDelegate;
        this.hookListener(viewer);
    }

    void init() {
        this.cellHighlighter.init();
        this.navigationStrategy.init();
    }

    private void handleMouseDown(Event event) {
        ViewerCell cell = this.viewer.getCell(new Point(event.x, event.y));
        if (cell != null && !cell.equals(this.focusCell)) {
            this.setFocusCell(cell);
        }
    }

    private void handleKeyDown(Event event) {
        ViewerCell tmp = null;
        if (this.navigationStrategy.isCollapseEvent(this.viewer, this.focusCell, event)) {
            this.navigationStrategy.collapse(this.viewer, this.focusCell, event);
        } else if (this.navigationStrategy.isExpandEvent(this.viewer, this.focusCell, event)) {
            this.navigationStrategy.expand(this.viewer, this.focusCell, event);
        } else if (this.navigationStrategy.isNavigationEvent(this.viewer, event) && (tmp = this.navigationStrategy.findSelectedCell(this.viewer, this.focusCell, event)) != null && !tmp.equals(this.focusCell)) {
            this.setFocusCell(tmp);
        }
        if (this.navigationStrategy.shouldCancelEvent(this.viewer, event)) {
            event.doit = false;
        }
    }

    private void handleSelection(Event event) {
        if ((event.detail & 0x20) == 0 && this.focusCell != null && this.focusCell.getItem() != event.item && event.item != null && !event.item.isDisposed()) {
            ViewerRow row = this.viewer.getViewerRowFromItem(event.item);
            Assert.isNotNull((Object)row, (String)"Internal Structure invalid. Row item has no row ViewerRow assigned");
            ViewerCell tmp = row.getCell(this.focusCell.getColumnIndex());
            if (!this.focusCell.equals(tmp)) {
                this.setFocusCell(tmp);
            }
        }
    }

    private void handleFocusIn(Event event) {
        if (this.focusCell == null) {
            this.setFocusCell(this.getInitialFocusCell());
        }
    }

    abstract ViewerCell getInitialFocusCell();

    private void hookListener(final ColumnViewer viewer) {
        Listener listener = new Listener(){

            public void handleEvent(Event event) {
                switch (event.type) {
                    case 3: {
                        SWTFocusCellManager.this.handleMouseDown(event);
                        break;
                    }
                    case 1: {
                        SWTFocusCellManager.this.handleKeyDown(event);
                        break;
                    }
                    case 13: {
                        SWTFocusCellManager.this.handleSelection(event);
                        break;
                    }
                    case 15: {
                        SWTFocusCellManager.this.handleFocusIn(event);
                    }
                }
            }
        };
        viewer.getControl().addListener(3, listener);
        viewer.getControl().addListener(1, listener);
        viewer.getControl().addListener(13, listener);
        viewer.addSelectionChangedListener(new ISelectionChangedListener(){

            public void selectionChanged(SelectionChangedEvent event) {
                if (event.selection.isEmpty()) {
                    SWTFocusCellManager.this.setFocusCell(null);
                }
            }
        });
        viewer.getControl().addListener(15, listener);
        viewer.getControl().getAccessible().addAccessibleListener((AccessibleListener)new AccessibleAdapter(){

            public void getName(AccessibleEvent event) {
                ViewerCell cell = SWTFocusCellManager.this.getFocusCell();
                if (cell == null) {
                    return;
                }
                ViewerRow row = cell.getViewerRow();
                if (row == null) {
                    return;
                }
                ViewerColumn viewPart = viewer.getViewerColumn(cell.getColumnIndex());
                if (viewPart == null) {
                    return;
                }
                CellLabelProvider labelProvider = viewPart.getLabelProvider();
                if (labelProvider == null) {
                    return;
                }
                labelProvider.update(cell);
                event.result = cell.getText();
            }
        });
    }

    public ViewerCell getFocusCell() {
        return this.focusCell;
    }

    final ViewerCell _getFocusCell() {
        return this.focusCell;
    }

    void setFocusCell(ViewerCell focusCell) {
        ViewerCell oldCell = this.focusCell;
        if (this.focusCell != null && !this.focusCell.getItem().isDisposed()) {
            this.focusCell.getItem().removeDisposeListener(this.itemDeletionListener);
        }
        this.focusCell = focusCell;
        if (this.focusCell != null && !this.focusCell.getItem().isDisposed()) {
            this.focusCell.getItem().addDisposeListener(this.itemDeletionListener);
        }
        if (focusCell != null) {
            focusCell.scrollIntoView();
        }
        this.cellHighlighter.focusCellChanged(focusCell, oldCell);
        this.getViewer().getControl().getAccessible().setFocus(-1);
    }

    ColumnViewer getViewer() {
        return this.viewer;
    }
}

