/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.ViewerSorter
 */
package org.eclipse.ui.model;

import java.text.Collator;
import org.eclipse.jface.viewers.ViewerSorter;

public class WorkbenchViewerSorter
extends ViewerSorter {
    public WorkbenchViewerSorter() {
    }

    public WorkbenchViewerSorter(Collator collator) {
        super(collator);
    }

    public boolean isSorterProperty(Object element, String propertyId) {
        return propertyId.equals("org.eclipse.jface.text");
    }
}

