/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.property.IProperty
 *  org.eclipse.core.databinding.property.ISimplePropertyListener
 *  org.eclipse.core.databinding.property.NativePropertyListener
 *  org.eclipse.jface.viewers.IPostSelectionProvider
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 */
package org.eclipse.jface.internal.databinding.viewers;

import org.eclipse.core.databinding.property.IProperty;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.core.databinding.property.NativePropertyListener;
import org.eclipse.jface.viewers.IPostSelectionProvider;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.SelectionChangedEvent;

class SelectionChangedListener
extends NativePropertyListener
implements ISelectionChangedListener {
    private final boolean isPostSelection;

    SelectionChangedListener(IProperty property, ISimplePropertyListener listener, boolean isPostSelection) {
        super(property, listener);
        this.isPostSelection = isPostSelection;
    }

    public void selectionChanged(SelectionChangedEvent event) {
        this.fireChange(event.getSource(), null);
    }

    public void doAddTo(Object source) {
        if (this.isPostSelection) {
            ((IPostSelectionProvider)source).addPostSelectionChangedListener((ISelectionChangedListener)this);
        } else {
            ((ISelectionProvider)source).addSelectionChangedListener((ISelectionChangedListener)this);
        }
    }

    public void doRemoveFrom(Object source) {
        if (this.isPostSelection) {
            ((IPostSelectionProvider)source).removePostSelectionChangedListener((ISelectionChangedListener)this);
        } else {
            ((ISelectionProvider)source).removeSelectionChangedListener((ISelectionChangedListener)this);
        }
    }
}

