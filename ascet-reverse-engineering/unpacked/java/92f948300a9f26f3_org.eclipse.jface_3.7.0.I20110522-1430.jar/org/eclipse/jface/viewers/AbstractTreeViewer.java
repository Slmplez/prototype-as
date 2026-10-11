/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.events.TreeEvent
 *  org.eclipse.swt.events.TreeListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Item
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.viewers;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.internal.InternalPolicy;
import org.eclipse.jface.util.Policy;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.jface.viewers.ColumnViewer;
import org.eclipse.jface.viewers.ColumnViewerEditor;
import org.eclipse.jface.viewers.CustomHashtable;
import org.eclipse.jface.viewers.DoubleClickEvent;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.IElementComparer;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.ITreePathContentProvider;
import org.eclipse.jface.viewers.ITreePathLabelProvider;
import org.eclipse.jface.viewers.ITreeSelection;
import org.eclipse.jface.viewers.ITreeViewerListener;
import org.eclipse.jface.viewers.TreeExpansionEvent;
import org.eclipse.jface.viewers.TreePath;
import org.eclipse.jface.viewers.TreePathViewerSorter;
import org.eclipse.jface.viewers.TreeSelection;
import org.eclipse.jface.viewers.ViewerCell;
import org.eclipse.jface.viewers.ViewerColumn;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.jface.viewers.ViewerLabel;
import org.eclipse.jface.viewers.ViewerRow;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.TreeEvent;
import org.eclipse.swt.events.TreeListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Widget;

public abstract class AbstractTreeViewer
extends ColumnViewer {
    public static final int ALL_LEVELS = -1;
    private ListenerList treeListeners = new ListenerList();
    private int expandToLevel = 0;

    protected AbstractTreeViewer() {
    }

    public void add(Object parentElementOrTreePath, Object[] childElements) {
        Assert.isNotNull((Object)parentElementOrTreePath);
        this.assertElementsNotNull(childElements);
        if (this.checkBusy()) {
            return;
        }
        Widget[] widgets = this.internalFindItems(parentElementOrTreePath);
        if (widgets.length == 0) {
            return;
        }
        int i = 0;
        while (i < widgets.length) {
            this.internalAdd(widgets[i], parentElementOrTreePath, childElements);
            ++i;
        }
    }

    protected final Widget[] internalFindItems(Object parentElementOrTreePath) {
        TreePath path;
        Widget w;
        Widget[] widgets = parentElementOrTreePath instanceof TreePath ? ((w = this.internalFindItem(path = (TreePath)parentElementOrTreePath)) == null ? new Widget[]{} : new Widget[]{w}) : this.findItems(parentElementOrTreePath);
        return widgets;
    }

    private Widget internalFindItem(TreePath path) {
        Widget[] widgets = this.findItems(path.getLastSegment());
        int i = 0;
        while (i < widgets.length) {
            Item item;
            TreePath p;
            Widget widget = widgets[i];
            if (widget instanceof Item && (p = this.getTreePathFromItem(item = (Item)widget)).equals(path)) {
                return widget;
            }
            ++i;
        }
        return null;
    }

    protected void internalAdd(Widget widget, Object parentElementOrTreePath, Object[] childElements) {
        Item ti;
        Object parent;
        TreePath path;
        if (parentElementOrTreePath instanceof TreePath) {
            path = (TreePath)parentElementOrTreePath;
            parent = path.getLastSegment();
        } else {
            parent = parentElementOrTreePath;
            path = null;
        }
        if (widget instanceof Item && !this.getExpanded(ti = (Item)widget)) {
            boolean needDummy = this.isExpandable(ti, path, parent);
            boolean haveDummy = false;
            Item[] items = this.getItems(ti);
            int i = 0;
            while (i < items.length) {
                if (items[i].getData() != null) {
                    this.disassociate(items[i]);
                    items[i].dispose();
                } else if (needDummy && !haveDummy) {
                    haveDummy = true;
                } else {
                    items[i].dispose();
                }
                ++i;
            }
            if (needDummy && !haveDummy) {
                this.newItem((Widget)ti, 0, -1);
            }
            return;
        }
        if (childElements.length > 0) {
            Object[] filtered = this.filter(parentElementOrTreePath, childElements);
            ViewerComparator comparator = this.getComparator();
            if (comparator != null) {
                if (comparator instanceof TreePathViewerSorter) {
                    TreePathViewerSorter tpvs = (TreePathViewerSorter)comparator;
                    if (path == null) {
                        path = this.internalGetSorterParentPath(widget, comparator);
                    }
                    tpvs.sort(this, path, filtered);
                } else {
                    comparator.sort(this, filtered);
                }
            }
            this.createAddedElements(widget, filtered);
        }
    }

    private Object[] filter(Object parentElementOrTreePath, Object[] elements) {
        ViewerFilter[] filters = this.getFilters();
        if (filters != null) {
            ArrayList<Object> filtered = new ArrayList<Object>(elements.length);
            int i = 0;
            while (i < elements.length) {
                boolean add = true;
                int j = 0;
                while (j < filters.length) {
                    add = filters[j].select(this, parentElementOrTreePath, elements[i]);
                    if (!add) break;
                    ++j;
                }
                if (add) {
                    filtered.add(elements[i]);
                }
                ++i;
            }
            return filtered.toArray();
        }
        return elements;
    }

    private void createAddedElements(Widget widget, Object[] elements) {
        if (elements.length == 1 && this.equals(elements[0], widget.getData())) {
            return;
        }
        ViewerComparator comparator = this.getComparator();
        TreePath parentPath = this.internalGetSorterParentPath(widget, comparator);
        Item[] items = this.getChildren(widget);
        if (items.length == 0) {
            int i = 0;
            while (i < elements.length) {
                this.createTreeItem(widget, elements[i], -1);
                ++i;
            }
            return;
        }
        if (comparator == null) {
            int i = 0;
            while (i < elements.length) {
                Object element = elements[i];
                if (this.itemExists(items, element)) {
                    this.internalRefresh(element);
                } else {
                    this.createTreeItem(widget, element, -1);
                }
                ++i;
            }
            return;
        }
        int indexInItems = 0;
        int newItems = 0;
        int i = 0;
        while (i < elements.length) {
            block14: {
                Object element = elements[i];
                if ((indexInItems = this.insertionPosition(items, comparator, indexInItems, element, parentPath)) == items.length) {
                    this.createTreeItem(widget, element, -1);
                    ++newItems;
                } else {
                    int insertionIndexInItems = indexInItems;
                    while (insertionIndexInItems < items.length && this.internalCompare(comparator, parentPath, element, items[insertionIndexInItems].getData()) == 0) {
                        if (items[insertionIndexInItems].getData().equals(element)) {
                            this.internalRefresh(element);
                            break block14;
                        }
                        ++insertionIndexInItems;
                    }
                    if (insertionIndexInItems == items.length) {
                        this.createTreeItem(widget, element, -1);
                        ++newItems;
                    } else {
                        this.createTreeItem(widget, element, insertionIndexInItems + newItems);
                        ++newItems;
                    }
                }
            }
            ++i;
        }
    }

    private boolean itemExists(Item[] items, Object element) {
        if (this.usingElementMap()) {
            Widget[] existingItems = this.findItems(element);
            if (existingItems.length == 0) {
                return false;
            }
            if (existingItems.length == 1 && items.length > 0 && existingItems[0] instanceof Item) {
                Item existingItem = (Item)existingItems[0];
                return this.getParentItem(existingItem) == this.getParentItem(items[0]);
            }
        }
        int i = 0;
        while (i < items.length) {
            if (items[i].getData().equals(element)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private int insertionPosition(Item[] items, ViewerComparator comparator, int lastInsertion, Object element, TreePath parentPath) {
        int size = items.length;
        if (comparator == null) {
            return size;
        }
        int min = lastInsertion;
        int max = size - 1;
        while (min <= max) {
            int mid = (min + max) / 2;
            Object data = items[mid].getData();
            int compare = this.internalCompare(comparator, parentPath, data, element);
            if (compare == 0) {
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

    protected int indexForElement(Widget parent, Object element) {
        ViewerComparator comparator = this.getComparator();
        TreePath parentPath = this.internalGetSorterParentPath(parent, comparator);
        Item[] items = this.getChildren(parent);
        int count = items.length;
        if (comparator == null) {
            return count;
        }
        int min = 0;
        int max = count - 1;
        while (min <= max) {
            int mid = (min + max) / 2;
            Object data = items[mid].getData();
            int compare = this.internalCompare(comparator, parentPath, data, element);
            if (compare == 0) {
                while (compare == 0) {
                    if (++mid >= count) break;
                    data = items[mid].getData();
                    compare = this.internalCompare(comparator, parentPath, data, element);
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

    private TreePath internalGetSorterParentPath(Widget parent, ViewerComparator comparator) {
        TreePath path;
        if (comparator instanceof TreePathViewerSorter && parent instanceof Item) {
            Item item = (Item)parent;
            path = this.getTreePathFromItem(item);
        } else {
            path = null;
        }
        return path;
    }

    private int internalCompare(ViewerComparator comparator, TreePath parentPath, Object e1, Object e2) {
        if (comparator instanceof TreePathViewerSorter) {
            TreePathViewerSorter tpvs = (TreePathViewerSorter)comparator;
            return tpvs.compare(this, parentPath, e1, e2);
        }
        return comparator.compare(this, e1, e2);
    }

    protected Object[] getSortedChildren(Object parentElementOrTreePath) {
        Object[] result = this.getFilteredChildren(parentElementOrTreePath);
        ViewerComparator comparator = this.getComparator();
        if (parentElementOrTreePath != null && comparator instanceof TreePathViewerSorter) {
            TreePathViewerSorter tpvs = (TreePathViewerSorter)comparator;
            result = (Object[])result.clone();
            TreePath path = null;
            if (parentElementOrTreePath instanceof TreePath) {
                path = (TreePath)parentElementOrTreePath;
            } else {
                Object parent = parentElementOrTreePath;
                Widget w = this.internalGetWidgetToSelect(parent);
                if (w != null) {
                    path = this.internalGetSorterParentPath(w, comparator);
                }
            }
            tpvs.sort(this, path, result);
        } else if (comparator != null) {
            result = (Object[])result.clone();
            comparator.sort(this, result);
        }
        return result;
    }

    public void add(Object parentElementOrTreePath, Object childElement) {
        this.add(parentElementOrTreePath, new Object[]{childElement});
    }

    protected void addSelectionListener(Control control, SelectionListener listener) {
    }

    public void addTreeListener(ITreeViewerListener listener) {
        this.treeListeners.add((Object)listener);
    }

    protected abstract void addTreeListener(Control var1, TreeListener var2);

    protected void associate(Object element, Item item) {
        Object data = item.getData();
        if (data != null && data != element && this.equals(data, element)) {
            this.unmapElement(data, (Widget)item);
            item.setData(element);
            this.mapElement(element, (Widget)item);
        } else {
            super.associate(element, item);
        }
    }

    public void collapseAll() {
        Object root = this.getRoot();
        if (root != null) {
            this.collapseToLevel(root, -1);
        }
    }

    public void collapseToLevel(Object elementOrTreePath, int level) {
        Assert.isNotNull((Object)elementOrTreePath);
        Widget w = this.internalGetWidgetToSelect(elementOrTreePath);
        if (w != null) {
            this.internalCollapseToLevel(w, level);
        }
    }

    protected void createChildren(Widget widget) {
        this.createChildren(widget, true);
    }

    void createChildren(final Widget widget, boolean materialize) {
        boolean oldBusy = this.isBusy();
        this.setBusy(true);
        try {
            Object data;
            final Item[] tis = this.getChildren(widget);
            if (tis != null && tis.length > 0 && (data = tis[0].getData()) != null) {
                return;
            }
            BusyIndicator.showWhile((Display)widget.getDisplay(), (Runnable)new Runnable(){

                public void run() {
                    Object d;
                    if (tis != null) {
                        int i = 0;
                        while (i < tis.length) {
                            if (tis[i].getData() != null) {
                                AbstractTreeViewer.this.disassociate(tis[i]);
                                Assert.isTrue((tis[i].getData() == null ? 1 : 0) != 0, (String)"Second or later child is non -null");
                            }
                            tis[i].dispose();
                            ++i;
                        }
                    }
                    if ((d = widget.getData()) != null) {
                        Object[] children;
                        Object parentElement = d;
                        if (AbstractTreeViewer.this.isTreePathContentProvider() && widget instanceof Item) {
                            TreePath path = AbstractTreeViewer.this.getTreePathFromItem((Item)widget);
                            children = AbstractTreeViewer.this.getSortedChildren(path);
                        } else {
                            children = AbstractTreeViewer.this.getSortedChildren(parentElement);
                        }
                        int i = 0;
                        while (i < children.length) {
                            AbstractTreeViewer.this.createTreeItem(widget, children[i], -1);
                            ++i;
                        }
                    }
                }
            });
        }
        finally {
            this.setBusy(oldBusy);
        }
    }

    protected void createTreeItem(Widget parent, Object element, int index) {
        Item item = this.newItem(parent, 0, index);
        this.updateItem((Widget)item, element);
        this.updatePlus(item, element);
    }

    protected void disassociate(Item item) {
        super.disassociate(item);
        if (this.usingElementMap()) {
            this.disassociateChildren(item);
        }
    }

    private void disassociateChildren(Item item) {
        Item[] items = this.getChildren((Widget)item);
        int i = 0;
        while (i < items.length) {
            if (items[i].getData() != null) {
                this.disassociate(items[i]);
            }
            ++i;
        }
    }

    protected Widget doFindInputItem(Object element) {
        Object root = this.getRoot();
        if (root == null) {
            return null;
        }
        if (this.equals(root, element)) {
            return this.getControl();
        }
        return null;
    }

    protected Widget doFindItem(Object element) {
        Object root = this.getRoot();
        if (root == null) {
            return null;
        }
        Item[] items = this.getChildren((Widget)this.getControl());
        if (items != null) {
            int i = 0;
            while (i < items.length) {
                Widget o = this.internalFindItem(items[i], element);
                if (o != null) {
                    return o;
                }
                ++i;
            }
        }
        return null;
    }

    protected void doUpdateItem(Item item, Object element) {
        boolean isVirtual;
        if (item.isDisposed()) {
            this.unmapElement(element, (Widget)item);
            return;
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
        while (column < columnCount) {
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

    protected boolean isSameSelection(List items, Item[] current) {
        int n = items.size();
        if (n != current.length) {
            return false;
        }
        CustomHashtable itemSet = this.newHashtable(n * 2 + 1);
        Iterator i = items.iterator();
        while (i.hasNext()) {
            Item item = (Item)i.next();
            Object element = item.getData();
            itemSet.put(element, element);
        }
        int i2 = 0;
        while (i2 < current.length) {
            if (current[i2].getData() == null || !itemSet.containsKey(current[i2].getData())) {
                return false;
            }
            ++i2;
        }
        return true;
    }

    protected void doUpdateItem(Widget widget, Object element, boolean fullMap) {
        boolean oldBusy = this.isBusy();
        this.setBusy(true);
        try {
            if (widget instanceof Item) {
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
                SafeRunnable.run(new UpdateItemSafeRunnable(item, element));
            }
        }
        finally {
            this.setBusy(oldBusy);
        }
    }

    public void expandAll() {
        this.expandToLevel(-1);
    }

    public void expandToLevel(int level) {
        this.expandToLevel(this.getRoot(), level);
    }

    public void expandToLevel(Object elementOrTreePath, int level) {
        if (this.checkBusy()) {
            return;
        }
        Widget w = this.internalExpand(elementOrTreePath, true);
        if (w != null) {
            this.internalExpandToLevel(w, level);
        }
    }

    protected void fireTreeCollapsed(final TreeExpansionEvent event) {
        Object[] listeners = this.treeListeners.getListeners();
        boolean oldBusy = this.isBusy();
        this.setBusy(true);
        try {
            int i = 0;
            while (i < listeners.length) {
                final ITreeViewerListener l = (ITreeViewerListener)listeners[i];
                SafeRunnable.run(new SafeRunnable(){

                    public void run() {
                        l.treeCollapsed(event);
                    }
                });
                ++i;
            }
        }
        finally {
            this.setBusy(oldBusy);
        }
    }

    protected void fireTreeExpanded(final TreeExpansionEvent event) {
        Object[] listeners = this.treeListeners.getListeners();
        boolean oldBusy = this.isBusy();
        this.setBusy(true);
        try {
            int i = 0;
            while (i < listeners.length) {
                final ITreeViewerListener l = (ITreeViewerListener)listeners[i];
                SafeRunnable.run(new SafeRunnable(){

                    public void run() {
                        l.treeExpanded(event);
                    }
                });
                ++i;
            }
        }
        finally {
            this.setBusy(oldBusy);
        }
    }

    public int getAutoExpandLevel() {
        return this.expandToLevel;
    }

    protected abstract Item[] getChildren(Widget var1);

    protected Item getChild(Widget widget, int index) {
        return this.getChildren(widget)[index];
    }

    protected abstract boolean getExpanded(Item var1);

    public Object[] getExpandedElements() {
        ArrayList items = new ArrayList();
        this.internalCollectExpandedItems(items, (Widget)this.getControl());
        ArrayList<Object> result = new ArrayList<Object>(items.size());
        Iterator it = items.iterator();
        while (it.hasNext()) {
            Item item = (Item)it.next();
            Object data = item.getData();
            if (data == null) continue;
            result.add(data);
        }
        return result.toArray();
    }

    public boolean getExpandedState(Object elementOrTreePath) {
        Assert.isNotNull((Object)elementOrTreePath);
        Widget item = this.internalGetWidgetToSelect(elementOrTreePath);
        if (item instanceof Item) {
            return this.getExpanded((Item)item);
        }
        return false;
    }

    protected abstract int getItemCount(Control var1);

    protected abstract int getItemCount(Item var1);

    protected abstract Item[] getItems(Item var1);

    protected Item getNextItem(Item item, boolean includeChildren) {
        Item[] children;
        if (item == null) {
            return null;
        }
        if (includeChildren && this.getExpanded(item) && (children = this.getItems(item)) != null && children.length > 0) {
            return children[0];
        }
        Item parent = this.getParentItem(item);
        if (parent == null) {
            return null;
        }
        Item[] siblings = this.getItems(parent);
        if (siblings != null) {
            if (siblings.length <= 1) {
                return this.getNextItem(parent, false);
            }
            int i = 0;
            while (i < siblings.length) {
                if (siblings[i] == item && i < siblings.length - 1) {
                    return siblings[i + 1];
                }
                ++i;
            }
        }
        return this.getNextItem(parent, false);
    }

    protected abstract Item getParentItem(Item var1);

    protected Item getPreviousItem(Item item) {
        Item parent = this.getParentItem(item);
        if (parent == null) {
            return null;
        }
        Item[] siblings = this.getItems(parent);
        if (siblings.length == 0 || siblings[0] == item) {
            return parent;
        }
        Item previous = siblings[0];
        int i = 1;
        while (i < siblings.length) {
            if (siblings[i] == item) {
                return this.rightMostVisibleDescendent(previous);
            }
            previous = siblings[i];
            ++i;
        }
        return null;
    }

    protected Object[] getRawChildren(Object parentElementOrTreePath) {
        boolean oldBusy = this.isBusy();
        this.setBusy(true);
        try {
            Object parent;
            TreePath path;
            if (parentElementOrTreePath instanceof TreePath) {
                path = (TreePath)parentElementOrTreePath;
                parent = path.getLastSegment();
            } else {
                parent = parentElementOrTreePath;
                path = null;
            }
            if (parent != null) {
                ITreeContentProvider tcp;
                Object[] result;
                if (this.equals(parent, this.getRoot())) {
                    Object[] objectArray = super.getRawChildren(parent);
                    return objectArray;
                }
                IContentProvider cp = this.getContentProvider();
                if (cp instanceof ITreePathContentProvider) {
                    Object[] result2;
                    ITreePathContentProvider tpcp = (ITreePathContentProvider)cp;
                    if (path == null) {
                        Widget w = this.findItem(parent);
                        if (w instanceof Item) {
                            Item item = (Item)w;
                            path = this.getTreePathFromItem(item);
                        }
                        if (path == null) {
                            path = new TreePath(new Object[]{parent});
                        }
                    }
                    if ((result2 = tpcp.getChildren(path)) != null) {
                        this.assertElementsNotNull(parent, result2);
                        Object[] objectArray = result2;
                        return objectArray;
                    }
                } else if (cp instanceof ITreeContentProvider && (result = (tcp = (ITreeContentProvider)cp).getChildren(parent)) != null) {
                    this.assertElementsNotNull(parent, result);
                    Object[] objectArray = result;
                    return objectArray;
                }
            }
            Object[] objectArray = new Object[]{};
            return objectArray;
        }
        finally {
            this.setBusy(oldBusy);
        }
    }

    private void assertElementsNotNull(Object parent, Object[] elements) {
        Assert.isNotNull((Object)elements);
        int i = 0;
        int n = elements.length;
        while (i < n) {
            Assert.isNotNull((Object)elements[i]);
            ++i;
        }
        if (InternalPolicy.DEBUG_LOG_EQUAL_VIEWER_ELEMENTS && elements.length > 1) {
            CustomHashtable elementSet = this.newHashtable(elements.length * 2);
            int i2 = 0;
            while (i2 < elements.length) {
                Object element = elements[i2];
                Object old = elementSet.put(element, element);
                if (old != null) {
                    String message = "Sibling elements in viewer must not be equal:\n  " + old + ",\n  " + element + ",\n  parent: " + parent;
                    Policy.getLog().log((IStatus)new Status(2, "org.eclipse.jface", message, (Throwable)new RuntimeException()));
                    return;
                }
                ++i2;
            }
        }
    }

    protected abstract Item[] getSelection(Control var1);

    protected List getSelectionFromWidget() {
        Item[] items = this.getSelection(this.getControl());
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

    protected void handleDoubleSelect(SelectionEvent event) {
        Control control = this.getControl();
        if (control != null && !control.isDisposed()) {
            ISelection selection;
            if (event.item != null && event.item.getData() != null) {
                TreePath treePath = this.getTreePathFromItem((Item)event.item);
                selection = new TreeSelection(treePath);
            } else {
                selection = this.getSelection();
                this.updateSelection(selection);
            }
            this.fireDoubleClick(new DoubleClickEvent(this, selection));
        }
    }

    protected void handleTreeCollapse(TreeEvent event) {
        if (event.item.getData() != null) {
            this.fireTreeCollapsed(new TreeExpansionEvent(this, event.item.getData()));
        }
    }

    protected void handleTreeExpand(TreeEvent event) {
        this.createChildren(event.item);
        if (event.item.getData() != null) {
            this.fireTreeExpanded(new TreeExpansionEvent(this, event.item.getData()));
        }
    }

    protected void hookControl(Control control) {
        super.hookControl(control);
        this.addTreeListener(control, new TreeListener(){

            public void treeExpanded(TreeEvent event) {
                AbstractTreeViewer.this.handleTreeExpand(event);
            }

            public void treeCollapsed(TreeEvent event) {
                AbstractTreeViewer.this.handleTreeCollapse(event);
            }
        });
    }

    protected void inputChanged(Object input, Object oldInput) {
        this.preservingSelection(new Runnable(){

            public void run() {
                Control tree = AbstractTreeViewer.this.getControl();
                tree.setRedraw(false);
                try {
                    AbstractTreeViewer.this.removeAll(tree);
                    tree.setData(AbstractTreeViewer.this.getRoot());
                    AbstractTreeViewer.this.internalInitializeTree(tree);
                }
                finally {
                    tree.setRedraw(true);
                }
            }
        });
    }

    protected void internalInitializeTree(Control tree) {
        this.createChildren((Widget)tree);
        this.internalExpandToLevel((Widget)tree, this.expandToLevel);
    }

    protected void internalCollapseToLevel(Widget widget, int level) {
        if (level == -1 || level > 0) {
            Item[] children;
            if (widget instanceof Item) {
                Item item = (Item)widget;
                this.setExpanded(item, false);
                Object element = item.getData();
                if (element != null && level == -1 && this.optionallyPruneChildren(item, element)) {
                    return;
                }
            }
            if ((level == -1 || level > 1) && (children = this.getChildren(widget)) != null) {
                int nextLevel = level == -1 ? -1 : level - 1;
                int i = 0;
                while (i < children.length) {
                    this.internalCollapseToLevel((Widget)children[i], nextLevel);
                    ++i;
                }
            }
        }
    }

    private void internalCollectExpandedItems(List result, Widget widget) {
        Item[] items = this.getChildren(widget);
        int i = 0;
        while (i < items.length) {
            Item item = items[i];
            if (item.getData() != null) {
                if (this.getExpanded(item)) {
                    result.add(item);
                }
                this.internalCollectExpandedItems(result, (Widget)item);
            }
            ++i;
        }
    }

    protected Widget internalExpand(Object elementOrPath, boolean expand) {
        if (elementOrPath == null) {
            return null;
        }
        Widget w = this.internalGetWidgetToSelect(elementOrPath);
        if (w == null) {
            Widget pw;
            if (this.equals(elementOrPath, this.getRoot())) {
                return null;
            }
            Object parent = this.getParentElement(elementOrPath);
            if (parent != null && (pw = this.internalExpand(parent, false)) != null) {
                this.createChildren(pw);
                Object element = this.internalToElement(elementOrPath);
                w = this.internalFindChild(pw, element);
                if (expand && pw instanceof Item) {
                    Item item = (Item)pw;
                    LinkedList<Item> toExpandList = new LinkedList<Item>();
                    while (item != null && !this.getExpanded(item)) {
                        toExpandList.addFirst(item);
                        item = this.getParentItem(item);
                    }
                    Iterator it = toExpandList.iterator();
                    while (it.hasNext()) {
                        Item toExpand = (Item)it.next();
                        this.setExpanded(toExpand, true);
                    }
                }
            }
        }
        return w;
    }

    private Object internalToElement(Object elementOrPath) {
        if (elementOrPath instanceof TreePath) {
            return ((TreePath)elementOrPath).getLastSegment();
        }
        return elementOrPath;
    }

    protected Object getParentElement(Object elementOrTreePath) {
        ITreePathContentProvider tpcp;
        TreePath[] paths;
        if (elementOrTreePath instanceof TreePath) {
            TreePath treePath = (TreePath)elementOrTreePath;
            return treePath.getParentPath();
        }
        IContentProvider cp = this.getContentProvider();
        if (cp instanceof ITreePathContentProvider && (paths = (tpcp = (ITreePathContentProvider)cp).getParents(elementOrTreePath)).length > 0) {
            if (paths[0].getSegmentCount() == 0) {
                return this.getRoot();
            }
            return paths[0].getLastSegment();
        }
        if (cp instanceof ITreeContentProvider) {
            ITreeContentProvider tcp = (ITreeContentProvider)cp;
            return tcp.getParent(elementOrTreePath);
        }
        return null;
    }

    protected Widget internalGetWidgetToSelect(Object elementOrTreePath) {
        if (elementOrTreePath instanceof TreePath) {
            TreePath treePath = (TreePath)elementOrTreePath;
            if (treePath.getSegmentCount() == 0) {
                return this.getControl();
            }
            Widget[] candidates = this.findItems(treePath.getLastSegment());
            int i = 0;
            while (i < candidates.length) {
                Widget candidate = candidates[i];
                if (candidate instanceof Item && treePath.equals(this.getTreePathFromItem((Item)candidate), this.getComparer())) {
                    return candidate;
                }
                ++i;
            }
            return null;
        }
        return this.findItem(elementOrTreePath);
    }

    protected void internalExpandToLevel(Widget widget, int level) {
        if (level == -1 || level > 0) {
            Item[] children;
            if (widget instanceof Item && widget.getData() != null && !this.isExpandable((Item)widget, null, widget.getData())) {
                return;
            }
            this.createChildren(widget, false);
            if (widget instanceof Item) {
                this.setExpanded((Item)widget, true);
            }
            if ((level == -1 || level > 1) && (children = this.getChildren(widget)) != null) {
                int newLevel = level == -1 ? -1 : level - 1;
                int i = 0;
                while (i < children.length) {
                    this.internalExpandToLevel((Widget)children[i], newLevel);
                    ++i;
                }
            }
        }
    }

    private Widget internalFindChild(Widget parent, Object element) {
        Item[] items = this.getChildren(parent);
        int i = 0;
        while (i < items.length) {
            Item item = items[i];
            Object data = item.getData();
            if (data != null && this.equals(data, element)) {
                return item;
            }
            ++i;
        }
        return null;
    }

    private Widget internalFindItem(Item parent, Object element) {
        Object data = parent.getData();
        if (data != null && this.equals(data, element)) {
            return parent;
        }
        Item[] items = this.getChildren((Widget)parent);
        int i = 0;
        while (i < items.length) {
            Item item = items[i];
            Widget o = this.internalFindItem(item, element);
            if (o != null) {
                return o;
            }
            ++i;
        }
        return null;
    }

    protected void internalRefresh(Object element) {
        this.internalRefresh(element, true);
    }

    protected void internalRefresh(Object element, boolean updateLabels) {
        if (element == null) {
            this.internalRefresh((Widget)this.getControl(), this.getRoot(), true, updateLabels);
            return;
        }
        Widget[] items = this.findItems(element);
        if (items.length != 0) {
            int i = 0;
            while (i < items.length) {
                this.internalRefresh(items[i], element, true, updateLabels);
                ++i;
            }
        }
    }

    protected void internalRefresh(Widget widget, Object element, boolean doStruct, boolean updateLabels) {
        if (widget instanceof Item) {
            if (doStruct) {
                this.updatePlus((Item)widget, element);
            }
            if (updateLabels || !this.equals(element, widget.getData())) {
                this.doUpdateItem(widget, element, true);
            } else {
                this.associate(element, (Item)widget);
            }
        }
        if (doStruct) {
            this.internalRefreshStruct(widget, element, updateLabels);
        } else {
            Item[] children = this.getChildren(widget);
            if (children != null) {
                int i = 0;
                while (i < children.length) {
                    Item item = children[i];
                    Object data = item.getData();
                    if (data != null) {
                        this.internalRefresh((Widget)item, data, doStruct, updateLabels);
                    }
                    ++i;
                }
            }
        }
    }

    void internalRefreshStruct(Widget widget, Object element, boolean updateLabels) {
        this.updateChildren(widget, element, null, updateLabels);
        Item[] children = this.getChildren(widget);
        if (children != null) {
            int i = 0;
            while (i < children.length) {
                Item item = children[i];
                Object data = item.getData();
                if (data != null) {
                    this.internalRefreshStruct((Widget)item, data, updateLabels);
                }
                ++i;
            }
        }
    }

    protected void internalRemove(Object[] elementsOrPaths) {
        Object input = this.getInput();
        int i = 0;
        while (i < elementsOrPaths.length) {
            Object element = elementsOrPaths[i];
            if (this.equals(element, input)) {
                this.setInput(null);
                return;
            }
            Widget[] childItems = this.internalFindItems(element);
            if (childItems.length > 0) {
                int j = 0;
                while (j < childItems.length) {
                    Widget childItem = childItems[j];
                    if (childItem instanceof Item) {
                        this.disassociate((Item)childItem);
                        childItem.dispose();
                    }
                    ++j;
                }
            } else {
                Object parent = this.getParentElement(element);
                if (!(parent == null || this.equals(parent, this.getRoot()) || parent instanceof TreePath && ((TreePath)parent).getSegmentCount() == 0)) {
                    Widget[] parentItems = this.internalFindItems(parent);
                    int j = 0;
                    while (j < parentItems.length) {
                        Widget parentItem = parentItems[j];
                        if (parentItem instanceof Item) {
                            this.updatePlus((Item)parentItem, parent);
                        }
                        ++j;
                    }
                }
            }
            ++i;
        }
    }

    protected void internalRemove(Object parent, Object[] elements) {
        CustomHashtable toRemove = new CustomHashtable(this.getComparer());
        int i = 0;
        while (i < elements.length) {
            toRemove.put(elements[i], elements[i]);
            ++i;
        }
        Widget[] parentItemArray = this.findItems(parent);
        int i2 = 0;
        while (i2 < parentItemArray.length) {
            Widget parentItem = parentItemArray[i2];
            if (!parentItem.isDisposed()) {
                Item[] children = this.getChildren(parentItem);
                if (children.length == 1 && children[0].getData() == null && parentItem instanceof Item) {
                    this.updatePlus((Item)parentItem, parent);
                } else {
                    int j = 0;
                    while (j < children.length) {
                        Item child = children[j];
                        Object data = child.getData();
                        if (data != null && toRemove.containsKey(data)) {
                            this.disassociate(child);
                            child.dispose();
                        }
                        ++j;
                    }
                }
            }
            ++i2;
        }
    }

    private void internalSetExpanded(CustomHashtable expandedElements, Widget widget) {
        Item[] items = this.getChildren(widget);
        int i = 0;
        while (i < items.length) {
            Item item = items[i];
            Object data = item.getData();
            if (data != null) {
                boolean expanded;
                boolean bl = expanded = expandedElements.remove(data) != null;
                if (expanded != this.getExpanded(item)) {
                    if (expanded) {
                        this.createChildren((Widget)item);
                    }
                    this.setExpanded(item, expanded);
                }
            }
            if (expandedElements.size() > 0) {
                this.internalSetExpanded(expandedElements, (Widget)item);
            }
            ++i;
        }
    }

    private void internalSetExpandedTreePaths(CustomHashtable expandedTreePaths, Widget widget, TreePath currentPath) {
        Item[] items = this.getChildren(widget);
        int i = 0;
        while (i < items.length) {
            TreePath childPath;
            Item item = items[i];
            Object data = item.getData();
            TreePath treePath = childPath = data == null ? null : currentPath.createChildPath(data);
            if (data != null && childPath != null) {
                boolean expanded;
                boolean bl = expanded = expandedTreePaths.remove(childPath) != null;
                if (expanded != this.getExpanded(item)) {
                    if (expanded) {
                        this.createChildren((Widget)item);
                    }
                    this.setExpanded(item, expanded);
                }
            }
            this.internalSetExpandedTreePaths(expandedTreePaths, (Widget)item, childPath);
            ++i;
        }
    }

    public boolean isExpandable(Object elementOrTreePath) {
        Object element;
        TreePath path;
        if (elementOrTreePath instanceof TreePath) {
            path = (TreePath)elementOrTreePath;
            element = path.getLastSegment();
        } else {
            element = elementOrTreePath;
            path = null;
        }
        IContentProvider cp = this.getContentProvider();
        if (cp instanceof ITreePathContentProvider) {
            ITreePathContentProvider tpcp = (ITreePathContentProvider)cp;
            if (path == null) {
                Widget w = this.findItem(element);
                if (w instanceof Item) {
                    Item item = (Item)w;
                    path = this.getTreePathFromItem(item);
                }
                if (path == null) {
                    path = new TreePath(new Object[]{element});
                }
            }
            return tpcp.hasChildren(path);
        }
        if (cp instanceof ITreeContentProvider) {
            ITreeContentProvider tcp = (ITreeContentProvider)cp;
            return tcp.hasChildren(element);
        }
        return false;
    }

    private boolean isExpandable(Item item, TreePath parentPath, Object element) {
        Object elementOrTreePath = element;
        if (this.isTreePathContentProvider()) {
            elementOrTreePath = parentPath != null ? parentPath.createChildPath(element) : this.getTreePathFromItem(item);
        }
        return this.isExpandable(elementOrTreePath);
    }

    protected void labelProviderChanged() {
        Control tree = this.getControl();
        tree.setRedraw(false);
        this.internalRefresh((Widget)tree, this.getRoot(), false, true);
        tree.setRedraw(true);
    }

    protected abstract Item newItem(Widget var1, int var2, int var3);

    public void remove(final Object[] elementsOrTreePaths) {
        this.assertElementsNotNull(elementsOrTreePaths);
        if (elementsOrTreePaths.length == 0) {
            return;
        }
        if (this.checkBusy()) {
            return;
        }
        this.preservingSelection(new Runnable(){

            public void run() {
                AbstractTreeViewer.this.internalRemove(elementsOrTreePaths);
            }
        });
    }

    public void remove(final Object parent, final Object[] elements) {
        this.assertElementsNotNull(elements);
        if (elements.length == 0) {
            return;
        }
        if (this.checkBusy()) {
            return;
        }
        this.preservingSelection(new Runnable(){

            public void run() {
                AbstractTreeViewer.this.internalRemove(parent, elements);
            }
        });
    }

    public void remove(Object elementsOrTreePaths) {
        this.remove(new Object[]{elementsOrTreePaths});
    }

    protected abstract void removeAll(Control var1);

    public void removeTreeListener(ITreeViewerListener listener) {
        this.treeListeners.remove((Object)listener);
    }

    public void reveal(Object elementOrTreePath) {
        Assert.isNotNull((Object)elementOrTreePath);
        Widget w = this.internalExpand(elementOrTreePath, true);
        if (w instanceof Item) {
            this.showItem((Item)w);
        }
    }

    private Item rightMostVisibleDescendent(Item item) {
        Item[] children = this.getItems(item);
        if (this.getExpanded(item) && children != null && children.length > 0) {
            return this.rightMostVisibleDescendent(children[children.length - 1]);
        }
        return item;
    }

    public Item scrollDown(int x, int y) {
        Item current = this.getItem(x, y);
        if (current != null) {
            Item next = this.getNextItem(current, true);
            this.showItem(next == null ? current : next);
            return next;
        }
        return null;
    }

    public Item scrollUp(int x, int y) {
        Item current = this.getItem(x, y);
        if (current != null) {
            Item previous = this.getPreviousItem(current);
            this.showItem(previous == null ? current : previous);
            return previous;
        }
        return null;
    }

    public void setAutoExpandLevel(int level) {
        this.expandToLevel = level;
    }

    public void setContentProvider(IContentProvider provider) {
        super.setContentProvider(provider);
    }

    protected void assertContentProviderType(IContentProvider provider) {
        Assert.isTrue((provider instanceof ITreeContentProvider || provider instanceof ITreePathContentProvider ? 1 : 0) != 0);
    }

    protected abstract void setExpanded(Item var1, boolean var2);

    public void setExpandedElements(Object[] elements) {
        this.assertElementsNotNull(elements);
        if (this.checkBusy()) {
            return;
        }
        CustomHashtable expandedElements = this.newHashtable(elements.length * 2 + 1);
        int i = 0;
        while (i < elements.length) {
            Object element = elements[i];
            this.internalExpand(element, false);
            expandedElements.put(element, element);
            ++i;
        }
        this.internalSetExpanded(expandedElements, (Widget)this.getControl());
    }

    public void setExpandedTreePaths(TreePath[] treePaths) {
        this.assertElementsNotNull(treePaths);
        if (this.checkBusy()) {
            return;
        }
        final IElementComparer comparer = this.getComparer();
        IElementComparer treePathComparer = new IElementComparer(){

            public boolean equals(Object a, Object b) {
                return ((TreePath)a).equals((TreePath)b, comparer);
            }

            public int hashCode(Object element) {
                return ((TreePath)element).hashCode(comparer);
            }
        };
        CustomHashtable expandedTreePaths = new CustomHashtable(treePaths.length * 2 + 1, treePathComparer);
        int i = 0;
        while (i < treePaths.length) {
            TreePath treePath = treePaths[i];
            this.internalExpand(treePath, false);
            expandedTreePaths.put(treePath, treePath);
            ++i;
        }
        this.internalSetExpandedTreePaths(expandedTreePaths, (Widget)this.getControl(), new TreePath(new Object[0]));
    }

    public void setExpandedState(Object elementOrTreePath, boolean expanded) {
        Assert.isNotNull((Object)elementOrTreePath);
        if (this.checkBusy()) {
            return;
        }
        Widget item = this.internalExpand(elementOrTreePath, false);
        if (item instanceof Item) {
            if (expanded) {
                this.createChildren(item);
            }
            this.setExpanded((Item)item, expanded);
        }
    }

    protected abstract void setSelection(List var1);

    protected void setSelectionToWidget(List v, boolean reveal) {
        if (v == null) {
            this.setSelection(new ArrayList(0));
            return;
        }
        int size = v.size();
        ArrayList<Widget> newSelection = new ArrayList<Widget>(size);
        int i = 0;
        while (i < size) {
            TreePath treePath;
            Object element;
            Object elementOrTreePath = v.get(i);
            Widget w = this.internalExpand(elementOrTreePath, false);
            if (w instanceof Item) {
                newSelection.add(w);
            } else if (w == null && elementOrTreePath instanceof TreePath && (element = (treePath = (TreePath)elementOrTreePath).getLastSegment()) != null && (w = this.internalExpand(element, false)) instanceof Item) {
                newSelection.add(w);
            }
            ++i;
        }
        this.setSelection(newSelection);
        if (reveal && newSelection.size() > 0) {
            i = newSelection.size() - 1;
            while (i >= 0) {
                this.showItem((Item)newSelection.get(i));
                --i;
            }
        }
    }

    protected abstract void showItem(Item var1);

    protected void updateChildren(Widget widget, Object parent, Object[] elementChildren) {
        this.updateChildren(widget, parent, elementChildren, true);
    }

    private void updateChildren(Widget widget, Object parent, Object[] elementChildren, boolean updateLabels) {
        Object newElement;
        Item ti;
        if (widget instanceof Item && !this.getExpanded(ti = (Item)widget)) {
            if (this.optionallyPruneChildren(ti, parent)) {
                return;
            }
            Item[] its = this.getItems(ti);
            if (this.isExpandable(ti, null, parent)) {
                if (its.length == 0) {
                    this.newItem((Widget)ti, 0, -1);
                    return;
                }
                if (its.length == 1 && its[0].getData() == null) {
                    return;
                }
            } else {
                int i = 0;
                while (i < its.length) {
                    if (its[i].getData() != null) {
                        this.disassociate(its[i]);
                    }
                    its[i].dispose();
                    ++i;
                }
                return;
            }
        }
        if (elementChildren == null) {
            if (this.isTreePathContentProvider() && widget instanceof Item) {
                TreePath path = this.getTreePathFromItem((Item)widget);
                elementChildren = this.getSortedChildren(path);
            } else {
                elementChildren = this.getSortedChildren(parent);
            }
        }
        Control tree = this.getControl();
        int oldCnt = -1;
        if (widget == tree) {
            oldCnt = this.getItemCount(tree);
        }
        Item[] items = this.getChildren(widget);
        CustomHashtable expanded = this.newHashtable(13);
        int i = 0;
        while (i < items.length) {
            Object element;
            if (this.getExpanded(items[i]) && (element = items[i].getData()) != null) {
                expanded.put(element, element);
            }
            ++i;
        }
        int min = Math.min(elementChildren.length, items.length);
        int numItemsToDispose = items.length - min;
        if (numItemsToDispose > 0) {
            CustomHashtable children = this.newHashtable(elementChildren.length * 2);
            int i2 = 0;
            while (i2 < elementChildren.length) {
                Object elementChild = elementChildren[i2];
                children.put(elementChild, elementChild);
                ++i2;
            }
            i2 = 0;
            while (numItemsToDispose > 0 && i2 < items.length) {
                Object data = items[i2].getData();
                if (data == null || !children.containsKey(data)) {
                    if (data != null) {
                        this.disassociate(items[i2]);
                    }
                    items[i2].dispose();
                    if (i2 + 1 < items.length) {
                        System.arraycopy(items, i2 + 1, items, i2, items.length - (i2 + 1));
                    }
                    --numItemsToDispose;
                    continue;
                }
                ++i2;
            }
        }
        int i3 = 0;
        while (i3 < min) {
            Object newElement2;
            Item item = items[i3];
            Object oldElement = item.getData();
            if (oldElement != null && (newElement2 = elementChildren[i3]) != oldElement) {
                if (this.equals(newElement2, oldElement)) {
                    Object data = item.getData();
                    if (data != null) {
                        this.unmapElement(data, (Widget)item);
                    }
                    item.setData(newElement2);
                    this.mapElement(newElement2, (Widget)item);
                } else {
                    this.disassociate(item);
                    item.setImage(null);
                    item.setText("");
                }
            }
            ++i3;
        }
        i3 = 0;
        while (i3 < min) {
            Item item = items[i3];
            newElement = elementChildren[i3];
            if (item.getData() == null) {
                this.associate(newElement, item);
                this.updatePlus(item, newElement);
                this.updateItem((Widget)item, newElement);
            } else {
                this.updatePlus(item, newElement);
                if (updateLabels) {
                    this.updateItem((Widget)item, newElement);
                }
            }
            ++i3;
        }
        i3 = 0;
        while (i3 < min) {
            Item item = items[i3];
            newElement = elementChildren[i3];
            this.setExpanded(item, expanded.containsKey(newElement));
            ++i3;
        }
        if (min < elementChildren.length) {
            i3 = min;
            while (i3 < elementChildren.length) {
                this.createTreeItem(widget, elementChildren[i3], -1);
                ++i3;
            }
            if (expanded.size() > 0) {
                items = this.getChildren(widget);
                i3 = min;
                while (i3 < elementChildren.length) {
                    if (expanded.containsKey(elementChildren[i3])) {
                        this.setExpanded(items[i3], true);
                    }
                    ++i3;
                }
            }
        }
        if (widget == tree && oldCnt == 0 && this.getItemCount(tree) != 0) {
            tree.setRedraw(false);
            tree.setRedraw(true);
        }
    }

    boolean optionallyPruneChildren(Item item, Object element) {
        boolean needDummy = this.isExpandable(item, null, element);
        boolean haveDummy = false;
        Item[] items = this.getItems(item);
        int i = 0;
        while (i < items.length) {
            if (items[i].getData() != null) {
                this.disassociate(items[i]);
                items[i].dispose();
            } else if (needDummy && !haveDummy) {
                haveDummy = true;
            } else {
                items[i].dispose();
            }
            ++i;
        }
        if (needDummy && !haveDummy) {
            this.newItem((Widget)item, 0, -1);
        }
        return true;
    }

    public Item[] getChildren(Widget widget, Object[] elementChildren) {
        return this.getChildren(widget);
    }

    protected void updatePlus(Item item, Object element) {
        boolean hasPlus = this.getItemCount(item) > 0;
        boolean needsPlus = this.isExpandable(item, null, element);
        boolean removeAll = false;
        boolean addDummy = false;
        Object data = item.getData();
        if (data != null && this.equals(element, data)) {
            if (hasPlus != needsPlus) {
                if (needsPlus) {
                    addDummy = true;
                } else {
                    removeAll = true;
                }
            }
        } else {
            removeAll = true;
            addDummy = needsPlus;
            this.setExpanded(item, false);
        }
        if (removeAll) {
            Item[] items = this.getItems(item);
            int i = 0;
            while (i < items.length) {
                if (items[i].getData() != null) {
                    this.disassociate(items[i]);
                }
                items[i].dispose();
                ++i;
            }
        }
        if (addDummy) {
            this.newItem((Widget)item, 0, -1);
        }
    }

    public Object[] getVisibleExpandedElements() {
        ArrayList v = new ArrayList();
        this.internalCollectVisibleExpanded(v, (Widget)this.getControl());
        return v.toArray();
    }

    private void internalCollectVisibleExpanded(ArrayList result, Widget widget) {
        Item[] items = this.getChildren(widget);
        int i = 0;
        while (i < items.length) {
            Item item = items[i];
            if (this.getExpanded(item)) {
                Object data = item.getData();
                if (data != null) {
                    result.add(data);
                }
                this.internalCollectVisibleExpanded(result, (Widget)item);
            }
            ++i;
        }
    }

    protected TreePath getTreePathFromItem(Item item) {
        LinkedList<Object> segments = new LinkedList<Object>();
        while (item != null) {
            Object segment = item.getData();
            Assert.isNotNull((Object)segment);
            segments.addFirst(segment);
            item = this.getParentItem(item);
        }
        return new TreePath(segments.toArray());
    }

    public ISelection getSelection() {
        Control control = this.getControl();
        if (control == null || control.isDisposed()) {
            return TreeSelection.EMPTY;
        }
        Item[] items = this.getSelection(this.getControl());
        ArrayList<TreePath> list = new ArrayList<TreePath>(items.length);
        int i = 0;
        while (i < items.length) {
            Item item = items[i];
            if (item.getData() != null) {
                list.add(this.getTreePathFromItem(item));
            }
            ++i;
        }
        return new TreeSelection(list.toArray(new TreePath[list.size()]), this.getComparer());
    }

    protected void setSelectionToWidget(ISelection selection, boolean reveal) {
        if (selection instanceof ITreeSelection) {
            ITreeSelection treeSelection = (ITreeSelection)selection;
            this.setSelectionToWidget(Arrays.asList(treeSelection.getPaths()), reveal);
        } else {
            super.setSelectionToWidget(selection, reveal);
        }
    }

    public TreePath[] getExpandedTreePaths() {
        ArrayList items = new ArrayList();
        this.internalCollectExpandedItems(items, (Widget)this.getControl());
        ArrayList<TreePath> result = new ArrayList<TreePath>(items.size());
        Iterator it = items.iterator();
        while (it.hasNext()) {
            Item item = (Item)it.next();
            TreePath treePath = this.getTreePathFromItem(item);
            if (treePath == null) continue;
            result.add(treePath);
        }
        return result.toArray(new TreePath[items.size()]);
    }

    private boolean isTreePathContentProvider() {
        return this.getContentProvider() instanceof ITreePathContentProvider;
    }

    public void insert(Object parentElementOrTreePath, Object element, int position) {
        Assert.isNotNull((Object)parentElementOrTreePath);
        Assert.isNotNull((Object)element);
        if (this.checkBusy()) {
            return;
        }
        if (this.getComparator() != null || this.hasFilters()) {
            this.add(parentElementOrTreePath, new Object[]{element});
            return;
        }
        Widget[] items = this.internalIsInputOrEmptyPath(parentElementOrTreePath) ? new Widget[]{this.getControl()} : this.internalFindItems(parentElementOrTreePath);
        int i = 0;
        while (i < items.length) {
            Widget widget = items[i];
            if (widget instanceof Item) {
                Item item = (Item)widget;
                Item[] childItems = this.getChildren((Widget)item);
                if (this.getExpanded(item) || childItems.length > 0 && childItems[0].getData() != null) {
                    int insertionPosition = position;
                    if (insertionPosition == -1) {
                        insertionPosition = this.getItemCount(item);
                    }
                    this.createTreeItem((Widget)item, element, insertionPosition);
                } else {
                    Object parentElement = parentElementOrTreePath;
                    if (element instanceof TreePath) {
                        parentElement = ((TreePath)parentElement).getLastSegment();
                    }
                    this.updatePlus(item, parentElement);
                }
            } else {
                int insertionPosition = position;
                if (insertionPosition == -1) {
                    insertionPosition = this.getItemCount((Control)widget);
                }
                this.createTreeItem(widget, element, insertionPosition);
            }
            ++i;
        }
    }

    protected Widget getColumnViewerOwner(int columnIndex) {
        return null;
    }

    protected Item getItemAt(Point point) {
        return null;
    }

    protected ColumnViewerEditor createViewerEditor() {
        return null;
    }

    protected int doGetColumnCount() {
        return 0;
    }

    protected void buildLabel(ViewerLabel updateLabel, Object elementOrPath) {
        Object element;
        if (elementOrPath instanceof TreePath) {
            TreePath path = (TreePath)elementOrPath;
            IBaseLabelProvider provider = this.getLabelProvider();
            if (provider instanceof ITreePathLabelProvider) {
                ITreePathLabelProvider pprov = (ITreePathLabelProvider)provider;
                this.buildLabel(updateLabel, path, pprov);
                return;
            }
            element = path.getLastSegment();
        } else {
            element = elementOrPath;
        }
        super.buildLabel(updateLabel, element);
    }

    protected final boolean internalIsInputOrEmptyPath(Object elementOrTreePath) {
        if (elementOrTreePath.equals(this.getRoot())) {
            return true;
        }
        if (!(elementOrTreePath instanceof TreePath)) {
            return false;
        }
        return ((TreePath)elementOrTreePath).getSegmentCount() == 0;
    }

    protected ViewerRow getViewerRowFromItem(Widget item) {
        return null;
    }

    class UpdateItemSafeRunnable
    extends SafeRunnable {
        private Object element;
        private Item item;

        UpdateItemSafeRunnable(Item item, Object element) {
            this.item = item;
            this.element = element;
        }

        public void run() {
            AbstractTreeViewer.this.doUpdateItem(this.item, this.element);
        }
    }
}

