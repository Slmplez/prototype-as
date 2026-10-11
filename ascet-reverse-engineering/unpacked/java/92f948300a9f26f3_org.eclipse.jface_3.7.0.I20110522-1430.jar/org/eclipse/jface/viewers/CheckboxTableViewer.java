/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableColumn
 *  org.eclipse.swt.widgets.TableItem
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.viewers;

import java.util.ArrayList;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.jface.viewers.CheckStateChangedEvent;
import org.eclipse.jface.viewers.ColumnWeightData;
import org.eclipse.jface.viewers.CustomHashtable;
import org.eclipse.jface.viewers.ICheckStateListener;
import org.eclipse.jface.viewers.ICheckStateProvider;
import org.eclipse.jface.viewers.ICheckable;
import org.eclipse.jface.viewers.TableLayout;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.Widget;

public class CheckboxTableViewer
extends TableViewer
implements ICheckable {
    private ListenerList checkStateListeners = new ListenerList();
    private ICheckStateProvider checkStateProvider;

    public CheckboxTableViewer(Composite parent) {
        this(parent, 2048);
    }

    public CheckboxTableViewer(Composite parent, int style) {
        this(CheckboxTableViewer.createTable(parent, style));
    }

    public static CheckboxTableViewer newCheckList(Composite parent, int style) {
        Table table = new Table(parent, 0x20 | style);
        return new CheckboxTableViewer(table);
    }

    public CheckboxTableViewer(Table table) {
        super(table);
    }

    public void addCheckStateListener(ICheckStateListener listener) {
        this.checkStateListeners.add((Object)listener);
    }

    public void setCheckStateProvider(ICheckStateProvider checkStateProvider) {
        this.checkStateProvider = checkStateProvider;
        this.refresh();
    }

    protected void doUpdateItem(Widget widget, Object element, boolean fullMap) {
        super.doUpdateItem(widget, element, fullMap);
        if (!widget.isDisposed() && this.checkStateProvider != null) {
            this.setChecked(element, this.checkStateProvider.isChecked(element));
            this.setGrayed(element, this.checkStateProvider.isGrayed(element));
        }
    }

    protected static Table createTable(Composite parent, int style) {
        Table table = new Table(parent, 0x20 | style);
        new TableColumn(table, 0);
        TableLayout layout = new TableLayout();
        layout.addColumnData(new ColumnWeightData(100));
        table.setLayout((Layout)layout);
        return table;
    }

    private void fireCheckStateChanged(final CheckStateChangedEvent event) {
        Object[] array = this.checkStateListeners.getListeners();
        int i = 0;
        while (i < array.length) {
            final ICheckStateListener l = (ICheckStateListener)array[i];
            SafeRunnable.run(new SafeRunnable(){

                public void run() {
                    l.checkStateChanged(event);
                }
            });
            ++i;
        }
    }

    public boolean getChecked(Object element) {
        Widget widget = this.findItem(element);
        if (widget instanceof TableItem) {
            return ((TableItem)widget).getChecked();
        }
        return false;
    }

    public Object[] getCheckedElements() {
        TableItem[] children = this.getTable().getItems();
        ArrayList<Object> v = new ArrayList<Object>(children.length);
        int i = 0;
        while (i < children.length) {
            TableItem item = children[i];
            Object data = item.getData();
            if (data != null && item.getChecked()) {
                v.add(data);
            }
            ++i;
        }
        return v.toArray();
    }

    public boolean getGrayed(Object element) {
        Widget widget = this.findItem(element);
        if (widget instanceof TableItem) {
            return ((TableItem)widget).getGrayed();
        }
        return false;
    }

    public Object[] getGrayedElements() {
        TableItem[] children = this.getTable().getItems();
        ArrayList<Object> v = new ArrayList<Object>(children.length);
        int i = 0;
        while (i < children.length) {
            TableItem item = children[i];
            Object data = item.getData();
            if (data != null && item.getGrayed()) {
                v.add(data);
            }
            ++i;
        }
        return v.toArray();
    }

    public void handleSelect(SelectionEvent event) {
        if (event.detail == 32) {
            super.handleSelect(event);
            TableItem item = (TableItem)event.item;
            Object data = item.getData();
            if (data != null) {
                this.fireCheckStateChanged(new CheckStateChangedEvent(this, data, item.getChecked()));
            }
        } else {
            super.handleSelect(event);
        }
    }

    protected void preservingSelection(Runnable updateCode) {
        Object data;
        TableItem item;
        if (!this.getPreserveSelection()) {
            return;
        }
        if (this.checkStateProvider != null) {
            super.preservingSelection(updateCode);
            return;
        }
        TableItem[] children = this.getTable().getItems();
        CustomHashtable checked = this.newHashtable(children.length * 2 + 1);
        CustomHashtable grayed = this.newHashtable(children.length * 2 + 1);
        int i = 0;
        while (i < children.length) {
            item = children[i];
            data = item.getData();
            if (data != null) {
                if (item.getChecked()) {
                    checked.put(data, data);
                }
                if (item.getGrayed()) {
                    grayed.put(data, data);
                }
            }
            ++i;
        }
        super.preservingSelection(updateCode);
        children = this.getTable().getItems();
        i = 0;
        while (i < children.length) {
            item = children[i];
            data = item.getData();
            if (data != null) {
                item.setChecked(checked.containsKey(data));
                item.setGrayed(grayed.containsKey(data));
            }
            ++i;
        }
    }

    public void removeCheckStateListener(ICheckStateListener listener) {
        this.checkStateListeners.remove((Object)listener);
    }

    public void setAllChecked(boolean state) {
        TableItem[] children = this.getTable().getItems();
        int i = 0;
        while (i < children.length) {
            TableItem item = children[i];
            if (item.getData() != null && item.getChecked() != state) {
                item.setChecked(state);
            }
            ++i;
        }
    }

    public void setAllGrayed(boolean state) {
        TableItem[] children = this.getTable().getItems();
        int i = 0;
        while (i < children.length) {
            TableItem item = children[i];
            if (item.getData() != null && item.getGrayed() != state) {
                item.setGrayed(state);
            }
            ++i;
        }
    }

    public boolean setChecked(Object element, boolean state) {
        Assert.isNotNull((Object)element);
        Widget widget = this.findItem(element);
        if (widget instanceof TableItem) {
            TableItem item = (TableItem)widget;
            if (item.getChecked() != state) {
                item.setChecked(state);
            }
            return true;
        }
        return false;
    }

    public void setCheckedElements(Object[] elements) {
        this.assertElementsNotNull(elements);
        CustomHashtable set = this.newHashtable(elements.length * 2 + 1);
        int i = 0;
        while (i < elements.length) {
            set.put(elements[i], elements[i]);
            ++i;
        }
        TableItem[] items = this.getTable().getItems();
        int i2 = 0;
        while (i2 < items.length) {
            TableItem item = items[i2];
            Object element = item.getData();
            if (element != null) {
                boolean check = set.containsKey(element);
                if (item.getChecked() != check) {
                    item.setChecked(check);
                }
            }
            ++i2;
        }
    }

    public boolean setGrayed(Object element, boolean state) {
        Assert.isNotNull((Object)element);
        Widget widget = this.findItem(element);
        if (widget instanceof TableItem) {
            TableItem item = (TableItem)widget;
            if (item.getGrayed() != state) {
                item.setGrayed(state);
            }
            return true;
        }
        return false;
    }

    public void setGrayedElements(Object[] elements) {
        this.assertElementsNotNull(elements);
        CustomHashtable set = this.newHashtable(elements.length * 2 + 1);
        int i = 0;
        while (i < elements.length) {
            set.put(elements[i], elements[i]);
            ++i;
        }
        TableItem[] items = this.getTable().getItems();
        int i2 = 0;
        while (i2 < items.length) {
            TableItem item = items[i2];
            Object element = item.getData();
            if (element != null) {
                boolean gray = set.containsKey(element);
                if (item.getGrayed() != gray) {
                    item.setGrayed(gray);
                }
            }
            ++i2;
        }
    }
}

