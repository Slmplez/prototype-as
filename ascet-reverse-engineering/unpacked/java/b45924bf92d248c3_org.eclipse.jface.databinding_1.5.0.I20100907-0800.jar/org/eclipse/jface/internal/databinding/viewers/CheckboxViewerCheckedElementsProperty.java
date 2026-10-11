/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Diffs
 *  org.eclipse.core.databinding.observable.IDiff
 *  org.eclipse.core.databinding.observable.set.SetDiff
 *  org.eclipse.core.databinding.property.INativePropertyListener
 *  org.eclipse.core.databinding.property.IProperty
 *  org.eclipse.core.databinding.property.ISimplePropertyListener
 *  org.eclipse.core.databinding.property.NativePropertyListener
 *  org.eclipse.jface.viewers.CheckStateChangedEvent
 *  org.eclipse.jface.viewers.ICheckStateListener
 *  org.eclipse.jface.viewers.ICheckable
 *  org.eclipse.jface.viewers.StructuredViewer
 */
package org.eclipse.jface.internal.databinding.viewers;

import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.IDiff;
import org.eclipse.core.databinding.observable.set.SetDiff;
import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.IProperty;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.core.databinding.property.NativePropertyListener;
import org.eclipse.jface.databinding.viewers.ViewerSetProperty;
import org.eclipse.jface.internal.databinding.viewers.ViewerElementSet;
import org.eclipse.jface.viewers.CheckStateChangedEvent;
import org.eclipse.jface.viewers.ICheckStateListener;
import org.eclipse.jface.viewers.ICheckable;
import org.eclipse.jface.viewers.StructuredViewer;

public abstract class CheckboxViewerCheckedElementsProperty
extends ViewerSetProperty {
    private final Object elementType;

    public CheckboxViewerCheckedElementsProperty(Object elementType) {
        this.elementType = elementType;
    }

    public Object getElementType() {
        return this.elementType;
    }

    protected final Set createElementSet(StructuredViewer viewer) {
        return ViewerElementSet.withComparer(viewer.getComparer());
    }

    protected void doUpdateSet(Object source, SetDiff diff) {
        ICheckable checkable = (ICheckable)source;
        Iterator it = diff.getAdditions().iterator();
        while (it.hasNext()) {
            checkable.setChecked(it.next(), true);
        }
        it = diff.getRemovals().iterator();
        while (it.hasNext()) {
            checkable.setChecked(it.next(), false);
        }
    }

    public INativePropertyListener adaptListener(ISimplePropertyListener listener) {
        return new CheckStateListener((IProperty)this, listener);
    }

    public String toString() {
        String s = "ICheckable.checkedElements{}";
        if (this.elementType != null) {
            s = String.valueOf(s) + " <" + this.elementType + ">";
        }
        return s;
    }

    private class CheckStateListener
    extends NativePropertyListener
    implements ICheckStateListener {
        private CheckStateListener(IProperty property, ISimplePropertyListener listener) {
            super(property, listener);
        }

        public void checkStateChanged(CheckStateChangedEvent event) {
            Object element = event.getElement();
            boolean checked = event.getChecked();
            Set elementSet = CheckboxViewerCheckedElementsProperty.this.createElementSet((StructuredViewer)event.getCheckable());
            elementSet.add(element);
            Set additions = checked ? elementSet : Collections.EMPTY_SET;
            Set removals = checked ? Collections.EMPTY_SET : elementSet;
            SetDiff diff = Diffs.createSetDiff((Set)additions, (Set)removals);
            this.fireChange(event.getSource(), (IDiff)diff);
        }

        public void doAddTo(Object source) {
            ((ICheckable)source).addCheckStateListener((ICheckStateListener)this);
        }

        public void doRemoveFrom(Object source) {
            ((ICheckable)source).removeCheckStateListener((ICheckStateListener)this);
        }
    }
}

