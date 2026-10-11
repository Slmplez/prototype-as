/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.property.INativePropertyListener
 *  org.eclipse.core.databinding.property.IProperty
 *  org.eclipse.core.databinding.property.ISimplePropertyListener
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.jface.internal.databinding.viewers;

import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.IProperty;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.jface.databinding.viewers.ViewerValueProperty;
import org.eclipse.jface.internal.databinding.viewers.SelectionChangedListener;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.Viewer;

public class SelectionProviderSingleSelectionProperty
extends ViewerValueProperty {
    private final boolean isPostSelection;

    public SelectionProviderSingleSelectionProperty(boolean isPostSelection) {
        this.isPostSelection = isPostSelection;
    }

    public Object getValueType() {
        return null;
    }

    protected Object doGetValue(Object source) {
        ISelection selection = ((ISelectionProvider)source).getSelection();
        if (selection instanceof IStructuredSelection) {
            return ((IStructuredSelection)selection).getFirstElement();
        }
        return null;
    }

    protected void doSetValue(Object source, Object value) {
        StructuredSelection selection;
        StructuredSelection structuredSelection = selection = value == null ? StructuredSelection.EMPTY : new StructuredSelection(value);
        if (source instanceof Viewer) {
            ((Viewer)source).setSelection((ISelection)selection, true);
        } else {
            ((ISelectionProvider)source).setSelection((ISelection)selection);
        }
    }

    public INativePropertyListener adaptListener(ISimplePropertyListener listener) {
        return new SelectionChangedListener((IProperty)this, listener, this.isPostSelection);
    }

    public String toString() {
        return this.isPostSelection ? "IPostSelectionProvider.postSelection" : "ISelectionProvider.selection";
    }
}

