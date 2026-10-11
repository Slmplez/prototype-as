/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.AbstractTableViewer
 *  org.eclipse.jface.viewers.StructuredViewer
 */
package org.eclipse.jface.internal.databinding.viewers;

import org.eclipse.jface.internal.databinding.viewers.ViewerUpdater;
import org.eclipse.jface.viewers.AbstractTableViewer;
import org.eclipse.jface.viewers.StructuredViewer;

class TableViewerUpdater
extends ViewerUpdater {
    private AbstractTableViewer viewer;

    TableViewerUpdater(AbstractTableViewer viewer) {
        super((StructuredViewer)viewer);
        this.viewer = viewer;
    }

    public void insert(Object element, int position) {
        this.viewer.insert(element, position);
    }

    public void remove(Object element, int position) {
        this.viewer.remove(element);
    }

    public void replace(Object oldElement, Object newElement, int position) {
        if (this.isElementOrderPreserved()) {
            this.viewer.replace(newElement, position);
        } else {
            super.replace(oldElement, newElement, position);
        }
    }

    public void add(Object[] elements) {
        this.viewer.add(elements);
    }

    public void remove(Object[] elements) {
        this.viewer.remove(elements);
    }
}

