/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.viewers.ILabelProvider
 *  org.eclipse.swt.accessibility.Accessible
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableItem
 */
package org.eclipse.ui.dialogs;

import java.util.Comparator;
import java.util.HashSet;
import java.util.Vector;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.swt.accessibility.Accessible;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.ui.dialogs.TwoArrayQuickSorter;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.misc.StringMatcher;
import org.eclipse.ui.progress.WorkbenchJob;

public class FilteredList
extends Composite {
    private Table fList;
    ILabelProvider fLabelProvider;
    private boolean fMatchEmptyString = true;
    private boolean fIgnoreCase;
    private boolean fAllowDuplicates;
    private String fFilter = "";
    private TwoArrayQuickSorter fSorter;
    Object[] fElements = new Object[0];
    Label[] fLabels;
    Vector fImages = new Vector();
    int[] fFoldedIndices;
    int fFoldedCount;
    int[] fFilteredIndices;
    int fFilteredCount;
    private FilterMatcher fFilterMatcher = new DefaultFilterMatcher();
    Comparator fComparator;
    TableUpdateJob fUpdateJob;

    public FilteredList(Composite parent, int style, ILabelProvider labelProvider, boolean ignoreCase, boolean allowDuplicates, boolean matchEmptyString) {
        super(parent, 0);
        GridLayout layout = new GridLayout();
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        this.setLayout((Layout)layout);
        this.fList = new Table((Composite)this, style);
        this.fList.setLayoutData((Object)new GridData(1808));
        this.fList.setFont(parent.getFont());
        this.fList.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                FilteredList.this.fLabelProvider.dispose();
                if (FilteredList.this.fUpdateJob != null) {
                    FilteredList.this.fUpdateJob.cancel();
                }
            }
        });
        this.fLabelProvider = labelProvider;
        this.fIgnoreCase = ignoreCase;
        this.fSorter = new TwoArrayQuickSorter(new LabelComparator(ignoreCase));
        this.fAllowDuplicates = allowDuplicates;
        this.fMatchEmptyString = matchEmptyString;
    }

    public void setElements(Object[] elements) {
        if (elements == null) {
            this.fElements = new Object[0];
        } else {
            this.fElements = new Object[elements.length];
            System.arraycopy(elements, 0, this.fElements, 0, elements.length);
        }
        int length = this.fElements.length;
        this.fLabels = new Label[length];
        HashSet<Image> imageSet = new HashSet<Image>();
        int i = 0;
        while (i != length) {
            String text = this.fLabelProvider.getText(this.fElements[i]);
            Image image = this.fLabelProvider.getImage(this.fElements[i]);
            this.fLabels[i] = new Label(text, image);
            imageSet.add(image);
            ++i;
        }
        this.fImages.clear();
        this.fImages.addAll(imageSet);
        this.fSorter.sort(this.fLabels, this.fElements);
        this.fFilteredIndices = new int[length];
        this.fFoldedIndices = new int[length];
        this.updateList();
    }

    public boolean isEmpty() {
        return this.fElements == null || this.fElements.length == 0;
    }

    public void setFilterMatcher(FilterMatcher filterMatcher) {
        Assert.isNotNull((Object)filterMatcher);
        this.fFilterMatcher = filterMatcher;
    }

    public void setComparator(Comparator comparator) {
        Assert.isNotNull((Object)comparator);
        this.fComparator = comparator;
    }

    public void addSelectionListener(SelectionListener listener) {
        this.fList.addSelectionListener(listener);
    }

    public void removeSelectionListener(SelectionListener listener) {
        this.fList.removeSelectionListener(listener);
    }

    public void setSelection(int[] selection) {
        if (selection == null || selection.length == 0) {
            this.fList.deselectAll();
        } else if (this.fUpdateJob == null) {
            this.fList.setSelection(selection);
            this.fList.notifyListeners(13, new Event());
        } else {
            this.fUpdateJob.updateSelection(selection);
        }
    }

    public int[] getSelectionIndices() {
        return this.fList.getSelectionIndices();
    }

    public int getSelectionIndex() {
        return this.fList.getSelectionIndex();
    }

    public void setSelection(Object[] elements) {
        if (elements == null || elements.length == 0) {
            this.fList.deselectAll();
            return;
        }
        if (this.fElements == null) {
            return;
        }
        int[] indices = new int[elements.length];
        int i = 0;
        while (i != elements.length) {
            int j = 0;
            while (j != this.fFoldedCount) {
                int max = j == this.fFoldedCount - 1 ? this.fFilteredCount : this.fFoldedIndices[j + 1];
                int l = this.fFoldedIndices[j];
                while (l != max) {
                    if (this.fElements[this.fFilteredIndices[l]].equals(elements[i])) {
                        indices[i] = j;
                        break;
                    }
                    ++l;
                }
                if (l != max) break;
                ++j;
            }
            if (j == this.fFoldedCount) {
                indices[i] = 0;
            }
            ++i;
        }
        this.setSelection(indices);
    }

    public Object[] getSelection() {
        if (this.fList.isDisposed() || this.fList.getSelectionCount() == 0) {
            return new Object[0];
        }
        int[] indices = this.fList.getSelectionIndices();
        Object[] elements = new Object[indices.length];
        int i = 0;
        while (i != indices.length) {
            elements[i] = this.fElements[this.fFilteredIndices[this.fFoldedIndices[indices[i]]]];
            ++i;
        }
        return elements;
    }

    public void setFilter(String filter) {
        this.fFilter = filter == null ? "" : filter;
        this.updateList();
    }

    private void updateList() {
        this.fFilteredCount = this.filter();
        this.fFoldedCount = this.fold();
        if (this.fUpdateJob != null) {
            this.fUpdateJob.cancel();
        }
        this.fUpdateJob = new TableUpdateJob(this.fList, this.fFoldedCount);
        this.fUpdateJob.schedule();
    }

    public String getFilter() {
        return this.fFilter;
    }

    public Object[] getFoldedElements(int index) {
        if (index < 0 || index >= this.fFoldedCount) {
            return null;
        }
        int start = this.fFoldedIndices[index];
        int count = index == this.fFoldedCount - 1 ? this.fFilteredCount - start : this.fFoldedIndices[index + 1] - start;
        Object[] elements = new Object[count];
        int i = 0;
        while (i != count) {
            elements[i] = this.fElements[this.fFilteredIndices[start + i]];
            ++i;
        }
        return elements;
    }

    private int fold() {
        if (this.fAllowDuplicates) {
            int i = 0;
            while (i != this.fFilteredCount) {
                this.fFoldedIndices[i] = i;
                ++i;
            }
            return this.fFilteredCount;
        }
        int k = 0;
        Label last = null;
        int i = 0;
        while (i != this.fFilteredCount) {
            int j = this.fFilteredIndices[i];
            Label current = this.fLabels[j];
            if (!current.equals(last)) {
                this.fFoldedIndices[k] = i;
                ++k;
                last = current;
            }
            ++i;
        }
        return k;
    }

    private int filter() {
        if (!(this.fFilter != null && this.fFilter.length() != 0 || this.fMatchEmptyString)) {
            return 0;
        }
        this.fFilterMatcher.setFilter(this.fFilter.trim(), this.fIgnoreCase, false);
        int k = 0;
        int i = 0;
        while (i != this.fElements.length) {
            if (this.fFilterMatcher.match(this.fElements[i])) {
                this.fFilteredIndices[k++] = i;
            }
            ++i;
        }
        return k;
    }

    public boolean getAllowDuplicates() {
        return this.fAllowDuplicates;
    }

    public void setAllowDuplicates(boolean allowDuplicates) {
        this.fAllowDuplicates = allowDuplicates;
    }

    public boolean getIgnoreCase() {
        return this.fIgnoreCase;
    }

    public void setIgnoreCase(boolean ignoreCase) {
        this.fIgnoreCase = ignoreCase;
    }

    public boolean getMatchEmptyString() {
        return this.fMatchEmptyString;
    }

    public void setMatchEmptyString(boolean matchEmptyString) {
        this.fMatchEmptyString = matchEmptyString;
    }

    public ILabelProvider getLabelProvider() {
        return this.fLabelProvider;
    }

    public void setLabelProvider(ILabelProvider labelProvider) {
        this.fLabelProvider = labelProvider;
    }

    public Accessible getAccessible() {
        return this.fList.getAccessible();
    }

    private class DefaultFilterMatcher
    implements FilterMatcher {
        private StringMatcher fMatcher;

        private DefaultFilterMatcher() {
        }

        public void setFilter(String pattern, boolean ignoreCase, boolean ignoreWildCards) {
            this.fMatcher = new StringMatcher(String.valueOf(pattern) + '*', ignoreCase, ignoreWildCards);
        }

        public boolean match(Object element) {
            return this.fMatcher.match(FilteredList.this.fLabelProvider.getText(element));
        }
    }

    public static interface FilterMatcher {
        public void setFilter(String var1, boolean var2, boolean var3);

        public boolean match(Object var1);
    }

    private static class Label {
        public final String string;
        public final Image image;

        public Label(String newString, Image image) {
            this.string = newString == null ? "" : newString;
            this.image = image;
        }

        public boolean equals(Label label) {
            if (label == null) {
                return false;
            }
            if (this.string == null && label.string != null) {
                return false;
            }
            if (this.string != null && !this.string.equals(label.string)) {
                return false;
            }
            if (this.image == null) {
                return label.image == null;
            }
            return this.image.equals((Object)label.image);
        }
    }

    private final class LabelComparator
    implements Comparator {
        private boolean labelIgnoreCase;

        LabelComparator(boolean ignoreCase) {
            this.labelIgnoreCase = ignoreCase;
        }

        public int compare(Object left, Object right) {
            Label leftLabel = (Label)left;
            Label rightLabel = (Label)right;
            int value = FilteredList.this.fComparator == null ? (this.labelIgnoreCase ? leftLabel.string.compareToIgnoreCase(rightLabel.string) : leftLabel.string.compareTo(rightLabel.string)) : FilteredList.this.fComparator.compare(leftLabel.string, rightLabel.string);
            if (value != 0) {
                return value;
            }
            if (leftLabel.image == null) {
                return rightLabel.image == null ? 0 : -1;
            }
            if (rightLabel.image == null) {
                return 1;
            }
            return FilteredList.this.fImages.indexOf(leftLabel.image) - FilteredList.this.fImages.indexOf(rightLabel.image);
        }
    }

    private class TableUpdateJob
    extends WorkbenchJob {
        final Table fTable;
        final int fCount;
        private int currentIndex = 0;
        int[] indicesToSelect;
        private boolean readyForSelection = false;

        public TableUpdateJob(Table table, int count) {
            super(WorkbenchMessages.FilteredList_UpdateJobName);
            this.setSystem(true);
            this.fTable = table;
            this.fCount = count;
        }

        public IStatus runInUIThread(IProgressMonitor monitor) {
            if (this.fTable.isDisposed()) {
                return Status.CANCEL_STATUS;
            }
            int itemCount = this.fTable.getItemCount();
            if (this.fCount < itemCount) {
                this.fTable.setRedraw(false);
                this.fTable.remove(this.fCount, itemCount - 1);
                this.fTable.setRedraw(true);
                itemCount = this.fTable.getItemCount();
            }
            if (this.fCount == 0) {
                this.fTable.notifyListeners(13, new Event());
                return Status.OK_STATUS;
            }
            int iterations = Math.min(10, this.fCount - this.currentIndex);
            int i = 0;
            while (i < iterations) {
                if (monitor.isCanceled()) {
                    return Status.CANCEL_STATUS;
                }
                TableItem item = this.currentIndex < itemCount ? this.fTable.getItem(this.currentIndex) : new TableItem(this.fTable, 0);
                Label label = FilteredList.this.fLabels[FilteredList.this.fFilteredIndices[FilteredList.this.fFoldedIndices[this.currentIndex]]];
                item.setText(label.string);
                item.setImage(label.image);
                ++this.currentIndex;
                ++i;
            }
            if (monitor.isCanceled()) {
                return Status.CANCEL_STATUS;
            }
            if (this.currentIndex < this.fCount) {
                this.schedule(100L);
            } else {
                if (this.indicesToSelect == null) {
                    if (this.fCount > 0) {
                        if (this.fTable.getSelectionIndices().length == 0) {
                            this.defaultSelect();
                        } else {
                            this.fTable.notifyListeners(13, new Event());
                        }
                    }
                } else {
                    this.selectAndNotify(this.indicesToSelect);
                }
                this.readyForSelection = true;
            }
            return Status.OK_STATUS;
        }

        void updateSelection(int[] indices) {
            this.indicesToSelect = indices;
            if (this.readyForSelection) {
                this.selectAndNotify(indices);
            }
        }

        private void defaultSelect() {
            this.selectAndNotify(new int[1]);
        }

        private void selectAndNotify(int[] indices) {
            if (this.fTable.isDisposed()) {
                return;
            }
            this.fTable.setSelection(indices);
            this.fTable.notifyListeners(13, new Event());
        }
    }
}

