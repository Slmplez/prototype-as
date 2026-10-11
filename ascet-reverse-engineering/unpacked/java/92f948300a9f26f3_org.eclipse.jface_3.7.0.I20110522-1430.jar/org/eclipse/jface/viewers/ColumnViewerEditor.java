/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.FocusAdapter
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.TraverseEvent
 *  org.eclipse.swt.events.TraverseListener
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Item
 */
package org.eclipse.jface.viewers;

import org.eclipse.core.runtime.ListenerList;
import org.eclipse.jface.viewers.CellEditor;
import org.eclipse.jface.viewers.ColumnViewer;
import org.eclipse.jface.viewers.ColumnViewerEditorActivationEvent;
import org.eclipse.jface.viewers.ColumnViewerEditorActivationListener;
import org.eclipse.jface.viewers.ColumnViewerEditorActivationStrategy;
import org.eclipse.jface.viewers.ColumnViewerEditorDeactivationEvent;
import org.eclipse.jface.viewers.DoubleClickEvent;
import org.eclipse.jface.viewers.ICellEditorListener;
import org.eclipse.jface.viewers.OpenEvent;
import org.eclipse.jface.viewers.ViewerCell;
import org.eclipse.jface.viewers.ViewerColumn;
import org.eclipse.jface.viewers.ViewerRow;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.FocusAdapter;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.TraverseEvent;
import org.eclipse.swt.events.TraverseListener;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Item;

public abstract class ColumnViewerEditor {
    private CellEditor cellEditor;
    private ICellEditorListener cellEditorListener;
    private FocusListener focusListener;
    private MouseListener mouseListener;
    private ColumnViewer viewer;
    private TraverseListener tabeditingListener;
    private ViewerCell cell;
    private ListenerList editorActivationListener;
    private ColumnViewerEditorActivationStrategy editorActivationStrategy;
    private boolean inEditorDeactivation;
    private DisposeListener disposeListener;
    public static final int DEFAULT = 1;
    public static final int TABBING_MOVE_TO_ROW_NEIGHBOR = 2;
    public static final int TABBING_CYCLE_IN_ROW = 4;
    public static final int TABBING_VERTICAL = 8;
    public static final int TABBING_HORIZONTAL = 16;
    public static final int KEYBOARD_ACTIVATION = 32;
    public static final int KEEP_EDITOR_ON_DOUBLE_CLICK = 64;
    private int feature;

    protected ColumnViewerEditor(final ColumnViewer viewer, ColumnViewerEditorActivationStrategy editorActivationStrategy, int feature) {
        this.viewer = viewer;
        this.editorActivationStrategy = editorActivationStrategy;
        if ((feature & 0x20) == 32) {
            this.editorActivationStrategy.setEnableEditorActivationWithKeyboard(true);
        }
        this.feature = feature;
        this.disposeListener = new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                if (viewer.isCellEditorActive()) {
                    ColumnViewerEditor.this.cancelEditing();
                }
            }
        };
        this.initCellEditorListener();
    }

    private void initCellEditorListener() {
        this.cellEditorListener = new ICellEditorListener(){

            public void editorValueChanged(boolean oldValidState, boolean newValidState) {
            }

            public void cancelEditor() {
                ColumnViewerEditor.this.cancelEditing();
            }

            public void applyEditorValue() {
                ColumnViewerEditor.this.applyEditorValue();
            }
        };
    }

    private boolean activateCellEditor(final ColumnViewerEditorActivationEvent activationEvent) {
        ViewerColumn part = this.viewer.getViewerColumn(this.cell.getColumnIndex());
        Object element = this.cell.getElement();
        if (part != null && part.getEditingSupport() != null && part.getEditingSupport().canEdit(element)) {
            this.cellEditor = part.getEditingSupport().getCellEditor(element);
            if (this.cellEditor != null) {
                int timeout = this.cellEditor.getDoubleClickTimeout();
                final int activationTime = timeout != 0 ? activationEvent.time + timeout : 0;
                if (this.editorActivationListener != null && !this.editorActivationListener.isEmpty()) {
                    Object[] ls = this.editorActivationListener.getListeners();
                    int i = 0;
                    while (i < ls.length) {
                        ((ColumnViewerEditorActivationListener)ls[i]).beforeEditorActivated(activationEvent);
                        if (activationEvent.cancel) {
                            return false;
                        }
                        ++i;
                    }
                }
                this.updateFocusCell(this.cell, activationEvent);
                this.cellEditor.addListener(this.cellEditorListener);
                part.getEditingSupport().initializeCellEditorValue(this.cellEditor, this.cell);
                final Control control = this.cellEditor.getControl();
                this.cellEditor.activate(activationEvent);
                if (control == null) {
                    return false;
                }
                this.setLayoutData(this.cellEditor.getLayoutData());
                this.setEditor(control, (Item)this.cell.getItem(), this.cell.getColumnIndex());
                this.cellEditor.setFocus();
                if (this.cellEditor.dependsOnExternalFocusListener()) {
                    if (this.focusListener == null) {
                        this.focusListener = new FocusAdapter(){

                            public void focusLost(FocusEvent e) {
                                ColumnViewerEditor.this.applyEditorValue();
                            }
                        };
                    }
                    control.addFocusListener(this.focusListener);
                }
                this.mouseListener = new MouseAdapter(){

                    public void mouseDown(MouseEvent e) {
                        if (ColumnViewerEditor.this.shouldFireDoubleClick(activationTime, e.time, activationEvent) && e.button == 1) {
                            control.removeMouseListener(ColumnViewerEditor.this.mouseListener);
                            ColumnViewerEditor.this.cancelEditing();
                            ColumnViewerEditor.this.handleDoubleClickEvent();
                        } else if (ColumnViewerEditor.this.mouseListener != null) {
                            control.removeMouseListener(ColumnViewerEditor.this.mouseListener);
                        }
                    }
                };
                if (activationTime != 0 && (this.feature & 0x40) == 0) {
                    control.addMouseListener(this.mouseListener);
                }
                if (this.tabeditingListener == null) {
                    this.tabeditingListener = new TraverseListener(){

                        public void keyTraversed(TraverseEvent e) {
                            if ((ColumnViewerEditor.this.feature & 1) != 1) {
                                ColumnViewerEditor.this.processTraverseEvent(ColumnViewerEditor.this.cell.getColumnIndex(), ColumnViewerEditor.this.viewer.getViewerRowFromItem(ColumnViewerEditor.this.cell.getItem()), e);
                            }
                        }
                    };
                }
                control.addTraverseListener(this.tabeditingListener);
                if (this.editorActivationListener != null && !this.editorActivationListener.isEmpty()) {
                    Object[] ls = this.editorActivationListener.getListeners();
                    int i = 0;
                    while (i < ls.length) {
                        ((ColumnViewerEditorActivationListener)ls[i]).afterEditorActivated(activationEvent);
                        ++i;
                    }
                }
                this.cell.getItem().addDisposeListener(this.disposeListener);
                return true;
            }
        }
        return false;
    }

    private boolean shouldFireDoubleClick(int activationTime, int mouseTime, ColumnViewerEditorActivationEvent activationEvent) {
        return mouseTime <= activationTime && activationEvent.eventType != 1 && activationEvent.eventType != 4 && activationEvent.eventType != 5;
    }

    void applyEditorValue() {
        if (!this.inEditorDeactivation) {
            try {
                this.inEditorDeactivation = true;
                CellEditor c = this.cellEditor;
                if (c != null && this.cell != null) {
                    Item t;
                    ColumnViewerEditorDeactivationEvent tmp = new ColumnViewerEditorDeactivationEvent(this.cell);
                    tmp.eventType = 2;
                    if (this.editorActivationListener != null && !this.editorActivationListener.isEmpty()) {
                        Object[] ls = this.editorActivationListener.getListeners();
                        int i = 0;
                        while (i < ls.length) {
                            ((ColumnViewerEditorActivationListener)ls[i]).beforeEditorDeactivated(tmp);
                            ++i;
                        }
                    }
                    if ((t = (Item)this.cell.getItem()) != null && !t.isDisposed() && c.isValueValid()) {
                        this.saveEditorValue(c);
                    }
                    if (!this.viewer.getControl().isDisposed()) {
                        this.setEditor(null, null, 0);
                    }
                    c.removeListener(this.cellEditorListener);
                    Control control = c.getControl();
                    if (control != null && !control.isDisposed()) {
                        if (this.mouseListener != null) {
                            control.removeMouseListener(this.mouseListener);
                            this.mouseListener = null;
                        }
                        if (this.focusListener != null) {
                            control.removeFocusListener(this.focusListener);
                        }
                        if (this.tabeditingListener != null) {
                            control.removeTraverseListener(this.tabeditingListener);
                        }
                    }
                    c.deactivate(tmp);
                    if (this.editorActivationListener != null && !this.editorActivationListener.isEmpty()) {
                        Object[] ls = this.editorActivationListener.getListeners();
                        int i = 0;
                        while (i < ls.length) {
                            ((ColumnViewerEditorActivationListener)ls[i]).afterEditorDeactivated(tmp);
                            ++i;
                        }
                    }
                    if (!this.cell.getItem().isDisposed()) {
                        this.cell.getItem().removeDisposeListener(this.disposeListener);
                    }
                }
                this.cellEditor = null;
                this.cell = null;
            }
            finally {
                this.inEditorDeactivation = false;
            }
        }
    }

    void cancelEditing() {
        if (!this.inEditorDeactivation) {
            try {
                this.inEditorDeactivation = true;
                if (this.cellEditor != null) {
                    ColumnViewerEditorDeactivationEvent tmp = new ColumnViewerEditorDeactivationEvent(this.cell);
                    tmp.eventType = 1;
                    if (this.editorActivationListener != null && !this.editorActivationListener.isEmpty()) {
                        Object[] ls = this.editorActivationListener.getListeners();
                        int i = 0;
                        while (i < ls.length) {
                            ((ColumnViewerEditorActivationListener)ls[i]).beforeEditorDeactivated(tmp);
                            ++i;
                        }
                    }
                    if (!this.viewer.getControl().isDisposed()) {
                        this.setEditor(null, null, 0);
                    }
                    this.cellEditor.removeListener(this.cellEditorListener);
                    Control control = this.cellEditor.getControl();
                    if (control != null && !this.viewer.getControl().isDisposed()) {
                        if (this.mouseListener != null) {
                            control.removeMouseListener(this.mouseListener);
                            this.mouseListener = null;
                        }
                        if (this.focusListener != null) {
                            control.removeFocusListener(this.focusListener);
                        }
                        if (this.tabeditingListener != null) {
                            control.removeTraverseListener(this.tabeditingListener);
                        }
                    }
                    CellEditor oldEditor = this.cellEditor;
                    oldEditor.deactivate(tmp);
                    if (this.editorActivationListener != null && !this.editorActivationListener.isEmpty()) {
                        Object[] ls = this.editorActivationListener.getListeners();
                        int i = 0;
                        while (i < ls.length) {
                            ((ColumnViewerEditorActivationListener)ls[i]).afterEditorDeactivated(tmp);
                            ++i;
                        }
                    }
                    if (!this.cell.getItem().isDisposed()) {
                        this.cell.getItem().addDisposeListener(this.disposeListener);
                    }
                    this.cellEditor = null;
                    this.cell = null;
                }
            }
            finally {
                this.inEditorDeactivation = false;
            }
        }
    }

    void handleEditorActivationEvent(ColumnViewerEditorActivationEvent event) {
        if (!event.cancel && this.editorActivationStrategy.isEditorActivationEvent(event)) {
            if (this.cellEditor != null) {
                this.applyEditorValue();
            }
            this.cell = (ViewerCell)event.getSource();
            if (!this.activateCellEditor(event) && !this.inEditorDeactivation) {
                this.cell = null;
                this.cellEditor = null;
            }
        }
    }

    private void saveEditorValue(CellEditor cellEditor) {
        ViewerColumn part = this.viewer.getViewerColumn(this.cell.getColumnIndex());
        if (part != null && part.getEditingSupport() != null) {
            part.getEditingSupport().saveCellEditorValue(cellEditor, this.cell);
        }
    }

    boolean isCellEditorActive() {
        return this.cellEditor != null;
    }

    void handleDoubleClickEvent() {
        this.viewer.fireDoubleClick(new DoubleClickEvent(this.viewer, this.viewer.getSelection()));
        this.viewer.fireOpen(new OpenEvent(this.viewer, this.viewer.getSelection()));
    }

    public void addEditorActivationListener(ColumnViewerEditorActivationListener listener) {
        if (this.editorActivationListener == null) {
            this.editorActivationListener = new ListenerList();
        }
        this.editorActivationListener.add((Object)listener);
    }

    public void removeEditorActivationListener(ColumnViewerEditorActivationListener listener) {
        if (this.editorActivationListener != null) {
            this.editorActivationListener.remove((Object)listener);
        }
    }

    protected void processTraverseEvent(int columnIndex, ViewerRow row, TraverseEvent event) {
        ViewerCell cell2edit = null;
        if (event.detail == 8) {
            event.doit = false;
            if ((event.stateMask & 0x40000) == 262144 && (this.feature & 8) == 8) {
                cell2edit = this.searchCellAboveBelow(row, this.viewer, columnIndex, true);
            } else if ((this.feature & 0x10) == 16) {
                cell2edit = this.searchPreviousCell(row, row.getCell(columnIndex), row.getCell(columnIndex), this.viewer);
            }
        } else if (event.detail == 16) {
            event.doit = false;
            if ((event.stateMask & 0x40000) == 262144 && (this.feature & 8) == 8) {
                cell2edit = this.searchCellAboveBelow(row, this.viewer, columnIndex, false);
            } else if ((this.feature & 0x10) == 16) {
                cell2edit = this.searchNextCell(row, row.getCell(columnIndex), row.getCell(columnIndex), this.viewer);
            }
        }
        if (cell2edit != null) {
            this.viewer.getControl().setRedraw(false);
            ColumnViewerEditorActivationEvent acEvent = new ColumnViewerEditorActivationEvent(cell2edit, event);
            this.viewer.triggerEditorActivationEvent(acEvent);
            this.viewer.getControl().setRedraw(true);
        }
    }

    private ViewerCell searchCellAboveBelow(ViewerRow row, ColumnViewer viewer, int columnIndex, boolean above) {
        ViewerCell rv = null;
        ViewerRow newRow = null;
        newRow = above ? row.getNeighbor(1, false) : row.getNeighbor(2, false);
        if (newRow != null) {
            ViewerColumn column = viewer.getViewerColumn(columnIndex);
            rv = column != null && column.getEditingSupport() != null && column.getEditingSupport().canEdit(newRow.getItem().getData()) ? newRow.getCell(columnIndex) : this.searchCellAboveBelow(newRow, viewer, columnIndex, above);
        }
        return rv;
    }

    private boolean isCellEditable(ColumnViewer viewer, ViewerCell cell) {
        ViewerColumn column = viewer.getViewerColumn(cell.getColumnIndex());
        return column != null && column.getEditingSupport() != null && column.getEditingSupport().canEdit(cell.getElement());
    }

    private ViewerCell searchPreviousCell(ViewerRow row, ViewerCell currentCell, ViewerCell originalCell, ColumnViewer viewer) {
        ViewerRow rowAbove;
        ViewerCell rv = null;
        ViewerCell previousCell = currentCell != null ? currentCell.getNeighbor(ViewerCell.LEFT, true) : (row.getColumnCount() != 0 ? row.getCell(row.getCreationIndex(row.getColumnCount() - 1)) : row.getCell(0));
        if (originalCell.equals(previousCell)) {
            return null;
        }
        if (previousCell != null) {
            rv = this.isCellEditable(viewer, previousCell) ? previousCell : this.searchPreviousCell(row, previousCell, originalCell, viewer);
        } else if ((this.feature & 4) == 4) {
            rv = this.searchPreviousCell(row, null, originalCell, viewer);
        } else if ((this.feature & 2) == 2 && (rowAbove = row.getNeighbor(1, false)) != null) {
            rv = this.searchPreviousCell(rowAbove, null, originalCell, viewer);
        }
        return rv;
    }

    private ViewerCell searchNextCell(ViewerRow row, ViewerCell currentCell, ViewerCell originalCell, ColumnViewer viewer) {
        ViewerRow rowBelow;
        ViewerCell rv = null;
        ViewerCell nextCell = currentCell != null ? currentCell.getNeighbor(ViewerCell.RIGHT, true) : row.getCell(row.getCreationIndex(0));
        if (originalCell.equals(nextCell)) {
            return null;
        }
        if (nextCell != null) {
            rv = this.isCellEditable(viewer, nextCell) ? nextCell : this.searchNextCell(row, nextCell, originalCell, viewer);
        } else if ((this.feature & 4) == 4) {
            rv = this.searchNextCell(row, null, originalCell, viewer);
        } else if ((this.feature & 2) == 2 && (rowBelow = row.getNeighbor(2, false)) != null) {
            rv = this.searchNextCell(rowBelow, null, originalCell, viewer);
        }
        return rv;
    }

    protected abstract void setEditor(Control var1, Item var2, int var3);

    protected abstract void setLayoutData(CellEditor.LayoutData var1);

    protected abstract void updateFocusCell(ViewerCell var1, ColumnViewerEditorActivationEvent var2);

    public ViewerCell getFocusCell() {
        return null;
    }

    protected ColumnViewer getViewer() {
        return this.viewer;
    }
}

