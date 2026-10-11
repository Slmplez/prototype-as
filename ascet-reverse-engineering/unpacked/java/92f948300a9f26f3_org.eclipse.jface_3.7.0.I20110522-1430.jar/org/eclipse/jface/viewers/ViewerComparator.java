/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import java.util.Arrays;
import java.util.Comparator;
import org.eclipse.jface.util.Policy;
import org.eclipse.jface.viewers.ContentViewer;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.jface.viewers.Viewer;

public class ViewerComparator {
    private Comparator comparator;

    public ViewerComparator() {
        this(null);
    }

    public ViewerComparator(Comparator comparator) {
        this.comparator = comparator;
    }

    protected Comparator getComparator() {
        if (this.comparator == null) {
            this.comparator = Policy.getComparator();
        }
        return this.comparator;
    }

    public int category(Object element) {
        return 0;
    }

    public int compare(Viewer viewer, Object e1, Object e2) {
        String name2;
        String name1;
        int cat2;
        int cat1 = this.category(e1);
        if (cat1 != (cat2 = this.category(e2))) {
            return cat1 - cat2;
        }
        if (viewer == null || !(viewer instanceof ContentViewer)) {
            name1 = e1.toString();
            name2 = e2.toString();
        } else {
            IBaseLabelProvider prov = ((ContentViewer)viewer).getLabelProvider();
            if (prov instanceof ILabelProvider) {
                ILabelProvider lprov = (ILabelProvider)prov;
                name1 = lprov.getText(e1);
                name2 = lprov.getText(e2);
            } else {
                name1 = e1.toString();
                name2 = e2.toString();
            }
        }
        if (name1 == null) {
            name1 = "";
        }
        if (name2 == null) {
            name2 = "";
        }
        return this.getComparator().compare(name1, name2);
    }

    public boolean isSorterProperty(Object element, String property) {
        return false;
    }

    public void sort(final Viewer viewer, Object[] elements) {
        Arrays.sort(elements, new Comparator(){

            public int compare(Object a, Object b) {
                return ViewerComparator.this.compare(viewer, a, b);
            }
        });
    }
}

