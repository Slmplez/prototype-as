/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.Util
 *  org.eclipse.jface.viewers.AbstractTreeViewer
 *  org.eclipse.jface.viewers.IElementComparer
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ITreeSelection
 *  org.eclipse.jface.viewers.TreePath
 *  org.eclipse.jface.viewers.TreeViewer
 */
package org.eclipse.jface.internal.databinding.viewers;

import org.eclipse.jface.util.Util;
import org.eclipse.jface.viewers.AbstractTreeViewer;
import org.eclipse.jface.viewers.IElementComparer;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ITreeSelection;
import org.eclipse.jface.viewers.TreePath;
import org.eclipse.jface.viewers.TreeViewer;

public class TreeViewerUpdater {
    private final AbstractTreeViewer viewer;
    private final TreeViewer treeViewer;

    public TreeViewerUpdater(AbstractTreeViewer viewer) {
        this.viewer = viewer;
        this.treeViewer = viewer instanceof TreeViewer ? (TreeViewer)viewer : null;
    }

    public void insert(Object parent, Object element, int position) {
        this.viewer.insert(parent, element, position);
    }

    public void replace(Object parent, Object oldElement, Object newElement, int position) {
        if (this.treeViewer != null && this.isElementOrderPreserved()) {
            this.treeViewer.replace(parent, position, newElement);
            this.treeViewer.refresh(newElement);
        } else {
            this.remove(parent, oldElement, position);
            this.insert(parent, newElement, position);
        }
    }

    boolean isElementOrderPreserved() {
        return this.viewer.getComparator() == null && this.viewer.getFilters().length == 0;
    }

    public void move(Object parent, Object element, int oldPosition, int newPosition) {
        if (this.isElementOrderPreserved()) {
            ITreeSelection selection = (ITreeSelection)this.viewer.getSelection();
            this.remove(parent, element, oldPosition);
            this.insert(parent, element, newPosition);
            if (this.selectionContains(selection, parent, element)) {
                this.viewer.setSelection((ISelection)selection);
            }
        }
    }

    private boolean selectionContains(ITreeSelection selection, Object parent, Object element) {
        if (!selection.isEmpty()) {
            IElementComparer comparer = this.viewer.getComparer();
            TreePath[] paths = selection.getPaths();
            int i = 0;
            while (i < paths.length) {
                TreePath path = paths[i];
                int j = 0;
                while (j < path.getSegmentCount() - 1) {
                    Object pathParent = path.getSegment(j);
                    Object pathElement = path.getSegment(j + 1);
                    if (this.eq(comparer, parent, pathParent) && this.eq(comparer, element, pathElement)) {
                        return true;
                    }
                    ++j;
                }
                ++i;
            }
        }
        return false;
    }

    private boolean eq(IElementComparer comparer, Object o1, Object o2) {
        return comparer == null ? Util.equals((Object)o1, (Object)o2) : comparer.equals(o1, o2);
    }

    public void remove(Object parent, Object element, int position) {
        if (this.treeViewer != null && this.viewer.getComparator() == null && this.viewer.getFilters().length == 0) {
            this.treeViewer.remove(parent, position);
        } else {
            this.viewer.remove(parent, new Object[]{element});
        }
    }

    public void add(Object parent, Object[] elements) {
        this.viewer.add(parent, elements);
    }

    public void remove(Object parent, Object[] elements) {
        this.viewer.remove(parent, elements);
    }
}

