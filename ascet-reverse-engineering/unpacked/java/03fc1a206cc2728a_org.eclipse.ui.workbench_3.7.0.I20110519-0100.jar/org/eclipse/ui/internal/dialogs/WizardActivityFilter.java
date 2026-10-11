/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.AbstractTreeViewer
 *  org.eclipse.jface.viewers.ITreeContentProvider
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerFilter
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.jface.viewers.AbstractTreeViewer;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.ui.activities.WorkbenchActivityHelper;

public class WizardActivityFilter
extends ViewerFilter {
    private boolean filterPrimaryWizards = false;
    static /* synthetic */ Class class$0;

    public void setFilterPrimaryWizards(boolean filter) {
        this.filterPrimaryWizards = filter;
    }

    public boolean select(Viewer viewer, Object parentElement, Object element) {
        Object[] children = ((ITreeContentProvider)((AbstractTreeViewer)viewer).getContentProvider()).getChildren(element);
        if (children.length > 0) {
            return this.filter(viewer, element, children).length > 0;
        }
        Class<?> clazz = parentElement.getClass();
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.ui.model.AdaptableList");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz.equals(clazz2) && !this.filterPrimaryWizards) {
            return true;
        }
        return !WorkbenchActivityHelper.filterItem(element);
    }
}

