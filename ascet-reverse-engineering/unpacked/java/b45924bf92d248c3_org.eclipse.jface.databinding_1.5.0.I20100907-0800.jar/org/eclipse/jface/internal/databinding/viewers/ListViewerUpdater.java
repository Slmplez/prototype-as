/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.AbstractListViewer
 *  org.eclipse.jface.viewers.StructuredViewer
 */
package org.eclipse.jface.internal.databinding.viewers;

import org.eclipse.jface.internal.databinding.viewers.ViewerUpdater;
import org.eclipse.jface.viewers.AbstractListViewer;
import org.eclipse.jface.viewers.StructuredViewer;

class ListViewerUpdater
extends ViewerUpdater {
    private AbstractListViewer viewer;

    ListViewerUpdater(AbstractListViewer viewer) {
        super((StructuredViewer)viewer);
        this.viewer = viewer;
    }

    public void insert(Object element, int position) {
        this.viewer.insert(element, position);
    }

    public void remove(Object element, int position) {
        this.viewer.remove(element);
    }

    public void add(Object[] elements) {
        this.viewer.add(elements);
    }

    public void remove(Object[] elements) {
        this.viewer.remove(elements);
    }
}

