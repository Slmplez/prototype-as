/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.TableEditor
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Item
 *  org.eclipse.swt.widgets.TableItem
 */
package org.eclipse.jface.viewers;

import java.util.List;
import org.eclipse.jface.viewers.CellEditor;
import org.eclipse.jface.viewers.ColumnViewerEditor;
import org.eclipse.jface.viewers.ColumnViewerEditorActivationEvent;
import org.eclipse.jface.viewers.ColumnViewerEditorActivationStrategy;
import org.eclipse.jface.viewers.SWTFocusCellManager;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.jface.viewers.ViewerCell;
import org.eclipse.swt.custom.TableEditor;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.TableItem;

public final class TableViewerEditor
extends ColumnViewerEditor {
    private TableEditor tableEditor;
    private SWTFocusCellManager focusCellManager;

    TableViewerEditor(TableViewer viewer, SWTFocusCellManager focusCellManager, ColumnViewerEditorActivationStrategy editorActivationStrategy, int feature) {
        super(viewer, editorActivationStrategy, feature);
        this.tableEditor = new TableEditor(viewer.getTable());
        this.focusCellManager = focusCellManager;
    }

    public static void create(TableViewer viewer, SWTFocusCellManager focusCellManager, ColumnViewerEditorActivationStrategy editorActivationStrategy, int feature) {
        TableViewerEditor editor = new TableViewerEditor(viewer, focusCellManager, editorActivationStrategy, feature);
        viewer.setColumnViewerEditor(editor);
        if (focusCellManager != null) {
            focusCellManager.init();
        }
    }

    public static void create(TableViewer viewer, ColumnViewerEditorActivationStrategy editorActivationStrategy, int feature) {
        TableViewerEditor.create(viewer, null, editorActivationStrategy, feature);
    }

    protected void setEditor(Control w, Item item, int columnNumber) {
        this.tableEditor.setEditor(w, (TableItem)item, columnNumber);
    }

    protected void setLayoutData(CellEditor.LayoutData layoutData) {
        this.tableEditor.grabHorizontal = layoutData.grabHorizontal;
        this.tableEditor.horizontalAlignment = layoutData.horizontalAlignment;
        this.tableEditor.minimumWidth = layoutData.minimumWidth;
        this.tableEditor.verticalAlignment = layoutData.verticalAlignment;
        if (layoutData.minimumHeight != -1) {
            this.tableEditor.minimumHeight = layoutData.minimumHeight;
        }
    }

    public ViewerCell getFocusCell() {
        if (this.focusCellManager != null) {
            return this.focusCellManager.getFocusCell();
        }
        return super.getFocusCell();
    }

    protected void updateFocusCell(ViewerCell focusCell, ColumnViewerEditorActivationEvent event) {
        if (event.eventType == 4 || event.eventType == 5) {
            List l = this.getViewer().getSelectionFromWidget();
            if (!l.contains(focusCell.getElement())) {
                this.getViewer().setSelection(new StructuredSelection(focusCell.getElement()), true);
            }
            if (this.focusCellManager != null) {
                this.focusCellManager.setFocusCell(focusCell);
            }
        }
    }
}

