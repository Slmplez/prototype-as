/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.viewers;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.CellEditor;
import org.eclipse.jface.viewers.ColumnViewer;
import org.eclipse.jface.viewers.ViewerCell;

public abstract class EditingSupport {
    private ColumnViewer viewer;

    public EditingSupport(ColumnViewer viewer) {
        Assert.isNotNull((Object)viewer, (String)"Viewer is not allowed to be null");
        this.viewer = viewer;
    }

    protected abstract CellEditor getCellEditor(Object var1);

    protected abstract boolean canEdit(Object var1);

    protected abstract Object getValue(Object var1);

    protected abstract void setValue(Object var1, Object var2);

    public ColumnViewer getViewer() {
        return this.viewer;
    }

    protected void initializeCellEditorValue(CellEditor cellEditor, ViewerCell cell) {
        Object value = this.getValue(cell.getElement());
        cellEditor.setValue(value);
    }

    protected void saveCellEditorValue(CellEditor cellEditor, ViewerCell cell) {
        Object value = cellEditor.getValue();
        this.setValue(cell.getElement(), value);
    }

    boolean isLegacySupport() {
        return false;
    }
}

