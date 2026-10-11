/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.swt.custom.TableTreeItem
 *  org.eclipse.swt.dnd.DragSource
 *  org.eclipse.swt.dnd.DragSourceListener
 *  org.eclipse.swt.dnd.DropTarget
 *  org.eclipse.swt.dnd.DropTargetListener
 *  org.eclipse.swt.dnd.Transfer
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Item
 *  org.eclipse.swt.widgets.TableItem
 *  org.eclipse.swt.widgets.TreeItem
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.viewers;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.internal.InternalPolicy;
import org.eclipse.jface.util.IOpenEventListener;
import org.eclipse.jface.util.OpenStrategy;
import org.eclipse.jface.util.Policy;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.jface.viewers.ContentViewer;
import org.eclipse.jface.viewers.CustomHashtable;
import org.eclipse.jface.viewers.DoubleClickEvent;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IColorProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.IDoubleClickListener;
import org.eclipse.jface.viewers.IElementComparer;
import org.eclipse.jface.viewers.IFontProvider;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.jface.viewers.IOpenListener;
import org.eclipse.jface.viewers.IPostSelectionProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.ITreePathLabelProvider;
import org.eclipse.jface.viewers.IViewerLabelProvider;
import org.eclipse.jface.viewers.LabelProviderChangedEvent;
import org.eclipse.jface.viewers.OpenEvent;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.StructuredViewerInternals;
import org.eclipse.jface.viewers.TreePath;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.jface.viewers.ViewerLabel;
import org.eclipse.jface.viewers.ViewerSorter;
import org.eclipse.swt.custom.TableTreeItem;
import org.eclipse.swt.dnd.DragSource;
import org.eclipse.swt.dnd.DragSourceListener;
import org.eclipse.swt.dnd.DropTarget;
import org.eclipse.swt.dnd.DropTargetListener;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.TreeItem;
import org.eclipse.swt.widgets.Widget;

public abstract class StructuredViewer
extends ContentViewer
implements IPostSelectionProvider {
    private CustomHashtable elementMap;
    private IElementComparer comparer;
    private ViewerComparator sorter;
    private List filters;
    private boolean preserveSelection = true;
    private boolean inChange;
    private boolean restoreSelection;
    private ListenerList doubleClickListeners = new ListenerList();
    private ListenerList openListeners = new ListenerList();
    private ListenerList postSelectionChangedListeners = new ListenerList();
    private ColorAndFontCollector colorAndFontCollector = new ColorAndFontCollector();
    private StructuredViewerInternals.AssociateListener associateListener;
    private static Widget[] NO_WIDGETS = new Widget[0];
    private boolean refreshOccurred;

    protected StructuredViewer() {
    }

    public void addDoubleClickListener(IDoubleClickListener listener) {
        this.doubleClickListeners.add((Object)listener);
    }

    public void addOpenListener(IOpenListener listener) {
        this.openListeners.add((Object)listener);
    }

    public void addPostSelectionChangedListener(ISelectionChangedListener listener) {
        this.postSelectionChangedListeners.add((Object)listener);
    }

    public void addDragSupport(int operations, Transfer[] transferTypes, DragSourceListener listener) {
        Control myControl = this.getControl();
        DragSource dragSource = new DragSource(myControl, operations);
        dragSource.setTransfer(transferTypes);
        dragSource.addDragListener(listener);
    }

    public void addDropSupport(int operations, Transfer[] transferTypes, DropTargetListener listener) {
        Control control = this.getControl();
        DropTarget dropTarget = new DropTarget(control, operations);
        dropTarget.setTransfer(transferTypes);
        dropTarget.addDropListener(listener);
    }

    public void addFilter(ViewerFilter filter) {
        if (this.filters == null) {
            this.filters = new ArrayList();
        }
        this.filters.add(filter);
        this.refresh();
    }

    protected void assertElementsNotNull(Object[] elements) {
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
                    String message = "Sibling elements in viewer must not be equal:\n  " + old + ",\n  " + element;
                    Policy.getLog().log((IStatus)new Status(2, "org.eclipse.jface", message, (Throwable)new RuntimeException()));
                    return;
                }
                ++i2;
            }
        }
    }

    protected void associate(Object element, Item item) {
        Object data = item.getData();
        if (data != element) {
            if (data != null) {
                this.disassociate(item);
            }
            item.setData(element);
            this.mapElement(element, (Widget)item);
        } else {
            this.mapElement(element, (Widget)item);
        }
        if (this.associateListener != null) {
            this.associateListener.associate(element, item);
        }
    }

    protected void disassociate(Item item) {
        if (this.associateListener != null) {
            this.associateListener.disassociate(item);
        }
        Object element = item.getData();
        Assert.isNotNull((Object)element);
        this.unmapElement(element, (Widget)item);
        item.setData(null);
    }

    protected abstract Widget doFindInputItem(Object var1);

    protected abstract Widget doFindItem(Object var1);

    protected abstract void doUpdateItem(Widget var1, Object var2, boolean var3);

    protected boolean equals(Object elementA, Object elementB) {
        if (this.comparer == null) {
            return elementA == null ? elementB == null : elementA.equals(elementB);
        }
        return elementA == null ? elementB == null : this.comparer.equals(elementA, elementB);
    }

    protected Object[] filter(Object[] elements) {
        if (this.filters != null) {
            ArrayList<Object> filtered = new ArrayList<Object>(elements.length);
            Object root = this.getRoot();
            int i = 0;
            while (i < elements.length) {
                boolean add = true;
                int j = 0;
                while (j < this.filters.size()) {
                    add = ((ViewerFilter)this.filters.get(j)).select(this, root, elements[i]);
                    if (!add) break;
                    ++j;
                }
                if (add) {
                    filtered.add(elements[i]);
                } else if (this.associateListener != null) {
                    this.associateListener.filteredOut(elements[i]);
                }
                ++i;
            }
            return filtered.toArray();
        }
        return elements;
    }

    protected final Widget findItem(Object element) {
        Widget[] result = this.findItems(element);
        return result.length == 0 ? null : result[0];
    }

    protected final Widget[] findItems(Object element) {
        Widget[] widgetArray;
        Widget result = this.doFindInputItem(element);
        if (result != null) {
            return new Widget[]{result};
        }
        if (this.usingElementMap()) {
            Object widgetOrWidgets = this.elementMap.get(element);
            if (widgetOrWidgets == null) {
                return NO_WIDGETS;
            }
            if (widgetOrWidgets instanceof Widget) {
                return new Widget[]{(Widget)widgetOrWidgets};
            }
            return (Widget[])widgetOrWidgets;
        }
        result = this.doFindItem(element);
        if (result == null) {
            widgetArray = NO_WIDGETS;
        } else {
            Widget[] widgetArray2 = new Widget[1];
            widgetArray = widgetArray2;
            widgetArray2[0] = result;
        }
        return widgetArray;
    }

    protected void fireDoubleClick(final DoubleClickEvent event) {
        Object[] listeners = this.doubleClickListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            final IDoubleClickListener l = (IDoubleClickListener)listeners[i];
            SafeRunnable.run(new SafeRunnable(){

                public void run() {
                    l.doubleClick(event);
                }
            });
            ++i;
        }
    }

    protected void fireOpen(final OpenEvent event) {
        Object[] listeners = this.openListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            final IOpenListener l = (IOpenListener)listeners[i];
            SafeRunnable.run(new SafeRunnable(){

                public void run() {
                    l.open(event);
                }
            });
            ++i;
        }
    }

    protected void firePostSelectionChanged(final SelectionChangedEvent event) {
        Object[] listeners = this.postSelectionChangedListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            final ISelectionChangedListener l = (ISelectionChangedListener)listeners[i];
            SafeRunnable.run(new SafeRunnable(){

                public void run() {
                    l.selectionChanged(event);
                }
            });
            ++i;
        }
    }

    public IElementComparer getComparer() {
        return this.comparer;
    }

    protected Object[] getFilteredChildren(Object parent) {
        Object[] result = this.getRawChildren(parent);
        if (this.filters != null) {
            Iterator iter = this.filters.iterator();
            while (iter.hasNext()) {
                ViewerFilter f = (ViewerFilter)iter.next();
                Object[] filteredResult = f.filter((Viewer)this, parent, result);
                if (this.associateListener != null && filteredResult.length != result.length) {
                    this.notifyFilteredOut(result, filteredResult);
                }
                result = filteredResult;
            }
        }
        return result;
    }

    private void notifyFilteredOut(Object[] rawResult, Object[] filteredResult) {
        int rawIndex = 0;
        int filteredIndex = 0;
        while (filteredIndex < filteredResult.length) {
            if (rawResult[rawIndex] != filteredResult[filteredIndex]) {
                this.associateListener.filteredOut(rawResult[rawIndex++]);
                continue;
            }
            ++rawIndex;
            ++filteredIndex;
        }
        while (rawIndex < rawResult.length) {
            this.associateListener.filteredOut(rawResult[rawIndex]);
            ++rawIndex;
        }
    }

    public ViewerFilter[] getFilters() {
        if (this.filters == null) {
            return new ViewerFilter[0];
        }
        ViewerFilter[] result = new ViewerFilter[this.filters.size()];
        this.filters.toArray(result);
        return result;
    }

    protected Item getItem(int x, int y) {
        return null;
    }

    protected Object[] getRawChildren(Object parent) {
        IStructuredContentProvider cp;
        Object[] result = null;
        if (parent != null && (cp = (IStructuredContentProvider)this.getContentProvider()) != null) {
            result = cp.getElements(parent);
            this.assertElementsNotNull(result);
        }
        return result != null ? result : new Object[]{};
    }

    protected Object getRoot() {
        return this.getInput();
    }

    public ISelection getSelection() {
        Control control = this.getControl();
        if (control == null || control.isDisposed()) {
            return StructuredSelection.EMPTY;
        }
        List list = this.getSelectionFromWidget();
        return new StructuredSelection(list, this.comparer);
    }

    protected abstract List getSelectionFromWidget();

    protected Object[] getSortedChildren(Object parent) {
        Object[] result = this.getFilteredChildren(parent);
        if (this.sorter != null) {
            result = (Object[])result.clone();
            this.sorter.sort(this, result);
        }
        return result;
    }

    public ViewerSorter getSorter() {
        if (this.sorter instanceof ViewerSorter) {
            return (ViewerSorter)this.sorter;
        }
        return null;
    }

    public ViewerComparator getComparator() {
        return this.sorter;
    }

    protected void handleDoubleSelect(SelectionEvent event) {
        Control control = this.getControl();
        if (control != null && !control.isDisposed()) {
            ISelection selection;
            if (event.item != null && event.item.getData() != null) {
                selection = new StructuredSelection(event.item.getData());
            } else {
                selection = this.getSelection();
                this.updateSelection(selection);
            }
            this.fireDoubleClick(new DoubleClickEvent(this, selection));
        }
    }

    protected void handleOpen(SelectionEvent event) {
        Control control = this.getControl();
        if (control != null && !control.isDisposed()) {
            ISelection selection = this.getSelection();
            this.fireOpen(new OpenEvent(this, selection));
        }
    }

    protected void handleInvalidSelection(ISelection invalidSelection, ISelection newSelection) {
        this.updateSelection(newSelection);
        SelectionChangedEvent event = new SelectionChangedEvent(this, newSelection);
        this.firePostSelectionChanged(event);
    }

    protected void handleLabelProviderChanged(LabelProviderChangedEvent event) {
        Object[] elements = event.getElements();
        if (elements != null) {
            this.update(elements, (String[])null);
        } else {
            super.handleLabelProviderChanged(event);
        }
    }

    protected void handleSelect(SelectionEvent event) {
        Control control = this.getControl();
        if (control != null && !control.isDisposed()) {
            this.updateSelection(this.getSelection());
        }
    }

    protected void handlePostSelect(SelectionEvent e) {
        SelectionChangedEvent event = new SelectionChangedEvent(this, this.getSelection());
        this.firePostSelectionChanged(event);
    }

    protected void hookControl(Control control) {
        super.hookControl(control);
        OpenStrategy handler = new OpenStrategy(control);
        handler.addSelectionListener(new SelectionListener(){

            public void widgetSelected(SelectionEvent e) {
                if (!StructuredViewer.this.inChange) {
                    StructuredViewer.this.handleSelect(e);
                }
            }

            public void widgetDefaultSelected(SelectionEvent e) {
                StructuredViewer.this.handleDoubleSelect(e);
            }
        });
        handler.addPostSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                StructuredViewer.this.handlePostSelect(e);
            }
        });
        handler.addOpenListener(new IOpenEventListener(){

            public void handleOpen(SelectionEvent e) {
                StructuredViewer.this.handleOpen(e);
            }
        });
    }

    protected boolean hasFilters() {
        return this.filters != null && this.filters.size() > 0;
    }

    protected abstract void internalRefresh(Object var1);

    protected void internalRefresh(Object element, boolean updateLabels) {
        this.internalRefresh(element);
    }

    protected void mapElement(Object element, Widget item) {
        if (this.elementMap != null) {
            Object widgetOrWidgets = this.elementMap.get(element);
            if (widgetOrWidgets == null) {
                this.elementMap.put(element, item);
            } else if (widgetOrWidgets instanceof Widget) {
                if (widgetOrWidgets != item) {
                    this.elementMap.put(element, new Widget[]{(Widget)widgetOrWidgets, item});
                }
            } else {
                Widget[] widgets = (Widget[])widgetOrWidgets;
                int indexOfItem = Arrays.asList(widgets).indexOf(item);
                if (indexOfItem == -1) {
                    int length = widgets.length;
                    Widget[] widgetArray = widgets;
                    widgets = new Widget[length + 1];
                    System.arraycopy(widgetArray, 0, widgets, 0, length);
                    widgets[length] = item;
                    this.elementMap.put(element, widgets);
                }
            }
        }
    }

    protected boolean needsRefilter(Object element, String property) {
        if (this.sorter != null && this.sorter.isSorterProperty(element, property)) {
            return true;
        }
        if (this.filters != null) {
            int i = 0;
            int n = this.filters.size();
            while (i < n) {
                ViewerFilter filter = (ViewerFilter)this.filters.get(i);
                if (filter.isFilterProperty(element, property)) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    CustomHashtable newHashtable(int capacity) {
        return new CustomHashtable(capacity, this.getComparer());
    }

    protected void preservingSelection(Runnable updateCode) {
        this.preservingSelection(updateCode, false);
    }

    void preservingSelection(Runnable updateCode, boolean reveal) {
        if (!this.preserveSelection) {
            return;
        }
        ISelection oldSelection = null;
        try {
            oldSelection = this.getSelection();
            this.restoreSelection = true;
            this.inChange = true;
            updateCode.run();
        }
        finally {
            ISelection newSelection;
            this.inChange = false;
            if (this.restoreSelection) {
                this.setSelectionToWidget(oldSelection, reveal);
            }
            if (!(newSelection = this.getSelection()).equals(oldSelection)) {
                this.handleInvalidSelection(oldSelection, newSelection);
            }
        }
    }

    public void refresh() {
        this.refresh(this.getRoot());
    }

    public void refresh(boolean updateLabels) {
        this.refresh(this.getRoot(), updateLabels);
    }

    public void refresh(final Object element) {
        this.preservingSelection(new Runnable(){

            public void run() {
                StructuredViewer.this.internalRefresh(element);
            }
        });
    }

    public void refresh(final Object element, final boolean updateLabels) {
        this.preservingSelection(new Runnable(){

            public void run() {
                StructuredViewer.this.internalRefresh(element, updateLabels);
            }
        });
    }

    protected final void refreshItem(Widget widget, Object element) {
        SafeRunnable.run(new UpdateItemSafeRunnable(widget, element, true));
    }

    public void removeOpenListener(IOpenListener listener) {
        this.openListeners.remove((Object)listener);
    }

    public void removePostSelectionChangedListener(ISelectionChangedListener listener) {
        this.postSelectionChangedListeners.remove((Object)listener);
    }

    public void removeDoubleClickListener(IDoubleClickListener listener) {
        this.doubleClickListeners.remove((Object)listener);
    }

    public void removeFilter(ViewerFilter filter) {
        Assert.isNotNull((Object)filter);
        if (this.filters != null) {
            Iterator i = this.filters.iterator();
            while (i.hasNext()) {
                Object o = i.next();
                if (o != filter) continue;
                i.remove();
                this.refresh();
                if (this.filters.size() == 0) {
                    this.filters = null;
                }
                return;
            }
        }
    }

    void setAssociateListener(StructuredViewerInternals.AssociateListener l) {
        this.associateListener = l;
    }

    public void setFilters(ViewerFilter[] filters) {
        if (filters.length == 0) {
            this.resetFilters();
        } else {
            this.filters = new ArrayList<ViewerFilter>(Arrays.asList(filters));
            this.refresh();
        }
    }

    public void resetFilters() {
        if (this.filters != null) {
            this.filters = null;
            this.refresh();
        }
    }

    public abstract void reveal(Object var1);

    public void setContentProvider(IContentProvider provider) {
        this.assertContentProviderType(provider);
        super.setContentProvider(provider);
    }

    protected void assertContentProviderType(IContentProvider provider) {
        Assert.isTrue((boolean)(provider instanceof IStructuredContentProvider));
    }

    public final void setInput(Object input) {
        Control control = this.getControl();
        if (control == null || control.isDisposed()) {
            throw new IllegalStateException("Need an underlying widget to be able to set the input.(Has the widget been disposed?)");
        }
        this.unmapAllElements();
        super.setInput(input);
    }

    public void setSelection(ISelection selection, boolean reveal) {
        Control control = this.getControl();
        if (control == null || control.isDisposed()) {
            return;
        }
        if (!this.inChange) {
            this.setSelectionToWidget(selection, reveal);
            ISelection sel = this.getSelection();
            this.updateSelection(sel);
            this.firePostSelectionChanged(new SelectionChangedEvent(this, sel));
        } else {
            this.restoreSelection = false;
            this.setSelectionToWidget(selection, reveal);
        }
    }

    protected abstract void setSelectionToWidget(List var1, boolean var2);

    protected void setSelectionToWidget(ISelection selection, boolean reveal) {
        if (selection instanceof IStructuredSelection) {
            this.setSelectionToWidget(((IStructuredSelection)selection).toList(), reveal);
        } else {
            this.setSelectionToWidget((List)null, reveal);
        }
    }

    public void setSorter(ViewerSorter sorter) {
        if (this.sorter != sorter) {
            this.sorter = sorter;
            this.refresh();
        }
    }

    public void setComparator(ViewerComparator comparator) {
        if (this.sorter != comparator) {
            this.sorter = comparator;
            this.refresh();
        }
    }

    public void setUseHashlookup(boolean enable) {
        Assert.isTrue((this.getInput() == null ? 1 : 0) != 0, (String)"Can only enable the hash look up before input has been set");
        this.elementMap = enable ? this.newHashtable(13) : null;
    }

    public void setComparer(IElementComparer comparer) {
        this.comparer = comparer;
        if (this.elementMap != null) {
            this.elementMap = new CustomHashtable(this.elementMap, comparer);
        }
    }

    void setPreserveSelection(boolean preserve) {
        this.preserveSelection = preserve;
    }

    boolean getPreserveSelection() {
        return this.preserveSelection;
    }

    public Widget testFindItem(Object element) {
        return this.findItem(element);
    }

    public Widget[] testFindItems(Object element) {
        return this.findItems(element);
    }

    protected void unmapAllElements() {
        if (this.elementMap != null) {
            this.elementMap = this.newHashtable(13);
        }
    }

    protected void unmapElement(Object element) {
        if (this.elementMap != null) {
            this.elementMap.remove(element);
        }
    }

    protected void unmapElement(Object element, Widget item) {
        if (this.elementMap != null) {
            Object widgetOrWidgets = this.elementMap.get(element);
            if (widgetOrWidgets == null) {
                return;
            }
            if (widgetOrWidgets instanceof Widget) {
                if (item == widgetOrWidgets) {
                    this.elementMap.remove(element);
                }
            } else {
                Widget[] widgets = (Widget[])widgetOrWidgets;
                int indexOfItem = Arrays.asList(widgets).indexOf(item);
                if (indexOfItem == -1) {
                    return;
                }
                int length = widgets.length;
                if (indexOfItem == 0) {
                    if (length == 1) {
                        this.elementMap.remove(element);
                    } else {
                        Widget[] updatedWidgets = new Widget[length - 1];
                        System.arraycopy(widgets, 1, updatedWidgets, 0, length - 1);
                        this.elementMap.put(element, updatedWidgets);
                    }
                } else {
                    Widget[] updatedWidgets = new Widget[length - 1];
                    System.arraycopy(widgets, 0, updatedWidgets, 0, indexOfItem);
                    System.arraycopy(widgets, indexOfItem + 1, updatedWidgets, indexOfItem, length - indexOfItem - 1);
                    this.elementMap.put(element, updatedWidgets);
                }
            }
        }
    }

    public void update(Object[] elements, String[] properties) {
        boolean previousValue = this.refreshOccurred;
        this.refreshOccurred = false;
        try {
            int i = 0;
            while (i < elements.length) {
                this.update(elements[i], properties);
                if (this.refreshOccurred) {
                    return;
                }
                ++i;
            }
        }
        finally {
            this.refreshOccurred = previousValue;
        }
    }

    public void update(Object element, String[] properties) {
        Assert.isNotNull((Object)element);
        Widget[] items = this.findItems(element);
        boolean mayExitEarly = !this.refreshOccurred;
        int i = 0;
        while (i < items.length) {
            this.internalUpdate(items[i], element, properties);
            if (mayExitEarly && this.refreshOccurred) {
                return;
            }
            ++i;
        }
    }

    protected void internalUpdate(Widget widget, Object element, String[] properties) {
        boolean needsUpdate;
        boolean needsRefilter = false;
        if (properties != null) {
            int i = 0;
            while (i < properties.length) {
                needsRefilter = this.needsRefilter(element, properties[i]);
                if (needsRefilter) break;
                ++i;
            }
        }
        if (needsRefilter) {
            this.preservingSelection(new Runnable(){

                public void run() {
                    StructuredViewer.this.internalRefresh(StructuredViewer.this.getRoot());
                    StructuredViewer.this.refreshOccurred = true;
                }
            });
            return;
        }
        if (properties == null) {
            needsUpdate = true;
        } else {
            needsUpdate = false;
            IBaseLabelProvider labelProvider = this.getLabelProvider();
            int i = 0;
            while (i < properties.length) {
                needsUpdate = labelProvider.isLabelProperty(element, properties[i]);
                if (needsUpdate) break;
                ++i;
            }
        }
        if (needsUpdate) {
            this.updateItem(widget, element);
        }
    }

    protected final void updateItem(Widget widget, Object element) {
        SafeRunnable.run(new UpdateItemSafeRunnable(widget, element, true));
    }

    protected void updateSelection(ISelection selection) {
        SelectionChangedEvent event = new SelectionChangedEvent(this, selection);
        this.fireSelectionChanged(event);
    }

    protected boolean usingElementMap() {
        return this.elementMap != null;
    }

    public void setLabelProvider(IBaseLabelProvider labelProvider) {
        this.colorAndFontCollector = labelProvider instanceof IColorProvider || labelProvider instanceof IFontProvider ? new ColorAndFontCollectorWithProviders(labelProvider) : new ColorAndFontCollector();
        super.setLabelProvider(labelProvider);
    }

    protected void buildLabel(ViewerLabel updateLabel, Object element) {
        if (this.getLabelProvider() instanceof IViewerLabelProvider) {
            IViewerLabelProvider itemProvider = (IViewerLabelProvider)this.getLabelProvider();
            itemProvider.updateLabel(updateLabel, element);
            this.colorAndFontCollector.setUsedDecorators();
            if (updateLabel.hasNewBackground()) {
                this.colorAndFontCollector.setBackground(updateLabel.getBackground());
            }
            if (updateLabel.hasNewForeground()) {
                this.colorAndFontCollector.setForeground(updateLabel.getForeground());
            }
            if (updateLabel.hasNewFont()) {
                this.colorAndFontCollector.setFont(updateLabel.getFont());
            }
            return;
        }
        if (this.getLabelProvider() instanceof ILabelProvider) {
            ILabelProvider labelProvider = (ILabelProvider)this.getLabelProvider();
            updateLabel.setText(labelProvider.getText(element));
            updateLabel.setImage(labelProvider.getImage(element));
        }
    }

    void buildLabel(ViewerLabel updateLabel, Object element, IViewerLabelProvider labelProvider) {
        labelProvider.updateLabel(updateLabel, element);
        this.colorAndFontCollector.setUsedDecorators();
        if (updateLabel.hasNewBackground()) {
            this.colorAndFontCollector.setBackground(updateLabel.getBackground());
        }
        if (updateLabel.hasNewForeground()) {
            this.colorAndFontCollector.setForeground(updateLabel.getForeground());
        }
        if (updateLabel.hasNewFont()) {
            this.colorAndFontCollector.setFont(updateLabel.getFont());
        }
    }

    void buildLabel(ViewerLabel updateLabel, TreePath elementPath, ITreePathLabelProvider labelProvider) {
        labelProvider.updateLabel(updateLabel, elementPath);
        this.colorAndFontCollector.setUsedDecorators();
        if (updateLabel.hasNewBackground()) {
            this.colorAndFontCollector.setBackground(updateLabel.getBackground());
        }
        if (updateLabel.hasNewForeground()) {
            this.colorAndFontCollector.setForeground(updateLabel.getForeground());
        }
        if (updateLabel.hasNewFont()) {
            this.colorAndFontCollector.setFont(updateLabel.getFont());
        }
    }

    void buildLabel(ViewerLabel updateLabel, Object element, ILabelProvider labelProvider) {
        updateLabel.setText(labelProvider.getText(element));
        updateLabel.setImage(labelProvider.getImage(element));
    }

    protected ColorAndFontCollector getColorAndFontCollector() {
        return this.colorAndFontCollector;
    }

    protected void handleDispose(DisposeEvent event) {
        super.handleDispose(event);
        this.sorter = null;
        this.comparer = null;
        if (this.filters != null) {
            this.filters.clear();
        }
        this.elementMap = this.newHashtable(1);
        this.openListeners.clear();
        this.doubleClickListeners.clear();
        this.colorAndFontCollector.clear();
        this.postSelectionChangedListeners.clear();
    }

    protected class ColorAndFontCollector {
        Color foreground = null;
        Color background = null;
        Font font = null;
        boolean usedDecorators = false;

        public void clear() {
            this.foreground = null;
            this.background = null;
            this.font = null;
            this.usedDecorators = false;
        }

        public void setFontsAndColors(Object element) {
        }

        public void setUsedDecorators() {
            this.usedDecorators = true;
        }

        public void applyFontsAndColors(TableItem control) {
            if (this.usedDecorators) {
                if (this.background != null) {
                    control.setBackground(this.background);
                }
                if (this.foreground != null) {
                    control.setForeground(this.foreground);
                }
                if (this.font != null) {
                    control.setFont(this.font);
                }
            }
            this.clear();
        }

        public void applyFontsAndColors(TreeItem control) {
            if (this.usedDecorators) {
                if (this.background != null) {
                    control.setBackground(this.background);
                }
                if (this.foreground != null) {
                    control.setForeground(this.foreground);
                }
                if (this.font != null) {
                    control.setFont(this.font);
                }
            }
            this.clear();
        }

        public void applyFontsAndColors(TableTreeItem control) {
            if (this.usedDecorators) {
                if (this.background != null) {
                    control.setBackground(this.background);
                }
                if (this.foreground != null) {
                    control.setForeground(this.foreground);
                }
                if (this.font != null) {
                    control.setFont(this.font);
                }
            }
            this.clear();
        }

        public void setBackground(Color background) {
            this.background = background;
        }

        public void setFont(Font font) {
            this.font = font;
        }

        public void setForeground(Color foreground) {
            this.foreground = foreground;
        }
    }

    protected class ColorAndFontCollectorWithProviders
    extends ColorAndFontCollector {
        IColorProvider colorProvider;
        IFontProvider fontProvider;

        public ColorAndFontCollectorWithProviders(IBaseLabelProvider provider) {
            if (provider instanceof IColorProvider) {
                this.colorProvider = (IColorProvider)((Object)provider);
            }
            if (provider instanceof IFontProvider) {
                this.fontProvider = (IFontProvider)((Object)provider);
            }
        }

        public void setFontsAndColors(Object element) {
            if (this.fontProvider != null && this.font == null) {
                this.font = this.fontProvider.getFont(element);
            }
            if (this.colorProvider == null) {
                return;
            }
            if (this.background == null) {
                this.background = this.colorProvider.getBackground(element);
            }
            if (this.foreground == null) {
                this.foreground = this.colorProvider.getForeground(element);
            }
        }

        public void applyFontsAndColors(TableItem control) {
            if (this.colorProvider == null) {
                if (this.usedDecorators) {
                    if (this.background != null) {
                        control.setBackground(this.background);
                    }
                    if (this.foreground != null) {
                        control.setForeground(this.foreground);
                    }
                }
            } else {
                control.setBackground(this.background);
                control.setForeground(this.foreground);
            }
            if (this.fontProvider == null) {
                if (this.usedDecorators && this.font != null) {
                    control.setFont(this.font);
                }
            } else {
                control.setFont(this.font);
            }
            this.clear();
        }

        public void applyFontsAndColors(TreeItem control) {
            if (this.colorProvider == null) {
                if (this.usedDecorators) {
                    if (this.background != null) {
                        control.setBackground(this.background);
                    }
                    if (this.foreground != null) {
                        control.setForeground(this.foreground);
                    }
                }
            } else {
                control.setBackground(this.background);
                control.setForeground(this.foreground);
            }
            if (this.fontProvider == null) {
                if (this.usedDecorators && this.font != null) {
                    control.setFont(this.font);
                }
            } else {
                control.setFont(this.font);
            }
            this.clear();
        }

        public void applyFontsAndColors(TableTreeItem control) {
            if (this.colorProvider == null) {
                if (this.usedDecorators) {
                    if (this.background != null) {
                        control.setBackground(this.background);
                    }
                    if (this.foreground != null) {
                        control.setForeground(this.foreground);
                    }
                }
            } else {
                control.setBackground(this.background);
                control.setForeground(this.foreground);
            }
            if (this.fontProvider == null) {
                if (this.usedDecorators && this.font != null) {
                    control.setFont(this.font);
                }
            } else {
                control.setFont(this.font);
            }
            this.clear();
        }
    }

    class UpdateItemSafeRunnable
    extends SafeRunnable {
        private Widget widget;
        private Object element;
        private boolean fullMap;

        UpdateItemSafeRunnable(Widget widget, Object element, boolean fullMap) {
            this.widget = widget;
            this.element = element;
            this.fullMap = fullMap;
        }

        public void run() {
            StructuredViewer.this.doUpdateItem(this.widget, this.element, this.fullMap);
        }
    }
}

