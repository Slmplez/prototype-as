/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Item
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableItem
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.viewers;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.AbstractTableViewer;
import org.eclipse.jface.viewers.ColumnViewerEditor;
import org.eclipse.jface.viewers.ColumnViewerEditorActivationStrategy;
import org.eclipse.jface.viewers.CustomHashtable;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.IIndexableLazyContentProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.TableViewerEditor;
import org.eclipse.jface.viewers.TableViewerRow;
import org.eclipse.jface.viewers.ViewerRow;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.Widget;

public class TableViewer
extends AbstractTableViewer {
    private Table table;
    private TableViewerRow cachedRow;

    public TableViewer(Composite parent) {
        this(parent, 2818);
    }

    public TableViewer(Composite parent, int style) {
        this(new Table(parent, style));
    }

    public TableViewer(Table table) {
        this.table = table;
        this.hookControl((Control)table);
    }

    public Control getControl() {
        return this.table;
    }

    public Table getTable() {
        return this.table;
    }

    protected ColumnViewerEditor createViewerEditor() {
        return new TableViewerEditor(this, null, new ColumnViewerEditorActivationStrategy(this), 1);
    }

    public void setSelection(ISelection selection, boolean reveal) {
        super.setSelection(selection, reveal);
    }

    protected ViewerRow getViewerRowFromItem(Widget item) {
        if (this.cachedRow == null) {
            this.cachedRow = new TableViewerRow((TableItem)item);
        } else {
            this.cachedRow.setItem((TableItem)item);
        }
        return this.cachedRow;
    }

    protected ViewerRow internalCreateNewRowPart(int style, int rowIndex) {
        TableItem item = rowIndex >= 0 ? new TableItem(this.table, style, rowIndex) : new TableItem(this.table, style);
        return this.getViewerRowFromItem((Widget)item);
    }

    protected Item getItemAt(Point p) {
        TableItem[] selection = this.table.getSelection();
        if (selection.length == 1) {
            int columnCount = this.table.getColumnCount();
            int i = 0;
            while (i < columnCount) {
                if (selection[0].getBounds(i).contains(p)) {
                    return selection[0];
                }
                ++i;
            }
        }
        return this.table.getItem(p);
    }

    protected int doGetItemCount() {
        return this.table.getItemCount();
    }

    protected int doIndexOf(Item item) {
        return this.table.indexOf((TableItem)item);
    }

    protected void doSetItemCount(int count) {
        this.table.setItemCount(count);
    }

    protected Item[] doGetItems() {
        return this.table.getItems();
    }

    protected int doGetColumnCount() {
        return this.table.getColumnCount();
    }

    protected Widget doGetColumn(int index) {
        return this.table.getColumn(index);
    }

    protected Item doGetItem(int index) {
        return this.table.getItem(index);
    }

    protected Item[] doGetSelection() {
        return this.table.getSelection();
    }

    protected int[] doGetSelectionIndices() {
        return this.table.getSelectionIndices();
    }

    protected void doClearAll() {
        this.table.clearAll();
    }

    protected void doResetItem(Item item) {
        TableItem tableItem = (TableItem)item;
        int columnCount = Math.max(1, this.table.getColumnCount());
        int i = 0;
        while (i < columnCount) {
            tableItem.setText(i, "");
            if (tableItem.getImage(i) != null) {
                tableItem.setImage(i, null);
            }
            ++i;
        }
    }

    protected void doRemove(int start, int end) {
        this.table.remove(start, end);
    }

    protected void doRemoveAll() {
        this.table.removeAll();
    }

    protected void doRemove(int[] indices) {
        this.table.remove(indices);
    }

    protected void doShowItem(Item item) {
        this.table.showItem((TableItem)item);
    }

    protected void doDeselectAll() {
        this.table.deselectAll();
    }

    protected void doSetSelection(Item[] items) {
        Assert.isNotNull((Object)items, (String)"Items-Array can not be null");
        TableItem[] t = new TableItem[items.length];
        System.arraycopy(items, 0, t, 0, t.length);
        this.table.setSelection(t);
    }

    protected void doShowSelection() {
        this.table.showSelection();
    }

    protected void doSetSelection(int[] indices) {
        this.table.setSelection(indices);
    }

    protected void doClear(int index) {
        this.table.clear(index);
    }

    protected void doSelect(int[] indices) {
        this.table.select(indices);
    }

    public void refresh(final Object element, final boolean updateLabels, boolean reveal) {
        if (this.checkBusy()) {
            return;
        }
        if (this.isCellEditorActive()) {
            this.cancelEditing();
        }
        this.preservingSelection(new Runnable(){

            public void run() {
                TableViewer.this.internalRefresh(element, updateLabels);
            }
        }, reveal);
    }

    public void refresh(boolean updateLabels, boolean reveal) {
        this.refresh(this.getRoot(), updateLabels, reveal);
    }

    public void remove(Object[] elements) {
        this.assertElementsNotNull(elements);
        if (this.checkBusy()) {
            return;
        }
        if (elements.length == 0) {
            return;
        }
        boolean deselectedItems = false;
        Object elementToBeRemoved = null;
        CustomHashtable elementsToBeRemoved = null;
        if (elements.length == 1) {
            elementToBeRemoved = elements[0];
        } else {
            elementsToBeRemoved = new CustomHashtable(this.getComparer());
            int i = 0;
            while (i < elements.length) {
                Object element = elements[i];
                elementsToBeRemoved.put(element, element);
                ++i;
            }
        }
        int[] selectionIndices = this.doGetSelectionIndices();
        int i = 0;
        while (i < selectionIndices.length) {
            int index = selectionIndices[i];
            Item item = this.doGetItem(index);
            Object data = item.getData();
            if (data != null && (elementsToBeRemoved != null && elementsToBeRemoved.containsKey(data) || this.equals(elementToBeRemoved, data))) {
                this.table.deselect(index);
                deselectedItems = true;
            }
            ++i;
        }
        super.remove(elements);
        if (deselectedItems) {
            ISelection sel = this.getSelection();
            this.updateSelection(sel);
            this.firePostSelectionChanged(new SelectionChangedEvent(this, sel));
        }
    }

    protected Widget doFindItem(Object element) {
        IContentProvider contentProvider = this.getContentProvider();
        if (contentProvider instanceof IIndexableLazyContentProvider) {
            IIndexableLazyContentProvider indexable = (IIndexableLazyContentProvider)contentProvider;
            int idx = indexable.findElement(element);
            if (idx != -1) {
                return this.doGetItem(idx);
            }
            return null;
        }
        return super.doFindItem(element);
    }
}

