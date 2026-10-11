/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableColumn
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.jface.viewers.ViewerColumn;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.swt.widgets.Widget;

public final class TableViewerColumn
extends ViewerColumn {
    private TableColumn column;

    public TableViewerColumn(TableViewer viewer, int style) {
        this(viewer, style, -1);
    }

    public TableViewerColumn(TableViewer viewer, int style, int index) {
        this(viewer, TableViewerColumn.createColumn(viewer.getTable(), style, index));
    }

    public TableViewerColumn(TableViewer viewer, TableColumn column) {
        super(viewer, (Widget)column);
        this.column = column;
    }

    private static TableColumn createColumn(Table table, int style, int index) {
        if (index >= 0) {
            return new TableColumn(table, style, index);
        }
        return new TableColumn(table, style);
    }

    public TableColumn getColumn() {
        return this.column;
    }
}

