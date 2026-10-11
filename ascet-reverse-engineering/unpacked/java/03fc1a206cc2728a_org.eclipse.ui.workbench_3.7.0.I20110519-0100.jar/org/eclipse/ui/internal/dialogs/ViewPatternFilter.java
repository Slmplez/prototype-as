/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.jface.viewers.Viewer;
import org.eclipse.ui.dialogs.PatternFilter;
import org.eclipse.ui.views.IViewCategory;
import org.eclipse.ui.views.IViewDescriptor;

public class ViewPatternFilter
extends PatternFilter {
    public boolean isElementSelectable(Object element) {
        return element instanceof IViewDescriptor;
    }

    protected boolean isLeafMatch(Viewer viewer, Object element) {
        IViewDescriptor desc;
        if (element instanceof IViewCategory) {
            return false;
        }
        String text = null;
        return element instanceof IViewDescriptor && this.wordMatches(text = (desc = (IViewDescriptor)element).getLabel());
    }
}

