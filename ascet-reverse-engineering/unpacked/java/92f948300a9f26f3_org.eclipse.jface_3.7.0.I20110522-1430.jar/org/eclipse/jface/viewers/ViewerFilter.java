/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import java.util.ArrayList;
import org.eclipse.jface.viewers.TreePath;
import org.eclipse.jface.viewers.Viewer;

public abstract class ViewerFilter {
    protected ViewerFilter() {
    }

    public Object[] filter(Viewer viewer, Object parent, Object[] elements) {
        int size = elements.length;
        ArrayList<Object> out = new ArrayList<Object>(size);
        int i = 0;
        while (i < size) {
            Object element = elements[i];
            if (this.select(viewer, parent, element)) {
                out.add(element);
            }
            ++i;
        }
        return out.toArray();
    }

    public Object[] filter(Viewer viewer, TreePath parentPath, Object[] elements) {
        return this.filter(viewer, parentPath.getLastSegment(), elements);
    }

    public boolean isFilterProperty(Object element, String property) {
        return false;
    }

    public abstract boolean select(Viewer var1, Object var2, Object var3);
}

