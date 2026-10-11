/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import java.util.Arrays;
import java.util.Comparator;
import org.eclipse.jface.viewers.TreePath;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerSorter;

public class TreePathViewerSorter
extends ViewerSorter {
    public int category(TreePath parentPath, Object element) {
        return this.category(element);
    }

    public int compare(Viewer viewer, TreePath parentPath, Object e1, Object e2) {
        return this.compare(viewer, e1, e2);
    }

    public boolean isSorterProperty(TreePath parentPath, Object element, String property) {
        return this.isSorterProperty(element, property);
    }

    public void sort(final Viewer viewer, final TreePath parentPath, Object[] elements) {
        Arrays.sort(elements, new Comparator(){

            public int compare(Object a, Object b) {
                return TreePathViewerSorter.this.compare(viewer, parentPath, a, b);
            }
        });
    }
}

