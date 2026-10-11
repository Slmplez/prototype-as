/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Item
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.viewers;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.internal.InternalPolicy;
import org.eclipse.jface.util.Policy;
import org.eclipse.jface.viewers.CellEditor;
import org.eclipse.jface.viewers.CellLabelProvider;
import org.eclipse.jface.viewers.ColumnViewerEditor;
import org.eclipse.jface.viewers.ColumnViewerEditorActivationEvent;
import org.eclipse.jface.viewers.EditingSupport;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.ICellModifier;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.jface.viewers.ITableLabelProvider;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.StructuredViewer;
import org.eclipse.jface.viewers.ViewerCell;
import org.eclipse.jface.viewers.ViewerColumn;
import org.eclipse.jface.viewers.ViewerRow;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Widget;

public abstract class ColumnViewer
extends StructuredViewer {
    private CellEditor[] cellEditors;
    private ICellModifier cellModifier;
    private String[] columnProperties;
    private ViewerCell cell = new ViewerCell(null, 0, null);
    private ColumnViewerEditor viewerEditor;
    private boolean busy;
    private boolean logWhenBusy = true;

    protected void hookControl(Control control) {
        super.hookControl(control);
        this.viewerEditor = this.createViewerEditor();
        this.hookEditingSupport(control);
    }

    protected void hookEditingSupport(Control control) {
        if (this.viewerEditor != null) {
            control.addMouseListener((MouseListener)new MouseAdapter(){

                public void mouseDown(MouseEvent e) {
                    if (e.count != 2) {
                        ColumnViewer.this.handleMouseDown(e);
                    }
                }

                public void mouseDoubleClick(MouseEvent e) {
                    ColumnViewer.this.handleMouseDown(e);
                }
            });
        }
    }

    protected abstract ColumnViewerEditor createViewerEditor();

    public ViewerCell getCell(Point point) {
        ViewerRow row = this.getViewerRow(point);
        if (row != null) {
            return row.getCell(point);
        }
        return null;
    }

    protected ViewerRow getViewerRow(Point point) {
        Item item = this.getItemAt(point);
        if (item != null) {
            return this.getViewerRowFromItem((Widget)item);
        }
        return null;
    }

    protected abstract ViewerRow getViewerRowFromItem(Widget var1);

    protected abstract Widget getColumnViewerOwner(int var1);

    ViewerColumn getViewerColumn(int columnIndex) {
        Widget columnOwner = this.getColumnViewerOwner(columnIndex);
        if (columnOwner == null || columnOwner.isDisposed()) {
            return null;
        }
        ViewerColumn viewer = (ViewerColumn)columnOwner.getData(ViewerColumn.COLUMN_VIEWER_KEY);
        if (viewer == null) {
            viewer = this.createViewerColumn(columnOwner, CellLabelProvider.createViewerLabelProvider(this, this.getLabelProvider()));
            this.setupEditingSupport(columnIndex, viewer);
        }
        if (viewer.getEditingSupport() == null && this.getCellModifier() != null) {
            this.setupEditingSupport(columnIndex, viewer);
        }
        return viewer;
    }

    private void setupEditingSupport(final int columnIndex, ViewerColumn viewer) {
        if (this.getCellModifier() != null) {
            viewer.setEditingSupport(new EditingSupport(this){

                public boolean canEdit(Object element) {
                    Object[] properties = ColumnViewer.this.getColumnProperties();
                    if (columnIndex < properties.length) {
                        return ColumnViewer.this.getCellModifier().canModify(element, (String)ColumnViewer.this.getColumnProperties()[columnIndex]);
                    }
                    return false;
                }

                public CellEditor getCellEditor(Object element) {
                    CellEditor[] editors = ColumnViewer.this.getCellEditors();
                    if (columnIndex < editors.length) {
                        return ColumnViewer.this.getCellEditors()[columnIndex];
                    }
                    return null;
                }

                public Object getValue(Object element) {
                    Object[] properties = ColumnViewer.this.getColumnProperties();
                    if (columnIndex < properties.length) {
                        return ColumnViewer.this.getCellModifier().getValue(element, (String)ColumnViewer.this.getColumnProperties()[columnIndex]);
                    }
                    return null;
                }

                public void setValue(Object element, Object value) {
                    Object[] properties = ColumnViewer.this.getColumnProperties();
                    if (columnIndex < properties.length) {
                        ColumnViewer.this.getCellModifier().modify(ColumnViewer.this.findItem(element), (String)ColumnViewer.this.getColumnProperties()[columnIndex], value);
                    }
                }

                boolean isLegacySupport() {
                    return true;
                }
            });
        }
    }

    private ViewerColumn createViewerColumn(Widget columnOwner, CellLabelProvider labelProvider) {
        ViewerColumn column = new ViewerColumn(this, columnOwner){};
        column.setLabelProvider(labelProvider, false);
        return column;
    }

    ViewerCell updateCell(ViewerRow rowItem, int column, Object element) {
        this.cell.update(rowItem, column, element);
        return this.cell;
    }

    protected abstract Item getItemAt(Point var1);

    protected Item getItem(int x, int y) {
        return this.getItemAt(this.getControl().toControl(x, y));
    }

    public void setLabelProvider(IBaseLabelProvider labelProvider) {
        Assert.isTrue((labelProvider instanceof ITableLabelProvider || labelProvider instanceof ILabelProvider || labelProvider instanceof CellLabelProvider ? 1 : 0) != 0);
        this.updateColumnParts(labelProvider);
        super.setLabelProvider(labelProvider);
        if (labelProvider instanceof CellLabelProvider) {
            ((CellLabelProvider)labelProvider).initialize(this, null);
        }
    }

    void internalDisposeLabelProvider(IBaseLabelProvider oldProvider) {
        if (oldProvider instanceof CellLabelProvider) {
            ((CellLabelProvider)oldProvider).dispose(this, null);
        } else {
            super.internalDisposeLabelProvider(oldProvider);
        }
    }

    private void updateColumnParts(IBaseLabelProvider labelProvider) {
        ViewerColumn column;
        int i = 0;
        while ((column = this.getViewerColumn(i++)) != null) {
            column.setLabelProvider(CellLabelProvider.createViewerLabelProvider(this, labelProvider), false);
        }
    }

    public void cancelEditing() {
        if (this.viewerEditor != null) {
            this.viewerEditor.cancelEditing();
        }
    }

    protected void applyEditorValue() {
        if (this.viewerEditor != null) {
            this.viewerEditor.applyEditorValue();
        }
    }

    public void editElement(Object element, int column) {
        if (this.viewerEditor != null) {
            try {
                ViewerCell cell;
                ViewerRow row;
                this.getControl().setRedraw(false);
                this.setSelection(new StructuredSelection(element), true);
                Widget item = this.findItem(element);
                if (item != null && (row = this.getViewerRowFromItem(item)) != null && (cell = row.getCell(column)) != null) {
                    this.triggerEditorActivationEvent(new ColumnViewerEditorActivationEvent(cell));
                }
            }
            finally {
                this.getControl().setRedraw(true);
            }
        }
    }

    public CellEditor[] getCellEditors() {
        return this.cellEditors;
    }

    public ICellModifier getCellModifier() {
        return this.cellModifier;
    }

    public Object[] getColumnProperties() {
        return this.columnProperties;
    }

    public boolean isCellEditorActive() {
        if (this.viewerEditor != null) {
            return this.viewerEditor.isCellEditorActive();
        }
        return false;
    }

    public void refresh(Object element) {
        if (this.checkBusy()) {
            return;
        }
        if (this.isCellEditorActive()) {
            this.cancelEditing();
        }
        super.refresh(element);
    }

    public void refresh(Object element, boolean updateLabels) {
        if (this.checkBusy()) {
            return;
        }
        if (this.isCellEditorActive()) {
            this.cancelEditing();
        }
        super.refresh(element, updateLabels);
    }

    public void update(Object element, String[] properties) {
        if (this.checkBusy()) {
            return;
        }
        super.update(element, properties);
    }

    public void setCellEditors(CellEditor[] editors) {
        this.cellEditors = editors;
    }

    public void setCellModifier(ICellModifier modifier) {
        this.cellModifier = modifier;
    }

    public void setColumnProperties(String[] columnProperties) {
        this.columnProperties = columnProperties;
    }

    protected abstract int doGetColumnCount();

    public CellLabelProvider getLabelProvider(int columnIndex) {
        ViewerColumn column = this.getViewerColumn(columnIndex);
        if (column != null) {
            return column.getLabelProvider();
        }
        return null;
    }

    private void handleMouseDown(MouseEvent e) {
        ViewerCell cell = this.getCell(new Point(e.x, e.y));
        if (cell != null) {
            this.triggerEditorActivationEvent(new ColumnViewerEditorActivationEvent(cell, e));
        }
    }

    protected void triggerEditorActivationEvent(ColumnViewerEditorActivationEvent event) {
        this.viewerEditor.handleEditorActivationEvent(event);
    }

    public void setColumnViewerEditor(ColumnViewerEditor columnViewerEditor) {
        Assert.isNotNull((Object)columnViewerEditor);
        this.viewerEditor = columnViewerEditor;
    }

    public ColumnViewerEditor getColumnViewerEditor() {
        return this.viewerEditor;
    }

    protected Object[] getRawChildren(Object parent) {
        boolean oldBusy = this.isBusy();
        this.setBusy(true);
        try {
            Object[] objectArray = super.getRawChildren(parent);
            return objectArray;
        }
        finally {
            this.setBusy(oldBusy);
        }
    }

    void clearLegacyEditingSetup() {
        if (!this.getControl().isDisposed() && this.getCellEditors() != null) {
            int count = this.doGetColumnCount();
            int i = 0;
            while (i < count || i == 0) {
                EditingSupport e;
                ViewerColumn column;
                Widget owner = this.getColumnViewerOwner(i);
                if (owner != null && !owner.isDisposed() && (column = (ViewerColumn)owner.getData(ViewerColumn.COLUMN_VIEWER_KEY)) != null && (e = column.getEditingSupport()) != null && e.isLegacySupport()) {
                    column.setEditingSupport(null);
                }
                ++i;
            }
        }
    }

    protected boolean checkBusy() {
        if (this.isBusy()) {
            if (this.logWhenBusy) {
                String message = "Ignored reentrant call while viewer is busy.";
                if (!InternalPolicy.DEBUG_LOG_REENTRANT_VIEWER_CALLS) {
                    this.logWhenBusy = false;
                    message = String.valueOf(message) + " This is only logged once per viewer instance, but similar calls will still be ignored.";
                }
                Policy.getLog().log((IStatus)new Status(2, "org.eclipse.jface", message, (Throwable)new RuntimeException()));
            }
            return true;
        }
        return false;
    }

    protected void setBusy(boolean busy) {
        this.busy = busy;
    }

    public boolean isBusy() {
        return this.busy;
    }
}

