/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Table
 */
package org.eclipse.jface.viewers.deferred;

import java.util.Comparator;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.AcceptAllFilter;
import org.eclipse.jface.viewers.IFilter;
import org.eclipse.jface.viewers.ILazyContentProvider;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.deferred.AbstractVirtualTable;
import org.eclipse.jface.viewers.deferred.BackgroundContentProvider;
import org.eclipse.jface.viewers.deferred.IConcurrentModel;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Table;

public class DeferredContentProvider
implements ILazyContentProvider {
    private int limit = -1;
    private BackgroundContentProvider provider;
    private Comparator sortOrder;
    private IFilter filter = AcceptAllFilter.getInstance();
    private AbstractVirtualTable table;

    public DeferredContentProvider(Comparator sortOrder) {
        this.sortOrder = sortOrder;
    }

    public void dispose() {
        this.setProvider(null);
    }

    public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
        if (newInput == null) {
            this.setProvider(null);
            return;
        }
        Assert.isTrue((boolean)(newInput instanceof IConcurrentModel));
        Assert.isTrue((boolean)(viewer instanceof TableViewer));
        IConcurrentModel model = (IConcurrentModel)newInput;
        this.table = new TableViewerAdapter((TableViewer)viewer);
        BackgroundContentProvider newProvider = new BackgroundContentProvider(this.table, model, this.sortOrder);
        this.setProvider(newProvider);
        newProvider.setLimit(this.limit);
        newProvider.setFilter(this.filter);
    }

    public void setSortOrder(Comparator sortOrder) {
        Assert.isNotNull((Object)sortOrder);
        this.sortOrder = sortOrder;
        if (this.provider != null) {
            this.provider.setSortOrder(sortOrder);
        }
    }

    public void setFilter(IFilter toSet) {
        this.filter = toSet;
        if (this.provider != null) {
            this.provider.setFilter(toSet);
        }
    }

    public void setLimit(int limit) {
        this.limit = limit;
        if (this.provider != null) {
            this.provider.setLimit(limit);
        }
    }

    public int getLimit() {
        return this.limit;
    }

    public void updateElement(int element) {
        if (this.provider != null) {
            this.provider.checkVisibleRange(element);
        }
    }

    private void setProvider(BackgroundContentProvider newProvider) {
        if (this.provider != null) {
            this.provider.dispose();
        }
        this.provider = newProvider;
    }

    private static final class TableViewerAdapter
    extends AbstractVirtualTable {
        private TableViewer viewer;

        public TableViewerAdapter(TableViewer viewer) {
            this.viewer = viewer;
        }

        public void clear(int index) {
            this.viewer.clear(index);
        }

        public void replace(Object element, int itemIndex) {
            this.viewer.replace(element, itemIndex);
        }

        public void setItemCount(int total) {
            this.viewer.setItemCount(total);
        }

        public int getItemCount() {
            return this.viewer.getTable().getItemCount();
        }

        public int getTopIndex() {
            return Math.max(this.viewer.getTable().getTopIndex() - 1, 0);
        }

        public int getVisibleItemCount() {
            Table table = this.viewer.getTable();
            Rectangle rect = table.getClientArea();
            int itemHeight = table.getItemHeight();
            int headerHeight = table.getHeaderHeight();
            return (rect.height - headerHeight + itemHeight - 1) / (itemHeight + table.getGridLineWidth());
        }

        public Control getControl() {
            return this.viewer.getControl();
        }
    }
}

