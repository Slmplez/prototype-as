/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.ViewerComparator
 */
package org.eclipse.ui.model;

import java.util.Comparator;
import org.eclipse.jface.viewers.ViewerComparator;

public class WorkbenchViewerComparator
extends ViewerComparator {
    public WorkbenchViewerComparator() {
    }

    public WorkbenchViewerComparator(Comparator comparator) {
        super(comparator);
    }

    public boolean isSorterProperty(Object element, String propertyId) {
        return propertyId.equals("org.eclipse.jface.text");
    }
}

