/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.jface.action.IStatusLineManager
 *  org.eclipse.jface.viewers.CellEditor
 *  org.eclipse.jface.viewers.CellEditor$LayoutData
 *  org.eclipse.jface.viewers.ICellEditorListener
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.swt.custom.TreeEditor
 *  org.eclipse.swt.events.ControlAdapter
 *  org.eclipse.swt.events.ControlEvent
 *  org.eclipse.swt.events.ControlListener
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.KeyAdapter
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.events.TreeEvent
 *  org.eclipse.swt.events.TreeListener
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Tree
 *  org.eclipse.swt.widgets.TreeColumn
 *  org.eclipse.swt.widgets.TreeItem
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.ui.views.properties;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.jface.action.IStatusLineManager;
import org.eclipse.jface.viewers.CellEditor;
import org.eclipse.jface.viewers.ICellEditorListener;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.swt.custom.TreeEditor;
import org.eclipse.swt.events.ControlAdapter;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.TreeEvent;
import org.eclipse.swt.events.TreeListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.TreeColumn;
import org.eclipse.swt.widgets.TreeItem;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.ui.internal.views.properties.PropertiesMessages;
import org.eclipse.ui.views.properties.ICellEditorActivationListener;
import org.eclipse.ui.views.properties.IPropertySheetEntry;
import org.eclipse.ui.views.properties.IPropertySheetEntryListener;
import org.eclipse.ui.views.properties.PropertySheetCategory;
import org.eclipse.ui.views.properties.PropertySheetEntry;
import org.eclipse.ui.views.properties.PropertySheetSorter;

class PropertySheetViewer
extends Viewer {
    private Object[] input;
    private IPropertySheetEntry rootEntry;
    private PropertySheetCategory[] categories;
    private Tree tree;
    private HashMap entryToItemMap = new HashMap();
    private TreeEditor treeEditor;
    private static String[] columnLabels = new String[]{PropertiesMessages.PropertyViewer_property, PropertiesMessages.PropertyViewer_value};
    private static String MISCELLANEOUS_CATEGORY_NAME = PropertiesMessages.PropertyViewer_misc;
    private int columnToEdit = 1;
    private CellEditor cellEditor;
    private IPropertySheetEntryListener entryListener;
    private ICellEditorListener editorListener;
    private boolean isShowingCategories = true;
    private boolean isShowingExpertProperties = false;
    private IStatusLineManager statusLineManager;
    private ListenerList activationListeners = new ListenerList();
    private PropertySheetSorter sorter = new PropertySheetSorter();

    public PropertySheetViewer(Composite parent) {
        this.tree = new Tree(parent, 98308);
        this.tree.setLinesVisible(true);
        this.tree.setHeaderVisible(true);
        this.addColumns();
        this.hookControl();
        this.treeEditor = new TreeEditor(this.tree);
        this.createEntryListener();
        this.createEditorListener();
    }

    private void activateCellEditor(TreeItem item) {
        this.tree.showSelection();
        IPropertySheetEntry activeEntry = (IPropertySheetEntry)item.getData();
        this.cellEditor = activeEntry.getEditor((Composite)this.tree);
        if (this.cellEditor == null) {
            return;
        }
        this.cellEditor.activate();
        Control control = this.cellEditor.getControl();
        if (control == null) {
            this.cellEditor.deactivate();
            this.cellEditor = null;
            return;
        }
        this.cellEditor.addListener(this.editorListener);
        CellEditor.LayoutData layout = this.cellEditor.getLayoutData();
        this.treeEditor.horizontalAlignment = layout.horizontalAlignment;
        this.treeEditor.grabHorizontal = layout.grabHorizontal;
        this.treeEditor.minimumWidth = layout.minimumWidth;
        this.treeEditor.setEditor(control, item, this.columnToEdit);
        this.setErrorMessage(this.cellEditor.getErrorMessage());
        this.cellEditor.setFocus();
        this.fireCellEditorActivated(this.cellEditor);
    }

    void addActivationListener(ICellEditorActivationListener listener) {
        this.activationListeners.add((Object)listener);
    }

    private void addColumns() {
        TreeColumn[] columns = this.tree.getColumns();
        int i = 0;
        while (i < columnLabels.length) {
            String string = columnLabels[i];
            if (string != null) {
                TreeColumn column = i < columns.length ? columns[i] : new TreeColumn(this.tree, 0);
                column.setText(string);
            }
            ++i;
        }
        this.tree.addControlListener((ControlListener)new ControlAdapter(){

            public void controlResized(ControlEvent e) {
                Rectangle area = PropertySheetViewer.this.tree.getClientArea();
                TreeColumn[] columns = PropertySheetViewer.this.tree.getColumns();
                if (area.width > 0) {
                    columns[0].setWidth(area.width * 40 / 100);
                    columns[1].setWidth(area.width - columns[0].getWidth() - 4);
                    PropertySheetViewer.this.tree.removeControlListener((ControlListener)this);
                }
            }
        });
    }

    private void applyEditorValue() {
        TreeItem treeItem = this.treeEditor.getItem();
        if (treeItem == null || treeItem.isDisposed()) {
            return;
        }
        IPropertySheetEntry entry = (IPropertySheetEntry)treeItem.getData();
        entry.applyEditorValue();
    }

    private void createChildren(Widget widget) {
        Object node;
        List children;
        TreeItem[] childItems = this.getChildItems(widget);
        if (childItems.length > 0) {
            Object data = childItems[0].getData();
            if (data != null) {
                return;
            }
            childItems[0].dispose();
        }
        if ((children = this.getChildren(node = widget.getData())).isEmpty()) {
            return;
        }
        int i = 0;
        while (i < children.size()) {
            this.createItem(children.get(i), widget, i);
            ++i;
        }
    }

    private void createEditorListener() {
        this.editorListener = new ICellEditorListener(){

            public void cancelEditor() {
                PropertySheetViewer.this.deactivateCellEditor();
            }

            public void editorValueChanged(boolean oldValidState, boolean newValidState) {
            }

            public void applyEditorValue() {
            }
        };
    }

    private void createEntryListener() {
        this.entryListener = new IPropertySheetEntryListener(){

            public void childEntriesChanged(IPropertySheetEntry entry) {
                if (entry == PropertySheetViewer.this.rootEntry) {
                    PropertySheetViewer.this.updateChildrenOf(entry, (Widget)PropertySheetViewer.this.tree);
                } else {
                    TreeItem item = PropertySheetViewer.this.findItem(entry);
                    if (item != null) {
                        PropertySheetViewer.this.updateChildrenOf(entry, (Widget)item);
                    }
                }
            }

            public void valueChanged(IPropertySheetEntry entry) {
                TreeItem item = PropertySheetViewer.this.findItem(entry);
                if (item != null) {
                    PropertySheetViewer.this.updateEntry(entry, item);
                }
            }

            public void errorMessageChanged(IPropertySheetEntry entry) {
                PropertySheetViewer.this.setErrorMessage(entry.getErrorText());
            }
        };
    }

    private void createItem(Object node, Widget parent, int index) {
        TreeItem item = parent instanceof TreeItem ? new TreeItem((TreeItem)parent, 0, index) : new TreeItem((Tree)parent, 0, index);
        item.setData(node);
        this.entryToItemMap.put(node, item);
        item.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                Object possibleEntry = e.widget.getData();
                if (possibleEntry != null) {
                    PropertySheetViewer.this.entryToItemMap.remove(possibleEntry);
                }
            }
        });
        if (node instanceof IPropertySheetEntry) {
            ((IPropertySheetEntry)node).addPropertySheetEntryListener(this.entryListener);
        }
        if (node instanceof IPropertySheetEntry) {
            this.updateEntry((IPropertySheetEntry)node, item);
        } else {
            this.updateCategory((PropertySheetCategory)node, item);
        }
    }

    void deactivateCellEditor() {
        this.treeEditor.setEditor(null, null, this.columnToEdit);
        if (this.cellEditor != null) {
            this.cellEditor.deactivate();
            this.fireCellEditorDeactivated(this.cellEditor);
            this.cellEditor.removeListener(this.editorListener);
            this.cellEditor = null;
        }
        this.setErrorMessage(null);
    }

    private void entrySelectionChanged() {
        SelectionChangedEvent changeEvent = new SelectionChangedEvent((ISelectionProvider)this, this.getSelection());
        this.fireSelectionChanged(changeEvent);
    }

    private TreeItem findItem(IPropertySheetEntry entry) {
        TreeItem[] items = this.tree.getItems();
        int i = 0;
        while (i < items.length) {
            TreeItem item = items[i];
            TreeItem findItem = this.findItem(entry, item);
            if (findItem != null) {
                return findItem;
            }
            ++i;
        }
        return null;
    }

    private TreeItem findItem(IPropertySheetEntry entry, TreeItem item) {
        Object mapItem = this.entryToItemMap.get(entry);
        if (mapItem != null && mapItem instanceof TreeItem) {
            return (TreeItem)mapItem;
        }
        if (entry == item.getData()) {
            return item;
        }
        TreeItem[] items = item.getItems();
        int i = 0;
        while (i < items.length) {
            TreeItem childItem = items[i];
            TreeItem findItem = this.findItem(entry, childItem);
            if (findItem != null) {
                return findItem;
            }
            ++i;
        }
        return null;
    }

    private void fireCellEditorActivated(CellEditor activatedCellEditor) {
        Object[] listeners = this.activationListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            ((ICellEditorActivationListener)listeners[i]).cellEditorActivated(activatedCellEditor);
            ++i;
        }
    }

    private void fireCellEditorDeactivated(CellEditor activatedCellEditor) {
        Object[] listeners = this.activationListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            ((ICellEditorActivationListener)listeners[i]).cellEditorDeactivated(activatedCellEditor);
            ++i;
        }
    }

    public CellEditor getActiveCellEditor() {
        return this.cellEditor;
    }

    private TreeItem[] getChildItems(Widget widget) {
        if (widget instanceof Tree) {
            return ((Tree)widget).getItems();
        }
        if (widget instanceof TreeItem) {
            return ((TreeItem)widget).getItems();
        }
        return new TreeItem[0];
    }

    private List getChildren(Object node) {
        IPropertySheetEntry entry = null;
        PropertySheetCategory category = null;
        if (node instanceof IPropertySheetEntry) {
            entry = (IPropertySheetEntry)node;
        } else {
            category = (PropertySheetCategory)node;
        }
        List children = category == null ? this.getChildren(entry) : this.getChildren(category);
        return children;
    }

    private List getChildren(IPropertySheetEntry entry) {
        if (entry == this.rootEntry && this.isShowingCategories && (this.categories.length > 1 || this.categories.length == 1 && !this.categories[0].getCategoryName().equals(MISCELLANEOUS_CATEGORY_NAME))) {
            return Arrays.asList(this.categories);
        }
        return this.getSortedEntries(this.getFilteredEntries(entry.getChildEntries()));
    }

    private List getChildren(PropertySheetCategory category) {
        return this.getSortedEntries(this.getFilteredEntries(category.getChildEntries()));
    }

    public Control getControl() {
        return this.tree;
    }

    private List getFilteredEntries(IPropertySheetEntry[] entries) {
        if (this.isShowingExpertProperties) {
            return Arrays.asList(entries);
        }
        ArrayList<IPropertySheetEntry> filteredEntries = new ArrayList<IPropertySheetEntry>(entries.length);
        int i = 0;
        while (i < entries.length) {
            IPropertySheetEntry entry = entries[i];
            if (entry != null) {
                String[] filters = entry.getFilters();
                boolean expert = false;
                if (filters != null) {
                    int j = 0;
                    while (j < filters.length) {
                        if (filters[j].equals("org.eclipse.ui.views.properties.expert")) {
                            expert = true;
                            break;
                        }
                        ++j;
                    }
                }
                if (!expert) {
                    filteredEntries.add(entry);
                }
            }
            ++i;
        }
        return filteredEntries;
    }

    private List getSortedEntries(List unsortedEntries) {
        IPropertySheetEntry[] propertySheetEntries = unsortedEntries.toArray(new IPropertySheetEntry[unsortedEntries.size()]);
        this.sorter.sort(propertySheetEntries);
        return Arrays.asList(propertySheetEntries);
    }

    public Object getInput() {
        return this.input;
    }

    public IPropertySheetEntry getRootEntry() {
        return this.rootEntry;
    }

    public ISelection getSelection() {
        if (this.tree.getSelectionCount() == 0) {
            return StructuredSelection.EMPTY;
        }
        TreeItem[] sel = this.tree.getSelection();
        ArrayList<Object> entries = new ArrayList<Object>(sel.length);
        int i = 0;
        while (i < sel.length) {
            TreeItem ti = sel[i];
            Object data = ti.getData();
            if (data instanceof IPropertySheetEntry) {
                entries.add(data);
            }
            ++i;
        }
        return new StructuredSelection(entries);
    }

    private void handleSelect(TreeItem selection) {
        if (this.cellEditor != null) {
            this.applyEditorValue();
            this.deactivateCellEditor();
        }
        if (selection == null) {
            this.setMessage(null);
            this.setErrorMessage(null);
        } else {
            Object object = selection.getData();
            if (object instanceof IPropertySheetEntry) {
                IPropertySheetEntry activeEntry = (IPropertySheetEntry)object;
                this.setMessage(activeEntry.getDescription());
                this.activateCellEditor(selection);
            }
        }
        this.entrySelectionChanged();
    }

    private void handleTreeCollapse(TreeEvent event) {
        if (this.cellEditor != null) {
            this.applyEditorValue();
            this.deactivateCellEditor();
        }
    }

    private void handleTreeExpand(TreeEvent event) {
        this.createChildren(event.item);
    }

    void hideCategories() {
        this.isShowingCategories = false;
        this.categories = null;
        this.refresh();
    }

    void hideExpert() {
        this.isShowingExpertProperties = false;
        this.refresh();
    }

    private void hookControl() {
        this.tree.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                if (PropertySheetViewer.this.cellEditor == null || !PropertySheetViewer.this.cellEditor.isActivated()) {
                    PropertySheetViewer.this.updateStatusLine(e.item);
                }
            }

            public void widgetDefaultSelected(SelectionEvent e) {
                if (e.item instanceof TreeItem) {
                    PropertySheetViewer.this.handleSelect((TreeItem)e.item);
                }
            }
        });
        this.tree.addMouseListener((MouseListener)new MouseAdapter(){

            public void mouseDown(MouseEvent event) {
                Point pt = new Point(event.x, event.y);
                TreeItem item = PropertySheetViewer.this.tree.getItem(pt);
                if (item != null) {
                    PropertySheetViewer.this.handleSelect(item);
                }
            }
        });
        this.tree.addTreeListener(new TreeListener(){

            public void treeExpanded(TreeEvent event) {
                PropertySheetViewer.this.handleTreeExpand(event);
            }

            public void treeCollapsed(TreeEvent event) {
                PropertySheetViewer.this.handleTreeCollapse(event);
            }
        });
        this.tree.addKeyListener((KeyListener)new KeyAdapter(){

            public void keyReleased(KeyEvent e) {
                if (e.character == '\u001b') {
                    PropertySheetViewer.this.deactivateCellEditor();
                } else if (e.keyCode == 0x100000E) {
                    PropertySheetViewer.this.setInput(PropertySheetViewer.this.getInput());
                }
            }
        });
    }

    protected void updateStatusLine(Widget item) {
        this.setMessage(null);
        this.setErrorMessage(null);
        if (item != null) {
            if (item.getData() instanceof PropertySheetEntry) {
                PropertySheetEntry psEntry = (PropertySheetEntry)item.getData();
                String desc = psEntry.getDescription();
                if (desc != null && desc.length() > 0) {
                    this.setMessage(psEntry.getDescription());
                } else {
                    this.setMessage(psEntry.getDisplayName());
                }
            } else if (item.getData() instanceof PropertySheetCategory) {
                PropertySheetCategory psCat = (PropertySheetCategory)item.getData();
                this.setMessage(psCat.getCategoryName());
            }
        }
    }

    public void refresh() {
        if (this.rootEntry != null) {
            this.updateChildrenOf(this.rootEntry, (Widget)this.tree);
        }
    }

    void removeActivationListener(ICellEditorActivationListener listener) {
        this.activationListeners.remove((Object)listener);
    }

    private void removeItem(TreeItem item) {
        Object data = item.getData();
        if (data instanceof IPropertySheetEntry) {
            ((IPropertySheetEntry)data).removePropertySheetEntryListener(this.entryListener);
        }
        item.setData(null);
        this.entryToItemMap.remove(data);
        item.dispose();
    }

    public void resetProperties() {
        IStructuredSelection selection = (IStructuredSelection)this.getSelection();
        Iterator itr = selection.iterator();
        while (itr.hasNext()) {
            ((IPropertySheetEntry)itr.next()).resetPropertyValue();
        }
    }

    private void setErrorMessage(String errorMessage) {
        if (this.statusLineManager != null) {
            this.statusLineManager.setErrorMessage(errorMessage);
        }
    }

    public void setInput(Object newInput) {
        this.applyEditorValue();
        this.deactivateCellEditor();
        this.input = (Object[])newInput;
        if (this.input == null) {
            this.input = new Object[0];
        }
        if (this.rootEntry != null) {
            this.rootEntry.setValues(this.input);
            this.updateChildrenOf(this.rootEntry, (Widget)this.tree);
        }
        this.updateStatusLine(null);
    }

    private void setMessage(String message) {
        if (this.statusLineManager != null) {
            this.statusLineManager.setMessage(message);
        }
    }

    public void setRootEntry(IPropertySheetEntry root) {
        if (this.rootEntry != null) {
            this.rootEntry.removePropertySheetEntryListener(this.entryListener);
        }
        this.rootEntry = root;
        this.tree.setData((Object)this.rootEntry);
        this.rootEntry.addPropertySheetEntryListener(this.entryListener);
        this.setInput(this.input);
    }

    public void setSelection(ISelection selection, boolean reveal) {
    }

    public void setSorter(PropertySheetSorter sorter) {
        if (sorter == null) {
            sorter = new PropertySheetSorter();
        }
        this.sorter = sorter;
    }

    public void setStatusLineManager(IStatusLineManager manager) {
        this.statusLineManager = manager;
    }

    void showCategories() {
        this.isShowingCategories = true;
        this.refresh();
    }

    void showExpert() {
        this.isShowingExpertProperties = true;
        this.refresh();
    }

    private void updateCategories() {
        List childEntries;
        if (this.categories == null) {
            this.categories = new PropertySheetCategory[0];
        }
        if ((childEntries = this.getFilteredEntries(this.rootEntry.getChildEntries())).size() == 0) {
            this.categories = new PropertySheetCategory[0];
            return;
        }
        HashMap<String, PropertySheetCategory> categoryCache = new HashMap<String, PropertySheetCategory>(this.categories.length * 2 + 1);
        int i = 0;
        while (i < this.categories.length) {
            this.categories[i].removeAllEntries();
            categoryCache.put(this.categories[i].getCategoryName(), this.categories[i]);
            ++i;
        }
        ArrayList<PropertySheetCategory> categoriesToRemove = new ArrayList<PropertySheetCategory>(Arrays.asList(this.categories));
        PropertySheetCategory misc = (PropertySheetCategory)categoryCache.get(MISCELLANEOUS_CATEGORY_NAME);
        if (misc == null) {
            misc = new PropertySheetCategory(MISCELLANEOUS_CATEGORY_NAME);
        }
        boolean addMisc = false;
        int i2 = 0;
        while (i2 < childEntries.size()) {
            IPropertySheetEntry childEntry = (IPropertySheetEntry)childEntries.get(i2);
            String categoryName = childEntry.getCategory();
            if (categoryName == null) {
                misc.addEntry(childEntry);
                addMisc = true;
                categoriesToRemove.remove(misc);
            } else {
                PropertySheetCategory category = (PropertySheetCategory)categoryCache.get(categoryName);
                if (category == null) {
                    category = new PropertySheetCategory(categoryName);
                    categoryCache.put(categoryName, category);
                } else {
                    categoriesToRemove.remove(category);
                }
                category.addEntry(childEntry);
            }
            ++i2;
        }
        if (addMisc) {
            categoryCache.put(MISCELLANEOUS_CATEGORY_NAME, misc);
        }
        ArrayList<PropertySheetCategory> categoryList = new ArrayList<PropertySheetCategory>();
        HashSet<String> seen = new HashSet<String>(childEntries.size());
        int i3 = 0;
        while (i3 < childEntries.size()) {
            IPropertySheetEntry childEntry = (IPropertySheetEntry)childEntries.get(i3);
            String categoryName = childEntry.getCategory();
            if (categoryName != null && !seen.contains(categoryName)) {
                seen.add(categoryName);
                PropertySheetCategory category = (PropertySheetCategory)categoryCache.get(categoryName);
                if (category != null) {
                    categoryList.add(category);
                }
            }
            ++i3;
        }
        if (addMisc && !seen.contains(MISCELLANEOUS_CATEGORY_NAME)) {
            categoryList.add(misc);
        }
        PropertySheetCategory[] categoryArray = categoryList.toArray(new PropertySheetCategory[categoryList.size()]);
        this.sorter.sort(categoryArray);
        this.categories = categoryArray;
    }

    private void updateCategory(PropertySheetCategory category, TreeItem item) {
        item.setData((Object)category);
        this.entryToItemMap.put(category, item);
        item.setText(0, category.getCategoryName());
        item.setText(1, "");
        if (category.getAutoExpand()) {
            this.createChildren((Widget)item);
            item.setExpanded(true);
            category.setAutoExpand(false);
        } else {
            this.updatePlus(category, item);
        }
    }

    private void updateChildrenOf(Object node, Widget widget) {
        IPropertySheetEntry entry = null;
        PropertySheetCategory category = null;
        if (node instanceof IPropertySheetEntry) {
            entry = (IPropertySheetEntry)node;
        } else {
            category = (PropertySheetCategory)node;
        }
        TreeItem[] childItems = this.getChildItems(widget);
        TreeItem item = null;
        if (widget instanceof TreeItem) {
            item = (TreeItem)widget;
        }
        if (item != null && !item.getExpanded()) {
            int i = 0;
            while (i < childItems.length) {
                if (childItems[i].getData() != null) {
                    this.removeItem(childItems[i]);
                }
                ++i;
            }
            if ((category != null || entry.hasChildEntries()) && (childItems = this.getChildItems(widget)).length == 0) {
                new TreeItem(item, 0);
            }
            return;
        }
        if (node == this.rootEntry && this.isShowingCategories) {
            this.updateCategories();
        }
        List children = this.getChildren(node);
        HashSet<Object> set = new HashSet<Object>(childItems.length * 2 + 1);
        int i = 0;
        while (i < childItems.length) {
            Object data = childItems[i].getData();
            if (data != null) {
                Object e = data;
                int ix = children.indexOf(e);
                if (ix < 0) {
                    this.removeItem(childItems[i]);
                } else {
                    set.add(e);
                }
            } else if (data == null) {
                childItems[i].dispose();
            }
            ++i;
        }
        int oldCnt = -1;
        if (widget == this.tree) {
            oldCnt = this.tree.getItemCount();
        }
        int newSize = children.size();
        int i2 = 0;
        while (i2 < newSize) {
            Object el = children.get(i2);
            if (!set.contains(el)) {
                this.createItem(el, widget, i2);
            }
            ++i2;
        }
        if (widget == this.tree && oldCnt == 0 && this.tree.getItemCount() == 1) {
            this.tree.setRedraw(false);
            this.tree.setRedraw(true);
        }
        childItems = this.getChildItems(widget);
        i2 = 0;
        while (i2 < newSize) {
            Object el = children.get(i2);
            if (el instanceof IPropertySheetEntry) {
                this.updateEntry((IPropertySheetEntry)el, childItems[i2]);
            } else {
                this.updateCategory((PropertySheetCategory)el, childItems[i2]);
                this.updateChildrenOf(el, (Widget)childItems[i2]);
            }
            ++i2;
        }
        this.entrySelectionChanged();
    }

    private void updateEntry(IPropertySheetEntry entry, TreeItem item) {
        item.setData((Object)entry);
        this.entryToItemMap.put(entry, item);
        item.setText(0, entry.getDisplayName());
        item.setText(1, entry.getValueAsString());
        Image image = entry.getImage();
        if (item.getImage(1) != image) {
            item.setImage(1, image);
        }
        this.updatePlus(entry, item);
    }

    private void updatePlus(Object node, TreeItem item) {
        IPropertySheetEntry entry = null;
        PropertySheetCategory category = null;
        if (node instanceof IPropertySheetEntry) {
            entry = (IPropertySheetEntry)node;
        } else {
            category = (PropertySheetCategory)node;
        }
        boolean hasPlus = item.getItemCount() > 0;
        boolean needsPlus = category != null || entry.hasChildEntries();
        boolean removeAll = false;
        boolean addDummy = false;
        if (hasPlus != needsPlus) {
            if (needsPlus) {
                addDummy = true;
            } else {
                removeAll = true;
            }
        }
        if (removeAll) {
            TreeItem[] items = item.getItems();
            int i = 0;
            while (i < items.length) {
                this.removeItem(items[i]);
                ++i;
            }
        }
        if (addDummy) {
            new TreeItem(item, 0);
        }
    }
}

