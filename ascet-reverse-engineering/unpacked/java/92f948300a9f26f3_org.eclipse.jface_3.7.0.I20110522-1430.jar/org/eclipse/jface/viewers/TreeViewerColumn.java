/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Tree
 *  org.eclipse.swt.widgets.TreeColumn
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.jface.viewers.ViewerColumn;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.TreeColumn;
import org.eclipse.swt.widgets.Widget;

public final class TreeViewerColumn
extends ViewerColumn {
    private TreeColumn column;

    public TreeViewerColumn(TreeViewer viewer, int style) {
        this(viewer, style, -1);
    }

    public TreeViewerColumn(TreeViewer viewer, int style, int index) {
        this(viewer, TreeViewerColumn.createColumn(viewer.getTree(), style, index));
    }

    public TreeViewerColumn(TreeViewer viewer, TreeColumn column) {
        super(viewer, (Widget)column);
        this.column = column;
    }

    private static TreeColumn createColumn(Tree table, int style, int index) {
        if (index >= 0) {
            return new TreeColumn(table, style, index);
        }
        return new TreeColumn(table, style);
    }

    public TreeColumn getColumn() {
        return this.column;
    }
}

