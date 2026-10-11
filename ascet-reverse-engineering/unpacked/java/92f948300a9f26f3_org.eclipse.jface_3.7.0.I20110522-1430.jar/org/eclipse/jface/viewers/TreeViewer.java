/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.TreeEvent
 *  org.eclipse.swt.events.TreeListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Item
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Tree
 *  org.eclipse.swt.widgets.TreeItem
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.viewers;

import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.eclipse.jface.viewers.AbstractTreeViewer;
import org.eclipse.jface.viewers.ColumnViewerEditor;
import org.eclipse.jface.viewers.ColumnViewerEditorActivationEvent;
import org.eclipse.jface.viewers.ColumnViewerEditorActivationStrategy;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.ILazyTreeContentProvider;
import org.eclipse.jface.viewers.ILazyTreePathContentProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.TreeExpansionEvent;
import org.eclipse.jface.viewers.TreePath;
import org.eclipse.jface.viewers.TreeSelection;
import org.eclipse.jface.viewers.TreeViewerEditor;
import org.eclipse.jface.viewers.TreeViewerRow;
import org.eclipse.jface.viewers.ViewerCell;
import org.eclipse.jface.viewers.ViewerRow;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.TreeEvent;
import org.eclipse.swt.events.TreeListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.TreeItem;
import org.eclipse.swt.widgets.Widget;

public class TreeViewer
extends AbstractTreeViewer {
    private static final String VIRTUAL_DISPOSE_KEY = "org.eclipse.jface.DISPOSE_LISTENER";
    private Tree tree;
    private boolean treeIsDisposed = false;
    private boolean contentProviderIsLazy;
    private boolean contentProviderIsTreeBased;
    private TreeViewerRow cachedRow;
    private boolean insidePreservingSelection;

    public TreeViewer(Composite parent) {
        this(parent, 2818);
    }

    public TreeViewer(Composite parent, int style) {
        this(new Tree(parent, style));
    }

    public TreeViewer(Tree tree) {
        this.tree = tree;
        this.hookControl((Control)tree);
    }

    protected void addTreeListener(Control c, TreeListener listener) {
        ((Tree)c).addTreeListener(listener);
    }

    protected Widget getColumnViewerOwner(int columnIndex) {
        if (columnIndex < 0 || columnIndex > 0 && columnIndex >= this.getTree().getColumnCount()) {
            return null;
        }
        if (this.getTree().getColumnCount() == 0) {
            return this.getTree();
        }
        return this.getTree().getColumn(columnIndex);
    }

    protected Item[] getChildren(Widget o) {
        if (o instanceof TreeItem) {
            return ((TreeItem)o).getItems();
        }
        if (o instanceof Tree) {
            return ((Tree)o).getItems();
        }
        return null;
    }

    public Control getControl() {
        return this.tree;
    }

    protected boolean getExpanded(Item item) {
        return ((TreeItem)item).getExpanded();
    }

    protected Item getItemAt(Point p) {
        TreeItem[] selection = this.tree.getSelection();
        if (selection.length == 1) {
            int columnCount = this.tree.getColumnCount();
            int i = 0;
            while (i < columnCount) {
                if (selection[0].getBounds(i).contains(p)) {
                    return selection[0];
                }
                ++i;
            }
        }
        return this.getTree().getItem(p);
    }

    protected int getItemCount(Control widget) {
        return ((Tree)widget).getItemCount();
    }

    protected int getItemCount(Item item) {
        return ((TreeItem)item).getItemCount();
    }

    protected Item[] getItems(Item item) {
        return ((TreeItem)item).getItems();
    }

    public IBaseLabelProvider getLabelProvider() {
        return super.getLabelProvider();
    }

    protected Item getParentItem(Item item) {
        return ((TreeItem)item).getParentItem();
    }

    protected Item[] getSelection(Control widget) {
        return ((Tree)widget).getSelection();
    }

    public Tree getTree() {
        return this.tree;
    }

    protected void hookControl(Control control) {
        super.hookControl(control);
        Tree treeControl = (Tree)control;
        if ((treeControl.getStyle() & 0x10000000) != 0) {
            treeControl.addDisposeListener(new DisposeListener(){

                public void widgetDisposed(DisposeEvent e) {
                    TreeViewer.this.treeIsDisposed = true;
                    TreeViewer.this.unmapAllElements();
                }
            });
            treeControl.addListener(36, new Listener(){

                public void handleEvent(Event event) {
                    if (TreeViewer.this.contentProviderIsLazy) {
                        TreeItem item = (TreeItem)event.item;
                        TreeItem parentItem = item.getParentItem();
                        int index = event.index;
                        TreeViewer.this.virtualLazyUpdateWidget((Widget)(parentItem == null ? TreeViewer.this.getTree() : parentItem), index);
                    }
                }
            });
        }
    }

    protected ColumnViewerEditor createViewerEditor() {
        return new TreeViewerEditor(this, null, new ColumnViewerEditorActivationStrategy(this), 1);
    }

    protected Item newItem(Widget parent, int flags, int ix) {
        TreeItem item = parent instanceof TreeItem ? (TreeItem)this.createNewRowPart(this.getViewerRowFromItem(parent), flags, ix).getItem() : (TreeItem)this.createNewRowPart(null, flags, ix).getItem();
        return item;
    }

    protected void removeAll(Control widget) {
        ((Tree)widget).removeAll();
    }

    protected void setExpanded(Item node, boolean expand) {
        ((TreeItem)node).setExpanded(expand);
        if (this.contentProviderIsLazy) {
            this.getControl().update();
        }
    }

    protected void setSelection(List items) {
        Item[] current = this.getSelection((Control)this.getTree());
        if (this.isSameSelection(items, current)) {
            return;
        }
        TreeItem[] newItems = new TreeItem[items.size()];
        items.toArray(newItems);
        this.getTree().setSelection(newItems);
    }

    protected void showItem(Item item) {
        this.getTree().showItem((TreeItem)item);
    }

    protected Item getChild(Widget widget, int index) {
        if (widget instanceof TreeItem) {
            return ((TreeItem)widget).getItem(index);
        }
        if (widget instanceof Tree) {
            return ((Tree)widget).getItem(index);
        }
        return null;
    }

    protected void assertContentProviderType(IContentProvider provider) {
        if (provider instanceof ILazyTreeContentProvider || provider instanceof ILazyTreePathContentProvider) {
            return;
        }
        super.assertContentProviderType(provider);
    }

    protected Object[] getRawChildren(Object parent) {
        if (this.contentProviderIsLazy) {
            return new Object[0];
        }
        return super.getRawChildren(parent);
    }

    void preservingSelection(Runnable updateCode, boolean reveal) {
        if (this.insidePreservingSelection || !this.getPreserveSelection()) {
            updateCode.run();
            return;
        }
        this.insidePreservingSelection = true;
        try {
            super.preservingSelection(updateCode, reveal);
        }
        finally {
            this.insidePreservingSelection = false;
        }
    }

    public void setChildCount(final Object elementOrTreePath, final int count) {
        if (this.checkBusy()) {
            return;
        }
        this.preservingSelection(new Runnable(){

            public void run() {
                if (TreeViewer.this.internalIsInputOrEmptyPath(elementOrTreePath)) {
                    TreeViewer.this.getTree().setItemCount(count);
                    return;
                }
                Widget[] items = TreeViewer.this.internalFindItems(elementOrTreePath);
                int i = 0;
                while (i < items.length) {
                    TreeItem treeItem = (TreeItem)items[i];
                    treeItem.setItemCount(count);
                    ++i;
                }
            }
        });
    }

    public void replace(Object parentElementOrTreePath, int index, Object element) {
        TreeSelection selection;
        block13: {
            Widget[] itemsToDisassociate;
            Item[] selectedItems;
            block12: {
                if (this.checkBusy()) {
                    return;
                }
                selectedItems = this.getSelection(this.getControl());
                selection = (TreeSelection)this.getSelection();
                if (parentElementOrTreePath instanceof TreePath) {
                    TreePath elementPath = ((TreePath)parentElementOrTreePath).createChildPath(element);
                    itemsToDisassociate = this.internalFindItems(elementPath);
                } else {
                    itemsToDisassociate = this.internalFindItems(element);
                }
                if (!this.internalIsInputOrEmptyPath(parentElementOrTreePath)) break block12;
                if (index >= this.tree.getItemCount()) break block13;
                TreeItem item = this.tree.getItem(index);
                selection = this.adjustSelectionForReplace(selectedItems, selection, item, element, this.getRoot());
                int i = 0;
                while (i < itemsToDisassociate.length) {
                    TreeItem itemToDisassociate;
                    if (itemsToDisassociate[i] instanceof TreeItem && (itemToDisassociate = (TreeItem)itemsToDisassociate[i]) != item && itemToDisassociate.getParentItem() == null) {
                        int indexToDisassociate = this.getTree().indexOf(itemToDisassociate);
                        this.disassociate((Item)itemToDisassociate);
                        this.getTree().clear(indexToDisassociate, true);
                    }
                    ++i;
                }
                Object oldData = item.getData();
                this.updateItem((Widget)item, element);
                if (this.equals(oldData, element)) break block13;
                item.clearAll(true);
                break block13;
            }
            Widget[] parentItems = this.internalFindItems(parentElementOrTreePath);
            int i = 0;
            while (i < parentItems.length) {
                TreeItem parentItem = (TreeItem)parentItems[i];
                if (index < parentItem.getItemCount()) {
                    TreeItem item = parentItem.getItem(index);
                    selection = this.adjustSelectionForReplace(selectedItems, selection, item, element, parentItem.getData());
                    int j = 0;
                    while (j < itemsToDisassociate.length) {
                        TreeItem itemToDisassociate;
                        if (itemsToDisassociate[j] instanceof TreeItem && (itemToDisassociate = (TreeItem)itemsToDisassociate[j]) != item && itemToDisassociate.getParentItem() == parentItem) {
                            int indexToDisaccociate = parentItem.indexOf(itemToDisassociate);
                            this.disassociate((Item)itemToDisassociate);
                            parentItem.clear(indexToDisaccociate, true);
                        }
                        ++j;
                    }
                    Object oldData = item.getData();
                    this.updateItem((Widget)item, element);
                    if (!this.equals(oldData, element)) {
                        item.clearAll(true);
                    }
                }
                ++i;
            }
        }
        if (!this.insidePreservingSelection) {
            this.setSelectionToWidget(selection, false);
            ISelection newSelection = this.getSelection();
            if (!newSelection.equals(selection)) {
                this.handleInvalidSelection(selection, newSelection);
            }
        }
    }

    private TreeSelection adjustSelectionForReplace(Item[] selectedItems, TreeSelection selection, TreeItem item, Object element, Object parentElement) {
        if (item.getData() != null || selectedItems.length == selection.size() || parentElement == null) {
            return selection;
        }
        int i = 0;
        while (i < selectedItems.length) {
            if (item == selectedItems[i]) {
                TreePath[] originalPaths = selection.getPaths();
                int length = originalPaths.length;
                TreePath[] paths = new TreePath[length + 1];
                System.arraycopy(originalPaths, 0, paths, 0, length);
                item.setData(element);
                paths[length] = this.getTreePathFromItem((Item)item);
                item.setData(null);
                return new TreeSelection(paths, selection.getElementComparer());
            }
            ++i;
        }
        return selection;
    }

    public boolean isExpandable(Object element) {
        if (this.contentProviderIsLazy) {
            TreeItem treeItem = (TreeItem)this.internalExpand(element, false);
            if (treeItem == null) {
                return false;
            }
            this.virtualMaterializeItem(treeItem);
            return treeItem.getItemCount() > 0;
        }
        return super.isExpandable(element);
    }

    protected Object getParentElement(Object element) {
        boolean oldBusy = this.isBusy();
        this.setBusy(true);
        try {
            ILazyTreePathContentProvider lazyTreePathContentProvider;
            TreePath[] parents;
            if (this.contentProviderIsLazy && !this.contentProviderIsTreeBased && !(element instanceof TreePath)) {
                ILazyTreeContentProvider lazyTreeContentProvider = (ILazyTreeContentProvider)this.getContentProvider();
                Object object = lazyTreeContentProvider.getParent(element);
                return object;
            }
            if (this.contentProviderIsLazy && this.contentProviderIsTreeBased && !(element instanceof TreePath) && (parents = (lazyTreePathContentProvider = (ILazyTreePathContentProvider)this.getContentProvider()).getParents(element)) != null && parents.length > 0) {
                TreePath treePath = parents[0];
                return treePath;
            }
            Object object = super.getParentElement(element);
            return object;
        }
        finally {
            this.setBusy(oldBusy);
        }
    }

    void createChildren(Widget widget, boolean materialize) {
        if (this.contentProviderIsLazy) {
            Object element = widget.getData();
            if (element == null && widget instanceof TreeItem) {
                this.virtualMaterializeItem((TreeItem)widget);
                element = widget.getData();
            }
            if (element == null) {
                return;
            }
            Item[] children = this.getChildren(widget);
            if (children.length == 1 && children[0].getData() == null) {
                this.virtualLazyUpdateChildCount(widget, children.length);
                children = this.getChildren(widget);
            }
            int i = 0;
            while (i < children.length) {
                if (children[i].getData() == null) {
                    if (materialize) {
                        this.virtualLazyUpdateWidget(widget, i);
                    } else {
                        ((TreeItem)children[i]).clearAll(true);
                    }
                }
                ++i;
            }
            return;
        }
        super.createChildren(widget, materialize);
    }

    protected void internalAdd(Widget widget, Object parentElement, Object[] childElements) {
        if (this.contentProviderIsLazy) {
            if (widget instanceof TreeItem) {
                TreeItem ti = (TreeItem)widget;
                int count = ti.getItemCount() + childElements.length;
                ti.setItemCount(count);
                ti.clearAll(false);
            } else {
                Tree t = (Tree)widget;
                t.setItemCount(t.getItemCount() + childElements.length);
                t.clearAll(false);
            }
            return;
        }
        super.internalAdd(widget, parentElement, childElements);
    }

    private void virtualMaterializeItem(TreeItem treeItem) {
        Object parentElement;
        if (treeItem.getData() != null) {
            return;
        }
        if (!this.contentProviderIsLazy) {
            return;
        }
        TreeItem parent = treeItem.getParentItem();
        if (parent == null) {
            parent = treeItem.getParent();
        }
        if ((parentElement = parent.getData()) != null) {
            int index = parent instanceof Tree ? ((Tree)parent).indexOf(treeItem) : parent.indexOf(treeItem);
            this.virtualLazyUpdateWidget((Widget)parent, index);
        }
    }

    protected void internalRefreshStruct(Widget widget, Object element, boolean updateLabels) {
        if (this.contentProviderIsLazy) {
            if (widget instanceof Tree) {
                ((Tree)widget).clearAll(true);
            } else if (widget instanceof TreeItem) {
                ((TreeItem)widget).clearAll(true);
            }
            int index = 0;
            TreeItem parent = null;
            if (widget instanceof TreeItem) {
                TreeItem treeItem = (TreeItem)widget;
                parent = treeItem.getParentItem();
                if (parent == null) {
                    parent = treeItem.getParent();
                }
                index = parent instanceof Tree ? ((Tree)parent).indexOf(treeItem) : parent.indexOf(treeItem);
            }
            this.virtualRefreshExpandedItems((Widget)parent, widget, element, index);
            return;
        }
        super.internalRefreshStruct(widget, element, updateLabels);
    }

    private void virtualRefreshExpandedItems(Widget parent, Widget widget, Object element, int index) {
        if (widget instanceof Tree) {
            if (element == null) {
                ((Tree)widget).setItemCount(0);
                return;
            }
            this.virtualLazyUpdateChildCount(widget, this.getChildren(widget).length);
        } else if (((TreeItem)widget).getExpanded()) {
            ((TreeItem)widget).setText(" ");
            this.virtualLazyUpdateWidget(parent, index);
        } else {
            return;
        }
        Item[] items = this.getChildren(widget);
        int i = 0;
        while (i < items.length) {
            Item item = items[i];
            Object data = item.getData();
            this.virtualRefreshExpandedItems(widget, (Widget)item, data, i);
            ++i;
        }
    }

    protected void mapElement(Object element, final Widget item) {
        super.mapElement(element, item);
        if ((this.getTree().getStyle() & 0x10000000) != 0 && item.getData(VIRTUAL_DISPOSE_KEY) == null) {
            item.setData(VIRTUAL_DISPOSE_KEY, (Object)Boolean.TRUE);
            item.addDisposeListener(new DisposeListener(){

                public void widgetDisposed(DisposeEvent e) {
                    if (!TreeViewer.this.treeIsDisposed) {
                        Object data = item.getData();
                        if (TreeViewer.this.usingElementMap() && data != null) {
                            TreeViewer.this.unmapElement(data, item);
                        }
                    }
                }
            });
        }
    }

    protected ViewerRow getViewerRowFromItem(Widget item) {
        if (this.cachedRow == null) {
            this.cachedRow = new TreeViewerRow((TreeItem)item);
        } else {
            this.cachedRow.setItem((TreeItem)item);
        }
        return this.cachedRow;
    }

    private ViewerRow createNewRowPart(ViewerRow parent, int style, int rowIndex) {
        if (parent == null) {
            if (rowIndex >= 0) {
                return this.getViewerRowFromItem((Widget)new TreeItem(this.tree, style, rowIndex));
            }
            return this.getViewerRowFromItem((Widget)new TreeItem(this.tree, style));
        }
        if (rowIndex >= 0) {
            return this.getViewerRowFromItem((Widget)new TreeItem((TreeItem)parent.getItem(), 0, rowIndex));
        }
        return this.getViewerRowFromItem((Widget)new TreeItem((TreeItem)parent.getItem(), 0));
    }

    protected void internalInitializeTree(Control widget) {
        if (this.contentProviderIsLazy && widget instanceof Tree && widget.getData() != null) {
            this.virtualLazyUpdateChildCount((Widget)widget, 0);
            return;
        }
        super.internalInitializeTree((Control)this.tree);
    }

    protected void updatePlus(Item item, Object element) {
        if (this.contentProviderIsLazy) {
            Object data = item.getData();
            int itemCount = 0;
            if (data != null) {
                itemCount = ((TreeItem)item).getItemCount();
            }
            this.virtualLazyUpdateHasChildren(item, itemCount);
        } else {
            super.updatePlus(item, element);
        }
    }

    public void remove(final Object parentOrTreePath, final int index) {
        if (this.checkBusy()) {
            return;
        }
        final LinkedList<TreePath> oldSelection = new LinkedList<TreePath>(Arrays.asList(((TreeSelection)this.getSelection()).getPaths()));
        this.preservingSelection(new Runnable(){

            public void run() {
                TreePath removedPath = null;
                if (TreeViewer.this.internalIsInputOrEmptyPath(parentOrTreePath)) {
                    Tree tree = (Tree)TreeViewer.this.getControl();
                    if (index < tree.getItemCount()) {
                        TreeItem item = tree.getItem(index);
                        if (item.getData() != null) {
                            removedPath = TreeViewer.this.getTreePathFromItem((Item)item);
                            TreeViewer.this.disassociate((Item)item);
                        }
                        item.dispose();
                    }
                } else {
                    Widget[] parentItems = TreeViewer.this.internalFindItems(parentOrTreePath);
                    int i = 0;
                    while (i < parentItems.length) {
                        TreeItem parentItem = (TreeItem)parentItems[i];
                        if (!parentItem.isDisposed() && index < parentItem.getItemCount()) {
                            TreeItem item = parentItem.getItem(index);
                            if (item.getData() == null) {
                                if (index > 0 || parentItem.getExpanded()) {
                                    item.dispose();
                                }
                            } else {
                                removedPath = TreeViewer.this.getTreePathFromItem((Item)item);
                                TreeViewer.this.disassociate((Item)item);
                                item.dispose();
                            }
                        }
                        ++i;
                    }
                }
                if (removedPath != null) {
                    boolean removed = false;
                    Iterator it = oldSelection.iterator();
                    while (it.hasNext()) {
                        TreePath path = (TreePath)it.next();
                        if (!path.startsWith(removedPath, TreeViewer.this.getComparer())) continue;
                        it.remove();
                        removed = true;
                    }
                    if (removed) {
                        TreeViewer.this.setSelection(new TreeSelection(oldSelection.toArray(new TreePath[oldSelection.size()]), TreeViewer.this.getComparer()), false);
                    }
                }
            }
        });
    }

    protected void handleTreeExpand(TreeEvent event) {
        if (this.isCellEditorActive()) {
            this.applyEditorValue();
        }
        if (this.contentProviderIsLazy) {
            if (event.item.getData() != null) {
                Item[] children = this.getChildren(event.item);
                if (children.length == 1 && children[0].getData() == null) {
                    this.virtualLazyUpdateChildCount(event.item, children.length);
                }
                this.fireTreeExpanded(new TreeExpansionEvent(this, event.item.getData()));
            }
            return;
        }
        super.handleTreeExpand(event);
    }

    protected void handleTreeCollapse(TreeEvent event) {
        if (this.isCellEditorActive()) {
            this.applyEditorValue();
        }
        super.handleTreeCollapse(event);
    }

    public void setContentProvider(IContentProvider provider) {
        this.contentProviderIsLazy = provider instanceof ILazyTreeContentProvider || provider instanceof ILazyTreePathContentProvider;
        this.contentProviderIsTreeBased = provider instanceof ILazyTreePathContentProvider;
        super.setContentProvider(provider);
    }

    public void setHasChildren(final Object elementOrTreePath, final boolean hasChildren) {
        if (this.checkBusy()) {
            return;
        }
        this.preservingSelection(new Runnable(){

            public void run() {
                if (TreeViewer.this.internalIsInputOrEmptyPath(elementOrTreePath)) {
                    if (hasChildren) {
                        TreeViewer.this.virtualLazyUpdateChildCount((Widget)TreeViewer.this.getTree(), TreeViewer.this.getChildren((Widget)TreeViewer.this.getTree()).length);
                    } else {
                        TreeViewer.this.setChildCount(elementOrTreePath, 0);
                    }
                    return;
                }
                Widget[] items = TreeViewer.this.internalFindItems(elementOrTreePath);
                int i = 0;
                while (i < items.length) {
                    TreeItem item = (TreeItem)items[i];
                    if (!hasChildren) {
                        item.setItemCount(0);
                    } else if (!item.getExpanded()) {
                        item.setItemCount(1);
                        TreeItem child = item.getItem(0);
                        if (child.getData() != null) {
                            TreeViewer.this.disassociate((Item)child);
                        }
                        item.clear(0, true);
                    } else {
                        TreeViewer.this.virtualLazyUpdateChildCount((Widget)item, item.getItemCount());
                    }
                    ++i;
                }
            }
        });
    }

    private void virtualLazyUpdateWidget(Widget widget, int index) {
        boolean oldBusy = this.isBusy();
        this.setBusy(false);
        try {
            if (this.contentProviderIsTreeBased) {
                TreePath treePath;
                if (widget instanceof Item) {
                    if (widget.getData() == null) {
                        return;
                    }
                    treePath = this.getTreePathFromItem((Item)widget);
                } else {
                    treePath = TreePath.EMPTY;
                }
                ((ILazyTreePathContentProvider)this.getContentProvider()).updateElement(treePath, index);
            } else {
                ((ILazyTreeContentProvider)this.getContentProvider()).updateElement(widget.getData(), index);
            }
        }
        finally {
            this.setBusy(oldBusy);
        }
    }

    private void virtualLazyUpdateChildCount(Widget widget, int currentChildCount) {
        boolean oldBusy = this.isBusy();
        this.setBusy(false);
        try {
            if (this.contentProviderIsTreeBased) {
                TreePath treePath = widget instanceof Item ? this.getTreePathFromItem((Item)widget) : TreePath.EMPTY;
                ((ILazyTreePathContentProvider)this.getContentProvider()).updateChildCount(treePath, currentChildCount);
            } else {
                ((ILazyTreeContentProvider)this.getContentProvider()).updateChildCount(widget.getData(), currentChildCount);
            }
        }
        finally {
            this.setBusy(oldBusy);
        }
    }

    private void virtualLazyUpdateHasChildren(Item item, int currentChildCount) {
        boolean oldBusy = this.isBusy();
        this.setBusy(false);
        try {
            if (this.contentProviderIsTreeBased) {
                TreePath treePath = this.getTreePathFromItem(item);
                if (currentChildCount == 0 || !((TreeItem)item).getExpanded()) {
                    ((ILazyTreePathContentProvider)this.getContentProvider()).updateHasChildren(treePath);
                } else {
                    ((ILazyTreePathContentProvider)this.getContentProvider()).updateChildCount(treePath, currentChildCount);
                }
            } else {
                ((ILazyTreeContentProvider)this.getContentProvider()).updateChildCount(item.getData(), currentChildCount);
            }
        }
        finally {
            this.setBusy(oldBusy);
        }
    }

    protected void disassociate(Item item) {
        if (this.contentProviderIsLazy) {
            item.setText(" ");
        }
        super.disassociate(item);
    }

    protected int doGetColumnCount() {
        return this.tree.getColumnCount();
    }

    public void setSelection(ISelection selection, boolean reveal) {
        super.setSelection(selection, reveal);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void editElement(Object element, int column) {
        if (element instanceof TreePath) {
            try {
                ViewerCell cell;
                ViewerRow row;
                this.getControl().setRedraw(false);
                this.setSelection(new TreeSelection((TreePath)element));
                TreeItem[] items = this.tree.getSelection();
                if (items.length != 1 || (row = this.getViewerRowFromItem((Widget)items[0])) == null || (cell = row.getCell(column)) == null) return;
                this.triggerEditorActivationEvent(new ColumnViewerEditorActivationEvent(cell));
                return;
            }
            finally {
                this.getControl().setRedraw(true);
            }
        } else {
            super.editElement(element, column);
        }
    }
}

