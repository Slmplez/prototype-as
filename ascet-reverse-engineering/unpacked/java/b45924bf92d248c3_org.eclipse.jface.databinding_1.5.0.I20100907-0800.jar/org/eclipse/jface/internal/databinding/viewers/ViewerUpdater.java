/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.Util
 *  org.eclipse.jface.viewers.IElementComparer
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.StructuredViewer
 */
package org.eclipse.jface.internal.databinding.viewers;

import java.util.Iterator;
import org.eclipse.jface.databinding.viewers.IViewerUpdater;
import org.eclipse.jface.util.Util;
import org.eclipse.jface.viewers.IElementComparer;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.StructuredViewer;

public abstract class ViewerUpdater
implements IViewerUpdater {
    private final StructuredViewer viewer;

    protected ViewerUpdater(StructuredViewer viewer) {
        this.viewer = viewer;
    }

    public abstract void insert(Object var1, int var2);

    public abstract void remove(Object var1, int var2);

    public void replace(Object oldElement, Object newElement, int position) {
        this.remove(oldElement, position);
        this.insert(newElement, position);
    }

    public void move(Object element, int oldPosition, int newPosition) {
        if (this.isElementOrderPreserved()) {
            IStructuredSelection selection = (IStructuredSelection)this.viewer.getSelection();
            this.remove(element, oldPosition);
            this.insert(element, newPosition);
            if (this.selectionContains(selection, element)) {
                this.viewer.setSelection((ISelection)selection);
            }
        }
    }

    boolean isElementOrderPreserved() {
        return this.viewer.getComparator() == null && this.viewer.getFilters().length == 0;
    }

    private boolean selectionContains(IStructuredSelection selection, Object element) {
        if (!selection.isEmpty()) {
            IElementComparer comparer = this.viewer.getComparer();
            Iterator iter = selection.iterator();
            while (iter.hasNext()) {
                Object selectionElement = iter.next();
                if (!(comparer == null ? Util.equals((Object)element, selectionElement) : comparer.equals(element, selectionElement))) continue;
                return true;
            }
        }
        return false;
    }

    public abstract void add(Object[] var1);

    public abstract void remove(Object[] var1);
}

