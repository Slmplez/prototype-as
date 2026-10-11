/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.TreeEditor
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Item
 *  org.eclipse.swt.widgets.TreeItem
 */
package org.eclipse.jface.viewers;

import java.util.List;
import org.eclipse.jface.viewers.CellEditor;
import org.eclipse.jface.viewers.ColumnViewerEditor;
import org.eclipse.jface.viewers.ColumnViewerEditorActivationEvent;
import org.eclipse.jface.viewers.ColumnViewerEditorActivationStrategy;
import org.eclipse.jface.viewers.SWTFocusCellManager;
import org.eclipse.jface.viewers.TreeSelection;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.jface.viewers.ViewerCell;
import org.eclipse.swt.custom.TreeEditor;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.TreeItem;

public class TreeViewerEditor
extends ColumnViewerEditor {
    private TreeEditor treeEditor;
    private SWTFocusCellManager focusCellManager;

    TreeViewerEditor(TreeViewer viewer, SWTFocusCellManager focusCellManager, ColumnViewerEditorActivationStrategy editorActivationStrategy, int feature) {
        super(viewer, editorActivationStrategy, feature);
        this.treeEditor = new TreeEditor(viewer.getTree());
        this.focusCellManager = focusCellManager;
    }

    public static void create(TreeViewer viewer, SWTFocusCellManager focusCellManager, ColumnViewerEditorActivationStrategy editorActivationStrategy, int feature) {
        TreeViewerEditor editor = new TreeViewerEditor(viewer, focusCellManager, editorActivationStrategy, feature);
        viewer.setColumnViewerEditor(editor);
        if (focusCellManager != null) {
            focusCellManager.init();
        }
    }

    public static void create(TreeViewer viewer, ColumnViewerEditorActivationStrategy editorActivationStrategy, int feature) {
        TreeViewerEditor.create(viewer, null, editorActivationStrategy, feature);
    }

    protected void setEditor(Control w, Item item, int fColumnNumber) {
        this.treeEditor.setEditor(w, (TreeItem)item, fColumnNumber);
    }

    protected void setLayoutData(CellEditor.LayoutData layoutData) {
        this.treeEditor.grabHorizontal = layoutData.grabHorizontal;
        this.treeEditor.horizontalAlignment = layoutData.horizontalAlignment;
        this.treeEditor.minimumWidth = layoutData.minimumWidth;
        this.treeEditor.verticalAlignment = layoutData.verticalAlignment;
        if (layoutData.minimumHeight != -1) {
            this.treeEditor.minimumHeight = layoutData.minimumHeight;
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
                this.getViewer().setSelection(new TreeSelection(focusCell.getViewerRow().getTreePath()), true);
            }
            if (this.focusCellManager != null) {
                this.focusCellManager.setFocusCell(focusCell);
            }
        }
    }
}

