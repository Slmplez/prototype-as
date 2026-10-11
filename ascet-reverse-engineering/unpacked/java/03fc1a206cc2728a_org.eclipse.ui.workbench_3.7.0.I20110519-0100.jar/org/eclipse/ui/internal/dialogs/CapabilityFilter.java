/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerFilter
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.ui.activities.WorkbenchActivityHelper;

public class CapabilityFilter
extends ViewerFilter {
    public boolean select(Viewer viewer, Object parentElement, Object element) {
        return !WorkbenchActivityHelper.filterItem(element);
    }
}

