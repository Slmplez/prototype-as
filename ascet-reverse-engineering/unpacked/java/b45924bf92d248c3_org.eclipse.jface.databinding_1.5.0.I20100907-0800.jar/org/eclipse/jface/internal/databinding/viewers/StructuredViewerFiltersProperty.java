/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.set.SetDiff
 *  org.eclipse.core.databinding.property.INativePropertyListener
 *  org.eclipse.core.databinding.property.ISimplePropertyListener
 *  org.eclipse.jface.viewers.StructuredViewer
 *  org.eclipse.jface.viewers.ViewerFilter
 */
package org.eclipse.jface.internal.databinding.viewers;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import org.eclipse.core.databinding.observable.set.SetDiff;
import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.jface.databinding.viewers.ViewerSetProperty;
import org.eclipse.jface.viewers.StructuredViewer;
import org.eclipse.jface.viewers.ViewerFilter;

public class StructuredViewerFiltersProperty
extends ViewerSetProperty {
    static /* synthetic */ Class class$0;

    public Object getElementType() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jface.viewers.ViewerFilter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return clazz;
    }

    protected Set doGetSet(Object source) {
        return new HashSet<ViewerFilter>(Arrays.asList(((StructuredViewer)source).getFilters()));
    }

    public void doSetSet(Object source, Set set, SetDiff diff) {
        this.doSetSet(source, set);
    }

    protected void doSetSet(Object source, Set set) {
        StructuredViewer viewer = (StructuredViewer)source;
        viewer.getControl().setRedraw(false);
        try {
            viewer.setFilters(set.toArray(new ViewerFilter[set.size()]));
        }
        finally {
            viewer.getControl().setRedraw(true);
        }
    }

    public INativePropertyListener adaptListener(ISimplePropertyListener listener) {
        return null;
    }

    public String toString() {
        return "StructuredViewer.filters{} <ViewerFilter>";
    }
}

