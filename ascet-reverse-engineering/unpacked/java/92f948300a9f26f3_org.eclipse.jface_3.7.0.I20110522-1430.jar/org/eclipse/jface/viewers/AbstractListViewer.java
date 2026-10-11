/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.viewers;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IElementComparer;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.jface.viewers.StructuredViewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Widget;

public abstract class AbstractListViewer
extends StructuredViewer {
    private List listMap = new ArrayList();

    protected abstract void listAdd(String var1, int var2);

    protected abstract void listSetItem(int var1, String var2);

    protected abstract int[] listGetSelectionIndices();

    protected abstract int listGetItemCount();

    protected abstract void listSetItems(String[] var1);

    protected abstract void listRemoveAll();

    protected abstract void listRemove(int var1);

    protected abstract void listSetSelection(int[] var1);

    protected abstract void listShowSelection();

    protected abstract void listDeselectAll();

    public void add(Object[] elements) {
        this.assertElementsNotNull(elements);
        Object[] filtered = this.filter(elements);
        ILabelProvider labelProvider = (ILabelProvider)this.getLabelProvider();
        int i = 0;
        while (i < filtered.length) {
            Object element = filtered[i];
            int ix = this.indexForElement(element);
            this.insertItem(labelProvider, element, ix);
            ++i;
        }
    }

    private void insertItem(ILabelProvider labelProvider, Object element, int index) {
        this.listAdd(this.getLabelProviderText(labelProvider, element), index);
        this.listMap.add(index, element);
        this.mapElement(element, (Widget)this.getControl());
    }

    public void insert(Object element, int position) {
        if (this.getComparator() != null || this.hasFilters()) {
            this.add(element);
            return;
        }
        this.insertItem((ILabelProvider)this.getLabelProvider(), element, position);
    }

    private String getLabelProviderText(ILabelProvider labelProvider, Object element) {
        String text = labelProvider.getText(element);
        if (text == null) {
            return "";
        }
        return text;
    }

    public void add(Object element) {
        this.add(new Object[]{element});
    }

    protected Widget doFindInputItem(Object element) {
        if (element != null && this.equals(element, this.getRoot())) {
            return this.getControl();
        }
        return null;
    }

    protected Widget doFindItem(Object element) {
        if (element != null && this.listMapContains(element)) {
            return this.getControl();
        }
        return null;
    }

    protected void doUpdateItem(Widget data, Object element, boolean fullMap) {
        int ix;
        if (element != null && (ix = this.getElementIndex(element)) >= 0) {
            ILabelProvider labelProvider = (ILabelProvider)this.getLabelProvider();
            this.listSetItem(ix, this.getLabelProviderText(labelProvider, element));
        }
    }

    public Object getElementAt(int index) {
        if (index >= 0 && index < this.listMap.size()) {
            return this.listMap.get(index);
        }
        return null;
    }

    public IBaseLabelProvider getLabelProvider() {
        return super.getLabelProvider();
    }

    protected List getSelectionFromWidget() {
        int[] ixs = this.listGetSelectionIndices();
        ArrayList<Object> list = new ArrayList<Object>(ixs.length);
        int i = 0;
        while (i < ixs.length) {
            Object e = this.getElementAt(ixs[i]);
            if (e != null) {
                list.add(e);
            }
            ++i;
        }
        return list;
    }

    protected int indexForElement(Object element) {
        ViewerComparator comparator = this.getComparator();
        if (comparator == null) {
            return this.listGetItemCount();
        }
        int count = this.listGetItemCount();
        int min = 0;
        int max = count - 1;
        while (min <= max) {
            int mid = (min + max) / 2;
            Object data = this.listMap.get(mid);
            int compare = comparator.compare(this, data, element);
            if (compare == 0) {
                while (compare == 0) {
                    if (++mid >= count) break;
                    data = this.listMap.get(mid);
                    compare = comparator.compare(this, data, element);
                }
                return mid;
            }
            if (compare < 0) {
                min = mid + 1;
                continue;
            }
            max = mid - 1;
        }
        return min;
    }

    protected void inputChanged(Object input, Object oldInput) {
        this.listMap.clear();
        Object[] children = this.getSortedChildren(this.getRoot());
        int size = children.length;
        this.listRemoveAll();
        String[] labels = new String[size];
        int i = 0;
        while (i < size) {
            Object el = children[i];
            labels[i] = this.getLabelProviderText((ILabelProvider)this.getLabelProvider(), el);
            this.listMap.add(el);
            this.mapElement(el, (Widget)this.getControl());
            ++i;
        }
        this.listSetItems(labels);
    }

    protected void internalRefresh(Object element) {
        Control list = this.getControl();
        if (element == null || this.equals(element, this.getRoot())) {
            if (this.listMap != null) {
                this.listMap.clear();
            }
            this.unmapAllElements();
            List selection = this.getSelectionFromWidget();
            int topIndex = -1;
            if (selection == null || selection.isEmpty()) {
                topIndex = this.listGetTopIndex();
            }
            Object[] children = null;
            list.setRedraw(false);
            try {
                this.listRemoveAll();
                children = this.getSortedChildren(this.getRoot());
                String[] items = new String[children.length];
                ILabelProvider labelProvider = (ILabelProvider)this.getLabelProvider();
                int i = 0;
                while (i < items.length) {
                    Object el = children[i];
                    items[i] = this.getLabelProviderText(labelProvider, el);
                    this.listMap.add(el);
                    this.mapElement(el, (Widget)list);
                    ++i;
                }
                this.listSetItems(items);
            }
            finally {
                list.setRedraw(true);
            }
            if (topIndex == -1) {
                this.setSelectionToWidget(selection, false);
            } else {
                this.listSetTopIndex(Math.min(topIndex, children.length));
            }
        } else {
            this.doUpdateItem((Widget)list, element, true);
        }
    }

    protected int listGetTopIndex() {
        return -1;
    }

    protected void listSetTopIndex(int index) {
    }

    private void internalRemove(Object[] elements) {
        Object input = this.getInput();
        int i = 0;
        while (i < elements.length) {
            if (this.equals(elements[i], input)) {
                this.setInput(null);
                return;
            }
            int ix = this.getElementIndex(elements[i]);
            if (ix >= 0) {
                this.listRemove(ix);
                this.listMap.remove(ix);
                this.unmapElement(elements[i], (Widget)this.getControl());
            }
            ++i;
        }
    }

    public void remove(final Object[] elements) {
        this.assertElementsNotNull(elements);
        if (elements.length == 0) {
            return;
        }
        this.preservingSelection(new Runnable(){

            public void run() {
                AbstractListViewer.this.internalRemove(elements);
            }
        });
    }

    public void remove(Object element) {
        this.remove(new Object[]{element});
    }

    public void setLabelProvider(IBaseLabelProvider labelProvider) {
        Assert.isTrue((boolean)(labelProvider instanceof ILabelProvider));
        super.setLabelProvider(labelProvider);
    }

    protected void setSelectionToWidget(List in, boolean reveal) {
        if (in == null || in.size() == 0) {
            this.listDeselectAll();
        } else {
            int n = in.size();
            int[] ixs = new int[n];
            int count = 0;
            int i = 0;
            while (i < n) {
                Object el = in.get(i);
                int ix = this.getElementIndex(el);
                if (ix >= 0) {
                    ixs[count++] = ix;
                }
                ++i;
            }
            if (count < n) {
                int[] nArray = ixs;
                ixs = new int[count];
                System.arraycopy(nArray, 0, ixs, 0, count);
            }
            this.listSetSelection(ixs);
            if (reveal) {
                this.listShowSelection();
            }
        }
    }

    int getElementIndex(Object element) {
        IElementComparer comparer = this.getComparer();
        if (comparer == null) {
            return this.listMap.indexOf(element);
        }
        int size = this.listMap.size();
        int i = 0;
        while (i < size) {
            if (comparer.equals(element, this.listMap.get(i))) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    private boolean listMapContains(Object element) {
        return this.getElementIndex(element) != -1;
    }
}

