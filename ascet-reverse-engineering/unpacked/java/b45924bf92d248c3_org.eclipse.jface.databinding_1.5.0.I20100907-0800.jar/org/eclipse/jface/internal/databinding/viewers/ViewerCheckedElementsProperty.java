/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.property.set.DelegatingSetProperty
 *  org.eclipse.core.databinding.property.set.ISetProperty
 *  org.eclipse.jface.viewers.CheckboxTableViewer
 *  org.eclipse.jface.viewers.CheckboxTreeViewer
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.jface.internal.databinding.viewers;

import org.eclipse.core.databinding.property.set.DelegatingSetProperty;
import org.eclipse.core.databinding.property.set.ISetProperty;
import org.eclipse.jface.databinding.swt.SWTObservables;
import org.eclipse.jface.databinding.viewers.IViewerObservableSet;
import org.eclipse.jface.databinding.viewers.IViewerSetProperty;
import org.eclipse.jface.internal.databinding.viewers.CheckableCheckedElementsProperty;
import org.eclipse.jface.internal.databinding.viewers.CheckboxTableViewerCheckedElementsProperty;
import org.eclipse.jface.internal.databinding.viewers.CheckboxTreeViewerCheckedElementsProperty;
import org.eclipse.jface.viewers.CheckboxTableViewer;
import org.eclipse.jface.viewers.CheckboxTreeViewer;
import org.eclipse.jface.viewers.Viewer;

public class ViewerCheckedElementsProperty
extends DelegatingSetProperty
implements IViewerSetProperty {
    ISetProperty checkable;
    ISetProperty checkboxTableViewer;
    ISetProperty checkboxTreeViewer;

    public ViewerCheckedElementsProperty(Object elementType) {
        super(elementType);
        this.checkable = new CheckableCheckedElementsProperty(elementType);
        this.checkboxTableViewer = new CheckboxTableViewerCheckedElementsProperty(elementType);
        this.checkboxTreeViewer = new CheckboxTreeViewerCheckedElementsProperty(elementType);
    }

    protected ISetProperty doGetDelegate(Object source) {
        if (source instanceof CheckboxTableViewer) {
            return this.checkboxTableViewer;
        }
        if (source instanceof CheckboxTreeViewer) {
            return this.checkboxTreeViewer;
        }
        return this.checkable;
    }

    public IViewerObservableSet observe(Viewer viewer) {
        return (IViewerObservableSet)this.observe(SWTObservables.getRealm(viewer.getControl().getDisplay()), viewer);
    }
}

