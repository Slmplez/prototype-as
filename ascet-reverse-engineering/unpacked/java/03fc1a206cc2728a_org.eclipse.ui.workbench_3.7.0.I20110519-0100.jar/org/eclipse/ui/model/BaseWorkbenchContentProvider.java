/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.ITreeContentProvider
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.ui.model;

import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.model.IWorkbenchAdapter;

public class BaseWorkbenchContentProvider
implements ITreeContentProvider {
    static /* synthetic */ Class class$0;

    public void dispose() {
    }

    protected IWorkbenchAdapter getAdapter(Object element) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.model.IWorkbenchAdapter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return (IWorkbenchAdapter)Util.getAdapter(element, clazz);
    }

    public Object[] getChildren(Object element) {
        IWorkbenchAdapter adapter = this.getAdapter(element);
        if (adapter != null) {
            return adapter.getChildren(element);
        }
        return new Object[0];
    }

    public Object[] getElements(Object element) {
        return this.getChildren(element);
    }

    public Object getParent(Object element) {
        IWorkbenchAdapter adapter = this.getAdapter(element);
        if (adapter != null) {
            return adapter.getParent(element);
        }
        return null;
    }

    public boolean hasChildren(Object element) {
        return this.getChildren(element).length > 0;
    }

    public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
    }
}

