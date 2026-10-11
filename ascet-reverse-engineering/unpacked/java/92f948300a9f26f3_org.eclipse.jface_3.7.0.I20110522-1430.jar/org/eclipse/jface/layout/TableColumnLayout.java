/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Scrollable
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableColumn
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.layout;

import org.eclipse.jface.layout.AbstractColumnLayout;
import org.eclipse.jface.viewers.ColumnLayoutData;
import org.eclipse.jface.viewers.ColumnPixelData;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Scrollable;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.swt.widgets.Widget;

public class TableColumnLayout
extends AbstractColumnLayout {
    protected int getColumnCount(Scrollable tableTree) {
        return ((Table)tableTree).getColumnCount();
    }

    protected void setColumnWidths(Scrollable tableTree, int[] widths) {
        TableColumn[] columns = ((Table)tableTree).getColumns();
        int i = 0;
        while (i < widths.length) {
            columns[i].setWidth(widths[i]);
            ++i;
        }
    }

    protected ColumnLayoutData getLayoutData(Scrollable tableTree, int columnIndex) {
        TableColumn column = ((Table)tableTree).getColumn(columnIndex);
        return (ColumnLayoutData)column.getData("org.eclipse.jface.LAYOUT_DATA");
    }

    Composite getComposite(Widget column) {
        return ((TableColumn)column).getParent().getParent();
    }

    protected void updateColumnData(Widget column) {
        TableColumn tColumn = (TableColumn)column;
        Table t = tColumn.getParent();
        if (!IS_GTK || t.getColumn(t.getColumnCount() - 1) != tColumn) {
            tColumn.setData("org.eclipse.jface.LAYOUT_DATA", (Object)new ColumnPixelData(tColumn.getWidth()));
            this.layout(t.getParent(), true);
        }
    }
}

