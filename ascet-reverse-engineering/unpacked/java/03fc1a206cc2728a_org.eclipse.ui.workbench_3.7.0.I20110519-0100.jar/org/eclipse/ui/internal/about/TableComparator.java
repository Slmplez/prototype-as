/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.ITableLabelProvider
 *  org.eclipse.jface.viewers.TableViewer
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerComparator
 */
package org.eclipse.ui.internal.about;

import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.ITableLabelProvider;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.ui.internal.about.AboutBundleData;

class TableComparator
extends ViewerComparator {
    private int sortColumn = 0;
    private int lastSortColumn = 0;
    private boolean ascending = true;
    private boolean lastAscending = true;

    TableComparator() {
    }

    public int compare(Viewer viewer, Object e1, Object e2) {
        TableViewer tableViewer;
        IBaseLabelProvider baseLabel;
        if (this.sortColumn == 0 && e1 instanceof AboutBundleData && e2 instanceof AboutBundleData) {
            TableViewer tableViewer2;
            IBaseLabelProvider baseLabel2;
            AboutBundleData d1 = (AboutBundleData)e1;
            AboutBundleData d2 = (AboutBundleData)e2;
            int diff = this.getSignedSortValue(d1) - this.getSignedSortValue(d2);
            if (diff != 0 || this.lastSortColumn == 0) {
                return this.ascending ? diff : -diff;
            }
            if (viewer instanceof TableViewer && (baseLabel2 = (tableViewer2 = (TableViewer)viewer).getLabelProvider()) instanceof ITableLabelProvider) {
                ITableLabelProvider tableProvider = (ITableLabelProvider)baseLabel2;
                String e1p = tableProvider.getColumnText(e1, this.lastSortColumn);
                String e2p = tableProvider.getColumnText(e2, this.lastSortColumn);
                int result = this.getComparator().compare(e1p, e2p);
                return this.lastAscending ? result : -1 * result;
            }
            return 0;
        }
        if (viewer instanceof TableViewer && (baseLabel = (tableViewer = (TableViewer)viewer).getLabelProvider()) instanceof ITableLabelProvider) {
            ITableLabelProvider tableProvider = (ITableLabelProvider)baseLabel;
            String e1p = tableProvider.getColumnText(e1, this.sortColumn);
            String e2p = tableProvider.getColumnText(e2, this.sortColumn);
            int result = this.getComparator().compare(e1p, e2p);
            if (result == 0) {
                if (this.lastSortColumn != 0) {
                    e1p = tableProvider.getColumnText(e1, this.lastSortColumn);
                    e2p = tableProvider.getColumnText(e2, this.lastSortColumn);
                    result = this.getComparator().compare(e1p, e2p);
                    return this.lastAscending ? result : -1 * result;
                }
                if (e1 instanceof AboutBundleData && e2 instanceof AboutBundleData) {
                    AboutBundleData d1 = (AboutBundleData)e1;
                    AboutBundleData d2 = (AboutBundleData)e2;
                    int diff = this.getSignedSortValue(d1) - this.getSignedSortValue(d2);
                    return this.lastAscending ? diff : -diff;
                }
            }
            return this.ascending ? result : -1 * result;
        }
        return super.compare(viewer, e1, e2);
    }

    private int getSignedSortValue(AboutBundleData data) {
        if (!data.isSignedDetermined()) {
            return 0;
        }
        if (data.isSigned()) {
            return 1;
        }
        return -1;
    }

    public int getSortColumn() {
        return this.sortColumn;
    }

    public void setSortColumn(int sortColumn) {
        if (this.sortColumn != sortColumn) {
            this.lastSortColumn = this.sortColumn;
            this.lastAscending = this.ascending;
            this.sortColumn = sortColumn;
        }
    }

    public boolean isAscending() {
        return this.ascending;
    }

    public void setAscending(boolean ascending) {
        this.ascending = ascending;
    }
}

