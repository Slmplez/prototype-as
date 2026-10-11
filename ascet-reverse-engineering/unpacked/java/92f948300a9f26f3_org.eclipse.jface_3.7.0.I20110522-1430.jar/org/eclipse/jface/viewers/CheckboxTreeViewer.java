/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Item
 *  org.eclipse.swt.widgets.Tree
 *  org.eclipse.swt.widgets.TreeItem
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.viewers;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.jface.viewers.CheckStateChangedEvent;
import org.eclipse.jface.viewers.CustomHashtable;
import org.eclipse.jface.viewers.ICheckStateListener;
import org.eclipse.jface.viewers.ICheckStateProvider;
import org.eclipse.jface.viewers.ICheckable;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.TreeItem;
import org.eclipse.swt.widgets.Widget;

public class CheckboxTreeViewer
extends TreeViewer
implements ICheckable {
    private ListenerList checkStateListeners = new ListenerList();
    private ICheckStateProvider checkStateProvider;
    private TreeItem lastClickedItem = null;

    public CheckboxTreeViewer(Composite parent) {
        this(parent, 2048);
    }

    public CheckboxTreeViewer(Composite parent, int style) {
        this(new Tree(parent, 0x20 | style));
    }

    public CheckboxTreeViewer(Tree tree) {
        super(tree);
    }

    public void addCheckStateListener(ICheckStateListener listener) {
        this.checkStateListeners.add((Object)listener);
    }

    public void setCheckStateProvider(ICheckStateProvider checkStateProvider) {
        this.checkStateProvider = checkStateProvider;
        this.refresh();
    }

    protected void doUpdateItem(Item item, Object element) {
        super.doUpdateItem(item, element);
        if (!item.isDisposed() && this.checkStateProvider != null) {
            this.setChecked(element, this.checkStateProvider.isChecked(element));
            this.setGrayed(element, this.checkStateProvider.isGrayed(element));
        }
    }

    private void applyState(CustomHashtable checked, CustomHashtable grayed, Widget widget) {
        Item[] items = this.getChildren(widget);
        int i = 0;
        while (i < items.length) {
            Object data;
            Item item = items[i];
            if (item instanceof TreeItem && (data = item.getData()) != null) {
                TreeItem ti = (TreeItem)item;
                ti.setChecked(checked.containsKey(data));
                ti.setGrayed(grayed.containsKey(data));
            }
            this.applyState(checked, grayed, (Widget)item);
            ++i;
        }
    }

    protected void fireCheckStateChanged(final CheckStateChangedEvent event) {
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

    private void gatherState(CustomHashtable checked, CustomHashtable grayed, Widget widget) {
        Item[] items = this.getChildren(widget);
        int i = 0;
        while (i < items.length) {
            Object data;
            Item item = items[i];
            if (item instanceof TreeItem && (data = item.getData()) != null) {
                TreeItem ti = (TreeItem)item;
                if (ti.getChecked()) {
                    checked.put(data, data);
                }
                if (ti.getGrayed()) {
                    grayed.put(data, data);
                }
            }
            this.gatherState(checked, grayed, (Widget)item);
            ++i;
        }
    }

    public boolean getChecked(Object element) {
        Widget widget = this.findItem(element);
        if (widget instanceof TreeItem) {
            return ((TreeItem)widget).getChecked();
        }
        return false;
    }

    public Object[] getCheckedElements() {
        ArrayList v = new ArrayList();
        Control tree = this.getControl();
        this.internalCollectChecked(v, (Widget)tree);
        return v.toArray();
    }

    public boolean getGrayed(Object element) {
        Widget widget = this.findItem(element);
        if (widget instanceof TreeItem) {
            return ((TreeItem)widget).getGrayed();
        }
        return false;
    }

    public Object[] getGrayedElements() {
        ArrayList result = new ArrayList();
        this.internalCollectGrayed(result, (Widget)this.getControl());
        return result.toArray();
    }

    protected void handleDoubleSelect(SelectionEvent event) {
        if (this.lastClickedItem != null) {
            TreeItem item = this.lastClickedItem;
            Object data = item.getData();
            if (data != null) {
                boolean state = item.getChecked();
                this.setChecked(data, !state);
                this.fireCheckStateChanged(new CheckStateChangedEvent(this, data, !state));
            }
            this.lastClickedItem = null;
        } else {
            super.handleDoubleSelect(event);
        }
    }

    protected void handleSelect(SelectionEvent event) {
        this.lastClickedItem = null;
        if (event.detail == 32) {
            TreeItem item;
            this.lastClickedItem = item = (TreeItem)event.item;
            super.handleSelect(event);
            Object data = item.getData();
            if (data != null) {
                this.fireCheckStateChanged(new CheckStateChangedEvent(this, data, item.getChecked()));
            }
        } else {
            super.handleSelect(event);
        }
    }

    private void internalCollectChecked(List result, Widget widget) {
        Item[] items = this.getChildren(widget);
        int i = 0;
        while (i < items.length) {
            Object data;
            Item item = items[i];
            if (item instanceof TreeItem && ((TreeItem)item).getChecked() && (data = item.getData()) != null) {
                result.add(data);
            }
            this.internalCollectChecked(result, (Widget)item);
            ++i;
        }
    }

    private void internalCollectGrayed(List result, Widget widget) {
        Item[] items = this.getChildren(widget);
        int i = 0;
        while (i < items.length) {
            Object data;
            Item item = items[i];
            if (item instanceof TreeItem && ((TreeItem)item).getGrayed() && (data = item.getData()) != null) {
                result.add(data);
            }
            this.internalCollectGrayed(result, (Widget)item);
            ++i;
        }
    }

    private void internalSetChecked(CustomHashtable checkedElements, Widget widget) {
        Item[] items = this.getChildren(widget);
        int i = 0;
        while (i < items.length) {
            boolean checked;
            TreeItem item = (TreeItem)items[i];
            Object data = item.getData();
            if (data != null && (checked = checkedElements.containsKey(data)) != item.getChecked()) {
                item.setChecked(checked);
            }
            this.internalSetChecked(checkedElements, (Widget)item);
            ++i;
        }
    }

    private void internalSetGrayed(CustomHashtable grayedElements, Widget widget) {
        Item[] items = this.getChildren(widget);
        int i = 0;
        while (i < items.length) {
            boolean grayed;
            TreeItem item = (TreeItem)items[i];
            Object data = item.getData();
            if (data != null && (grayed = grayedElements.containsKey(data)) != item.getGrayed()) {
                item.setGrayed(grayed);
            }
            this.internalSetGrayed(grayedElements, (Widget)item);
            ++i;
        }
    }

    protected void preservingSelection(Runnable updateCode) {
        if (!this.getPreserveSelection()) {
            return;
        }
        if (this.checkStateProvider != null) {
            super.preservingSelection(updateCode);
            return;
        }
        int n = this.getItemCount(this.getControl());
        CustomHashtable checkedNodes = this.newHashtable(n * 2 + 1);
        CustomHashtable grayedNodes = this.newHashtable(n * 2 + 1);
        this.gatherState(checkedNodes, grayedNodes, (Widget)this.getControl());
        super.preservingSelection(updateCode);
        this.applyState(checkedNodes, grayedNodes, (Widget)this.getControl());
    }

    public void removeCheckStateListener(ICheckStateListener listener) {
        this.checkStateListeners.remove((Object)listener);
    }

    public boolean setChecked(Object element, boolean state) {
        Assert.isNotNull((Object)element);
        Widget widget = this.internalExpand(element, false);
        if (widget instanceof TreeItem) {
            ((TreeItem)widget).setChecked(state);
            return true;
        }
        return false;
    }

    private void setCheckedChildren(Item item, boolean state) {
        this.createChildren((Widget)item);
        Item[] items = this.getChildren((Widget)item);
        if (items != null) {
            int i = 0;
            while (i < items.length) {
                Item it = items[i];
                if (it.getData() != null && it instanceof TreeItem) {
                    TreeItem treeItem = (TreeItem)it;
                    treeItem.setChecked(state);
                    this.setCheckedChildren((Item)treeItem, state);
                }
                ++i;
            }
        }
    }

    public void setCheckedElements(Object[] elements) {
        this.assertElementsNotNull(elements);
        CustomHashtable checkedElements = this.newHashtable(elements.length * 2 + 1);
        int i = 0;
        while (i < elements.length) {
            Object element = elements[i];
            this.internalExpand(element, false);
            checkedElements.put(element, element);
            ++i;
        }
        Control tree = this.getControl();
        tree.setRedraw(false);
        this.internalSetChecked(checkedElements, (Widget)tree);
        tree.setRedraw(true);
    }

    public boolean setGrayed(Object element, boolean state) {
        Assert.isNotNull((Object)element);
        Widget widget = this.internalExpand(element, false);
        if (widget instanceof TreeItem) {
            ((TreeItem)widget).setGrayed(state);
            return true;
        }
        return false;
    }

    public boolean setGrayChecked(Object element, boolean state) {
        Assert.isNotNull((Object)element);
        Widget widget = this.internalExpand(element, false);
        if (widget instanceof TreeItem) {
            TreeItem item = (TreeItem)widget;
            item.setChecked(state);
            item.setGrayed(state);
            return true;
        }
        return false;
    }

    public void setGrayedElements(Object[] elements) {
        this.assertElementsNotNull(elements);
        CustomHashtable grayedElements = this.newHashtable(elements.length * 2 + 1);
        int i = 0;
        while (i < elements.length) {
            Object element = elements[i];
            this.internalExpand(element, false);
            grayedElements.put(element, element);
            ++i;
        }
        Control tree = this.getControl();
        tree.setRedraw(false);
        this.internalSetGrayed(grayedElements, (Widget)tree);
        tree.setRedraw(true);
    }

    public boolean setParentsGrayed(Object element, boolean state) {
        Assert.isNotNull((Object)element);
        Widget widget = this.internalExpand(element, false);
        if (widget instanceof TreeItem) {
            TreeItem item = (TreeItem)widget;
            item.setGrayed(state);
            item = item.getParentItem();
            while (item != null) {
                item.setGrayed(state);
                item = item.getParentItem();
            }
            return true;
        }
        return false;
    }

    public boolean setSubtreeChecked(Object element, boolean state) {
        Widget widget = this.internalExpand(element, false);
        if (widget instanceof TreeItem) {
            TreeItem item = (TreeItem)widget;
            item.setChecked(state);
            this.setCheckedChildren((Item)item, state);
            return true;
        }
        return false;
    }

    public void setAllChecked(boolean state) {
        this.setAllChecked(state, this.getTree().getItems());
    }

    private void setAllChecked(boolean state, TreeItem[] items) {
        int i = 0;
        while (i < items.length) {
            items[i].setChecked(state);
            TreeItem[] children = items[i].getItems();
            this.setAllChecked(state, children);
            ++i;
        }
    }

    boolean optionallyPruneChildren(Item item, Object element) {
        return false;
    }
}

