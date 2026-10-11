/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Item
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.viewers;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.ColumnViewer;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.ILazyContentProvider;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.ViewerCell;
import org.eclipse.jface.viewers.ViewerColumn;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.jface.viewers.ViewerRow;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Widget;

public abstract class AbstractTableViewer
extends ColumnViewer {
    private VirtualManager virtualManager;

    protected void hookControl(Control control) {
        super.hookControl(control);
        this.initializeVirtualManager(this.getControl().getStyle());
    }

    protected void handleDispose(DisposeEvent event) {
        super.handleDispose(event);
        this.virtualManager = null;
    }

    private void initializeVirtualManager(int style) {
        if ((style & 0x10000000) == 0) {
            return;
        }
        this.virtualManager = new VirtualManager();
    }

    public void add(Object[] elements) {
        this.assertElementsNotNull(elements);
        if (this.checkBusy()) {
            return;
        }
        Object[] filtered = this.filter(elements);
        int i = 0;
        while (i < filtered.length) {
            Object element = filtered[i];
            int index = this.indexForElement(element);
            this.createItem(element, index);
            ++i;
        }
    }

    private void createItem(Object element, int index) {
        if (this.virtualManager == null) {
            this.updateItem(this.internalCreateNewRowPart(0, index).getItem(), element);
        } else {
            this.virtualManager.notVisibleAdded(element, index);
        }
    }

    protected abstract ViewerRow internalCreateNewRowPart(int var1, int var2);

    public void add(Object element) {
        this.add(new Object[]{element});
    }

    protected Widget doFindInputItem(Object element) {
        if (this.equals(element, this.getRoot())) {
            return this.getControl();
        }
        return null;
    }

    protected Widget doFindItem(Object element) {
        Item[] children = this.doGetItems();
        int i = 0;
        while (i < children.length) {
            Item item = children[i];
            Object data = item.getData();
            if (data != null && this.equals(data, element)) {
                return item;
            }
            ++i;
        }
        return null;
    }

    protected void doUpdateItem(Widget widget, Object element, boolean fullMap) {
        boolean oldBusy = this.isBusy();
        this.setBusy(true);
        try {
            if (widget instanceof Item) {
                boolean isVirtual;
                Item item = (Item)widget;
                if (fullMap) {
                    this.associate(element, item);
                } else {
                    Object data = item.getData();
                    if (data != null) {
                        this.unmapElement(data, (Widget)item);
                    }
                    item.setData(element);
                    this.mapElement(element, (Widget)item);
                }
                int columnCount = this.doGetColumnCount();
                if (columnCount == 0) {
                    columnCount = 1;
                }
                ViewerRow viewerRowFromItem = this.getViewerRowFromItem((Widget)item);
                boolean bl = isVirtual = (this.getControl().getStyle() & 0x10000000) != 0;
                if (isVirtual) {
                    viewerRowFromItem = (ViewerRow)viewerRowFromItem.clone();
                }
                int column = 0;
                while (column < columnCount || column == 0) {
                    ViewerColumn columnViewer = this.getViewerColumn(column);
                    ViewerCell cellToUpdate = this.updateCell(viewerRowFromItem, column, element);
                    if (isVirtual) {
                        cellToUpdate = new ViewerCell(cellToUpdate.getViewerRow(), cellToUpdate.getColumnIndex(), element);
                    }
                    columnViewer.refresh(cellToUpdate);
                    this.updateCell(null, 0, null);
                    if (item.isDisposed()) {
                        this.unmapElement(element, (Widget)item);
                        return;
                    }
                    ++column;
                }
            }
        }
        finally {
            this.setBusy(oldBusy);
        }
    }

    protected Widget getColumnViewerOwner(int columnIndex) {
        int columnCount = this.doGetColumnCount();
        if (columnIndex < 0 || columnIndex > 0 && columnIndex >= columnCount) {
            return null;
        }
        if (columnCount == 0) {
            return this.getControl();
        }
        return this.doGetColumn(columnIndex);
    }

    public Object getElementAt(int index) {
        Item i;
        if (index >= 0 && index < this.doGetItemCount() && (i = this.doGetItem(index)) != null) {
            return i.getData();
        }
        return null;
    }

    public IBaseLabelProvider getLabelProvider() {
        return super.getLabelProvider();
    }

    protected List getSelectionFromWidget() {
        if (this.virtualManager != null) {
            return this.getVirtualSelection();
        }
        Item[] items = this.doGetSelection();
        ArrayList<Object> list = new ArrayList<Object>(items.length);
        int i = 0;
        while (i < items.length) {
            Item item = items[i];
            Object e = item.getData();
            if (e != null) {
                list.add(e);
            }
            ++i;
        }
        return list;
    }

    private List getVirtualSelection() {
        ArrayList<Object> result = new ArrayList<Object>();
        int[] selectionIndices = this.doGetSelectionIndices();
        if (this.getContentProvider() instanceof ILazyContentProvider) {
            ILazyContentProvider lazy = (ILazyContentProvider)this.getContentProvider();
            int i = 0;
            while (i < selectionIndices.length) {
                Object element;
                int selectionIndex = selectionIndices[i];
                lazy.updateElement(selectionIndex);
                if (selectionIndex < this.doGetItemCount() && (element = this.doGetItem(selectionIndex).getData()) != null) {
                    result.add(element);
                }
                ++i;
            }
        } else {
            int i = 0;
            while (i < selectionIndices.length) {
                Object element = null;
                int selectionIndex = selectionIndices[i];
                if (selectionIndex < this.virtualManager.cachedElements.length) {
                    element = this.virtualManager.cachedElements[selectionIndex];
                }
                if (element == null) {
                    Item item = this.doGetItem(selectionIndex);
                    element = item.getData();
                }
                if (element != null) {
                    result.add(element);
                }
                ++i;
            }
        }
        return result;
    }

    protected int indexForElement(Object element) {
        ViewerComparator comparator = this.getComparator();
        if (comparator == null) {
            return this.doGetItemCount();
        }
        int count = this.doGetItemCount();
        int min = 0;
        int max = count - 1;
        while (min <= max) {
            int mid = (min + max) / 2;
            Object data = this.doGetItem(mid).getData();
            int compare = comparator.compare(this, data, element);
            if (compare == 0) {
                while (compare == 0) {
                    if (++mid >= count) break;
                    data = this.doGetItem(mid).getData();
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
        this.getControl().setRedraw(false);
        try {
            this.preservingSelection(new Runnable(){

                public void run() {
                    AbstractTableViewer.this.internalRefresh(AbstractTableViewer.this.getRoot());
                }
            });
        }
        finally {
            this.getControl().setRedraw(true);
        }
    }

    public void insert(Object element, int position) {
        this.applyEditorValue();
        if (this.getComparator() != null || this.hasFilters()) {
            this.add(element);
            return;
        }
        if (position == -1) {
            position = this.doGetItemCount();
        }
        if (this.checkBusy()) {
            return;
        }
        this.createItem(element, position);
    }

    protected void internalRefresh(Object element) {
        this.internalRefresh(element, true);
    }

    protected void internalRefresh(Object element, boolean updateLabels) {
        this.applyEditorValue();
        if (element == null || this.equals(element, this.getRoot())) {
            if (this.virtualManager == null) {
                this.internalRefreshAll(updateLabels);
            } else {
                this.internalVirtualRefreshAll();
            }
        } else {
            Widget w = this.findItem(element);
            if (w != null) {
                this.updateItem(w, element);
            }
        }
    }

    private void internalVirtualRefreshAll() {
        Object root = this.getRoot();
        IContentProvider contentProvider = this.getContentProvider();
        if (!(contentProvider instanceof ILazyContentProvider) && contentProvider instanceof IStructuredContentProvider && root != null) {
            this.virtualManager.cachedElements = this.getSortedChildren(root);
            this.doSetItemCount(this.virtualManager.cachedElements.length);
        }
        this.doClearAll();
    }

    private void internalRefreshAll(boolean updateLabels) {
        Item item;
        Object[] children = this.getSortedChildren(this.getRoot());
        Item[] items = this.doGetItems();
        int min = Math.min(children.length, items.length);
        int i = 0;
        while (i < min) {
            item = items[i];
            if (this.equals(children[i], item.getData())) {
                if (updateLabels) {
                    this.updateItem((Widget)item, children[i]);
                } else {
                    this.associate(children[i], item);
                }
            } else {
                this.disassociate(item);
                this.doClear(i);
            }
            ++i;
        }
        if (min < items.length) {
            i = items.length;
            while (--i >= min) {
                this.disassociate(items[i]);
            }
            if (this.virtualManager != null) {
                this.virtualManager.removeIndicesFromTo(min, items.length - 1);
            }
            this.doRemove(min, items.length - 1);
        }
        if (this.doGetItemCount() == 0) {
            this.doRemoveAll();
        }
        i = 0;
        while (i < min) {
            item = items[i];
            if (item.getData() == null) {
                this.updateItem((Widget)item, children[i]);
            }
            ++i;
        }
        i = min;
        while (i < children.length) {
            this.createItem(children[i], i);
            ++i;
        }
    }

    private void internalRemove(Object[] elements) {
        Object input = this.getInput();
        int i = 0;
        while (i < elements.length) {
            if (this.equals(elements[i], input)) {
                boolean oldBusy = this.isBusy();
                this.setBusy(false);
                try {
                    this.setInput(null);
                }
                finally {
                    this.setBusy(oldBusy);
                }
                return;
            }
            ++i;
        }
        int[] indices = new int[elements.length];
        int count = 0;
        int i2 = 0;
        while (i2 < elements.length) {
            Widget w = this.findItem(elements[i2]);
            if (w == null && this.virtualManager != null) {
                int index = this.virtualManager.find(elements[i2]);
                if (index != -1) {
                    indices[count++] = index;
                }
            } else if (w instanceof Item) {
                Item item = (Item)w;
                this.disassociate(item);
                indices[count++] = this.doIndexOf(item);
            }
            ++i2;
        }
        if (count < indices.length) {
            int[] nArray = indices;
            indices = new int[count];
            System.arraycopy(nArray, 0, indices, 0, count);
        }
        if (this.virtualManager != null) {
            this.virtualManager.removeIndices(indices);
        }
        this.doRemove(indices);
        if (this.doGetItemCount() == 0) {
            this.doRemoveAll();
        }
    }

    public void remove(final Object[] elements) {
        this.assertElementsNotNull(elements);
        if (this.checkBusy()) {
            return;
        }
        if (elements.length == 0) {
            return;
        }
        this.preservingSelection(new Runnable(){

            public void run() {
                AbstractTableViewer.this.internalRemove(elements);
            }
        });
    }

    public void remove(Object element) {
        this.remove(new Object[]{element});
    }

    public void reveal(Object element) {
        Assert.isNotNull((Object)element);
        Widget w = this.findItem(element);
        if (w instanceof Item) {
            this.doShowItem((Item)w);
        }
    }

    protected void setSelectionToWidget(List list, boolean reveal) {
        if (list == null) {
            this.doDeselectAll();
            return;
        }
        if (this.virtualManager != null) {
            this.virtualSetSelectionToWidget(list, reveal);
            return;
        }
        if (reveal) {
            int size = list.size();
            Item[] items = new Item[size];
            int count = 0;
            int i = 0;
            while (i < size) {
                Object o = list.get(i);
                Widget w = this.findItem(o);
                if (w instanceof Item) {
                    Item item = (Item)w;
                    items[count++] = item;
                }
                ++i;
            }
            if (count < size) {
                Item[] itemArray = items;
                items = new Item[count];
                System.arraycopy(itemArray, 0, items, 0, count);
            }
            this.doSetSelection(items);
        } else {
            this.doDeselectAll();
            if (!list.isEmpty()) {
                int[] indices = new int[list.size()];
                Iterator it = list.iterator();
                Item[] items = this.doGetItems();
                int count = 0;
                while (it.hasNext()) {
                    Object modelElement = it.next();
                    boolean found = false;
                    int i = 0;
                    while (i < items.length && !found) {
                        if (this.equals(modelElement, items[i].getData())) {
                            indices[count++] = i;
                            found = true;
                        }
                        ++i;
                    }
                }
                if (count < indices.length) {
                    int[] nArray = indices;
                    indices = new int[count];
                    System.arraycopy(nArray, 0, indices, 0, count);
                }
                this.doSelect(indices);
            }
        }
    }

    private void virtualSetSelectionToWidget(List list, boolean reveal) {
        Item item;
        int size = list.size();
        int[] indices = new int[list.size()];
        Item firstItem = null;
        int count = 0;
        HashSet virtualElements = new HashSet();
        int i = 0;
        while (i < size) {
            Object o = list.get(i);
            Widget w = this.findItem(o);
            if (w instanceof Item) {
                Item item2 = (Item)w;
                indices[count++] = this.doIndexOf(item2);
                if (firstItem == null) {
                    firstItem = item2;
                }
            } else {
                virtualElements.add(o);
            }
            ++i;
        }
        if (this.getContentProvider() instanceof ILazyContentProvider) {
            ILazyContentProvider provider = (ILazyContentProvider)this.getContentProvider();
            int i2 = 0;
            while (virtualElements.size() > 0 && i2 < this.doGetItemCount()) {
                provider.updateElement(i2);
                item = this.doGetItem(i2);
                if (virtualElements.contains(item.getData())) {
                    indices[count++] = i2;
                    virtualElements.remove(item.getData());
                    if (firstItem == null) {
                        firstItem = item;
                    }
                }
                ++i2;
            }
        } else if (count != list.size()) {
            i = 0;
            while (i < this.virtualManager.cachedElements.length) {
                Object element = this.virtualManager.cachedElements[i];
                if (virtualElements.contains(element)) {
                    item = this.doGetItem(i);
                    item.getText();
                    indices[count++] = i;
                    virtualElements.remove(element);
                    if (firstItem == null) {
                        firstItem = item;
                    }
                }
                ++i;
            }
        }
        if (count < size) {
            int[] nArray = indices;
            indices = new int[count];
            System.arraycopy(nArray, 0, indices, 0, count);
        }
        this.doDeselectAll();
        this.doSelect(indices);
        if (reveal && firstItem != null) {
            this.doShowItem(firstItem);
        }
    }

    public void setItemCount(int count) {
        if (this.checkBusy()) {
            return;
        }
        int oldCount = this.doGetItemCount();
        if (count < oldCount) {
            int i = count;
            while (i < oldCount) {
                Item item = this.doGetItem(i);
                if (item.getData() != null) {
                    this.disassociate(item);
                }
                ++i;
            }
        }
        this.doSetItemCount(count);
        if (this.virtualManager != null) {
            this.virtualManager.adjustCacheSize(count);
        }
        this.getControl().redraw();
    }

    public void replace(Object element, int index) {
        if (this.checkBusy()) {
            return;
        }
        Item item = this.doGetItem(index);
        this.refreshItem((Widget)item, element);
    }

    public void clear(int index) {
        Item item = this.doGetItem(index);
        if (item.getData() != null) {
            this.disassociate(item);
        }
        this.doClear(index);
    }

    protected Object[] getRawChildren(Object parent) {
        Assert.isTrue((!(this.getContentProvider() instanceof ILazyContentProvider) ? 1 : 0) != 0, (String)"Cannot get raw children with an ILazyContentProvider");
        return super.getRawChildren(parent);
    }

    protected void assertContentProviderType(IContentProvider provider) {
        Assert.isTrue((provider instanceof IStructuredContentProvider || provider instanceof ILazyContentProvider ? 1 : 0) != 0);
    }

    protected abstract int doIndexOf(Item var1);

    protected abstract int doGetItemCount();

    protected abstract void doSetItemCount(int var1);

    protected abstract Item[] doGetItems();

    protected abstract Widget doGetColumn(int var1);

    protected abstract Item doGetItem(int var1);

    protected abstract Item[] doGetSelection();

    protected abstract int[] doGetSelectionIndices();

    protected abstract void doClearAll();

    protected abstract void doResetItem(Item var1);

    protected abstract void doRemove(int var1, int var2);

    protected abstract void doRemoveAll();

    protected abstract void doRemove(int[] var1);

    protected abstract void doShowItem(Item var1);

    protected abstract void doDeselectAll();

    protected abstract void doSetSelection(Item[] var1);

    protected abstract void doShowSelection();

    protected abstract void doSetSelection(int[] var1);

    protected abstract void doClear(int var1);

    protected abstract void doSelect(int[] var1);

    private class VirtualManager {
        private Object[] cachedElements = new Object[0];

        public VirtualManager() {
            this.addTableListener();
        }

        private void addTableListener() {
            AbstractTableViewer.this.getControl().addListener(36, new Listener(this){
                final /* synthetic */ VirtualManager this$1;
                {
                    this.this$1 = virtualManager;
                }

                public void handleEvent(Event event) {
                    IContentProvider contentProvider;
                    Item item = (Item)event.item;
                    int index = VirtualManager.access$2(this.this$1).doIndexOf(item);
                    if (index == -1) {
                        return;
                    }
                    Object element = this.this$1.resolveElement(index);
                    if (element == null && (contentProvider = VirtualManager.access$2(this.this$1).getContentProvider()) instanceof ILazyContentProvider) {
                        ((ILazyContentProvider)contentProvider).updateElement(index);
                        return;
                    }
                    VirtualManager.access$2(this.this$1).associate(element, item);
                    VirtualManager.access$2(this.this$1).updateItem((Widget)item, element);
                }
            });
        }

        protected Object resolveElement(int index) {
            Object element = null;
            if (index < this.cachedElements.length) {
                element = this.cachedElements[index];
            }
            return element;
        }

        public void notVisibleAdded(Object element, int index) {
            int requiredCount = AbstractTableViewer.this.doGetItemCount() + 1;
            Object[] newCache = new Object[requiredCount];
            System.arraycopy(this.cachedElements, 0, newCache, 0, index);
            if (index < this.cachedElements.length) {
                System.arraycopy(this.cachedElements, index, newCache, index + 1, this.cachedElements.length - index);
            }
            newCache[index] = element;
            this.cachedElements = newCache;
            AbstractTableViewer.this.doSetItemCount(requiredCount);
        }

        public void removeIndices(int[] indices) {
            if (indices.length == 1) {
                this.removeIndicesFromTo(indices[0], indices[0]);
            }
            int requiredCount = AbstractTableViewer.this.doGetItemCount() - indices.length;
            Arrays.sort(indices);
            Object[] newCache = new Object[requiredCount];
            int indexInNewCache = 0;
            int nextToSkip = 0;
            int i = 0;
            while (i < this.cachedElements.length) {
                if (nextToSkip < indices.length && i == indices[nextToSkip]) {
                    ++nextToSkip;
                } else {
                    newCache[indexInNewCache++] = this.cachedElements[i];
                }
                ++i;
            }
            this.cachedElements = newCache;
        }

        public void removeIndicesFromTo(int from, int to) {
            int indexAfterTo = to + 1;
            Object[] newCache = new Object[this.cachedElements.length - (indexAfterTo - from)];
            System.arraycopy(this.cachedElements, 0, newCache, 0, from);
            if (indexAfterTo < this.cachedElements.length) {
                System.arraycopy(this.cachedElements, indexAfterTo, newCache, from, this.cachedElements.length - indexAfterTo);
            }
        }

        public int find(Object element) {
            return Arrays.asList(this.cachedElements).indexOf(element);
        }

        public void adjustCacheSize(int count) {
            if (count == this.cachedElements.length) {
                return;
            }
            if (count < this.cachedElements.length) {
                Object[] newCache = new Object[count];
                System.arraycopy(this.cachedElements, 0, newCache, 0, count);
                this.cachedElements = newCache;
            } else {
                Object[] newCache = new Object[count];
                System.arraycopy(this.cachedElements, 0, newCache, 0, this.cachedElements.length);
                this.cachedElements = newCache;
            }
        }

        static /* synthetic */ AbstractTableViewer access$2(VirtualManager virtualManager) {
            return virtualManager.AbstractTableViewer.this;
        }
    }
}

