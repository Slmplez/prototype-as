/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerFilter
 */
package org.eclipse.ui.internal.activities.ws;

import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.ui.activities.WorkbenchActivityHelper;

public class ActivityViewerFilter
extends ViewerFilter {
    private boolean hasEncounteredFilteredItem = false;

    public boolean select(Viewer viewer, Object parentElement, Object element) {
        if (WorkbenchActivityHelper.filterItem(element)) {
            this.setHasEncounteredFilteredItem(true);
            return false;
        }
        return true;
    }

    public boolean getHasEncounteredFilteredItem() {
        return this.hasEncounteredFilteredItem;
    }

    public void setHasEncounteredFilteredItem(boolean hasEncounteredFilteredItem) {
        this.hasEncounteredFilteredItem = hasEncounteredFilteredItem;
    }
}

