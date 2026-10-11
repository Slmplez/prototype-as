/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerFilter
 */
package org.eclipse.ui.internal.dialogs;

import java.util.Set;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.ui.IWorkingSet;

public class WorkingSetFilter
extends ViewerFilter {
    Set workingSetIds;

    public WorkingSetFilter(Set workingSetIds) {
        this.workingSetIds = workingSetIds;
    }

    public boolean select(Viewer viewer, Object parentElement, Object element) {
        if (element instanceof IWorkingSet) {
            IWorkingSet workingSet = (IWorkingSet)element;
            String id = workingSet.getId();
            if (this.workingSetIds != null && id != null) {
                return this.workingSetIds.contains(id);
            }
        }
        return true;
    }
}

