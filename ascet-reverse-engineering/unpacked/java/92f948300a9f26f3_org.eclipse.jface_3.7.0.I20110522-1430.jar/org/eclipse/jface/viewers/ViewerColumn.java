/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.viewers;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.CellLabelProvider;
import org.eclipse.jface.viewers.ColumnViewer;
import org.eclipse.jface.viewers.EditingSupport;
import org.eclipse.jface.viewers.ILabelProviderListener;
import org.eclipse.jface.viewers.LabelProviderChangedEvent;
import org.eclipse.jface.viewers.ViewerCell;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.widgets.Widget;

public abstract class ViewerColumn {
    private CellLabelProvider labelProvider;
    static String COLUMN_VIEWER_KEY = "org.eclipse.jface.columnViewer";
    private EditingSupport editingSupport;
    private ILabelProviderListener listener;
    private boolean listenerRegistered = false;
    private ColumnViewer viewer;

    protected ViewerColumn(final ColumnViewer viewer, Widget columnOwner) {
        this.viewer = viewer;
        columnOwner.setData(COLUMN_VIEWER_KEY, (Object)this);
        this.listener = new ILabelProviderListener(){

            public void labelProviderChanged(LabelProviderChangedEvent event) {
                viewer.handleLabelProviderChanged(event);
            }
        };
        columnOwner.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                ViewerColumn.this.handleDispose(viewer);
            }
        });
    }

    CellLabelProvider getLabelProvider() {
        return this.labelProvider;
    }

    public void setLabelProvider(CellLabelProvider labelProvider) {
        this.setLabelProvider(labelProvider, true);
    }

    void setLabelProvider(CellLabelProvider labelProvider, boolean registerListener) {
        if (this.listenerRegistered && this.labelProvider != null) {
            this.labelProvider.removeListener(this.listener);
            this.listenerRegistered = false;
            if (registerListener) {
                this.labelProvider.dispose(this.viewer, this);
            }
        }
        this.labelProvider = labelProvider;
        if (registerListener) {
            this.labelProvider.initialize(this.viewer, this);
            this.labelProvider.addListener(this.listener);
            this.listenerRegistered = true;
        }
    }

    EditingSupport getEditingSupport() {
        return this.editingSupport;
    }

    public void setEditingSupport(EditingSupport editingSupport) {
        this.editingSupport = editingSupport;
    }

    void refresh(ViewerCell cell) {
        CellLabelProvider labelProvider = this.getLabelProvider();
        if (labelProvider == null) {
            Assert.isTrue((boolean)false, (String)("Column " + cell.getColumnIndex() + " has no label provider."));
        }
        labelProvider.update(cell);
    }

    protected void handleDispose() {
        boolean disposeLabelProvider = this.listenerRegistered;
        CellLabelProvider cellLabelProvider = this.labelProvider;
        this.setLabelProvider(null, false);
        if (disposeLabelProvider) {
            cellLabelProvider.dispose(this.viewer, this);
        }
        this.editingSupport = null;
        this.listener = null;
        this.viewer = null;
    }

    private void handleDispose(ColumnViewer viewer) {
        this.handleDispose();
        viewer.clearLegacyEditingSetup();
    }

    public ColumnViewer getViewer() {
        return this.viewer;
    }
}

