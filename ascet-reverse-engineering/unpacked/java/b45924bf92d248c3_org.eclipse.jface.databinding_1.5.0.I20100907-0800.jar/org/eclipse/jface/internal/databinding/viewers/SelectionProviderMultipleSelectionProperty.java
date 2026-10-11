/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.list.ListDiff
 *  org.eclipse.core.databinding.property.INativePropertyListener
 *  org.eclipse.core.databinding.property.IProperty
 *  org.eclipse.core.databinding.property.ISimplePropertyListener
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.StructuredSelection
 */
package org.eclipse.jface.internal.databinding.viewers;

import java.util.Collections;
import java.util.List;
import org.eclipse.core.databinding.observable.list.ListDiff;
import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.IProperty;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.jface.databinding.viewers.ViewerListProperty;
import org.eclipse.jface.internal.databinding.viewers.SelectionChangedListener;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.StructuredSelection;

public class SelectionProviderMultipleSelectionProperty
extends ViewerListProperty {
    private final boolean isPostSelection;
    static /* synthetic */ Class class$0;

    public SelectionProviderMultipleSelectionProperty(boolean isPostSelection) {
        this.isPostSelection = isPostSelection;
    }

    public Object getElementType() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.Object");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return clazz;
    }

    protected List doGetList(Object source) {
        ISelection selection = ((ISelectionProvider)source).getSelection();
        if (selection instanceof IStructuredSelection) {
            return ((IStructuredSelection)selection).toList();
        }
        return Collections.EMPTY_LIST;
    }

    protected void doSetList(Object source, List list, ListDiff diff) {
        this.doSetList(source, list);
    }

    protected void doSetList(Object source, List list) {
        ((ISelectionProvider)source).setSelection((ISelection)new StructuredSelection(list));
    }

    public INativePropertyListener adaptListener(ISimplePropertyListener listener) {
        return new SelectionChangedListener((IProperty)this, listener, this.isPostSelection);
    }

    public String toString() {
        return this.isPostSelection ? "IPostSelectionProvider.postSelection[]" : "ISelectionProvider.selection[]";
    }
}

