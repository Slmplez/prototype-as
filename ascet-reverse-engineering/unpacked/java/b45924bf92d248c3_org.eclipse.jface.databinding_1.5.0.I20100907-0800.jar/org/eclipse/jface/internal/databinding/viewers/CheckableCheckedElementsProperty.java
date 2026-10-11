/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.databinding.observable.set.SetDiff
 *  org.eclipse.core.databinding.property.set.SetProperty
 *  org.eclipse.jface.viewers.ICheckable
 *  org.eclipse.jface.viewers.IElementComparer
 *  org.eclipse.jface.viewers.StructuredViewer
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.jface.internal.databinding.viewers;

import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.set.SetDiff;
import org.eclipse.core.databinding.property.set.SetProperty;
import org.eclipse.jface.databinding.swt.SWTObservables;
import org.eclipse.jface.internal.databinding.viewers.CheckableCheckedElementsObservableSet;
import org.eclipse.jface.internal.databinding.viewers.ViewerElementSet;
import org.eclipse.jface.internal.databinding.viewers.ViewerObservableSetDecorator;
import org.eclipse.jface.viewers.ICheckable;
import org.eclipse.jface.viewers.IElementComparer;
import org.eclipse.jface.viewers.StructuredViewer;
import org.eclipse.jface.viewers.Viewer;

public class CheckableCheckedElementsProperty
extends SetProperty {
    private final Object elementType;

    public CheckableCheckedElementsProperty(Object elementType) {
        this.elementType = elementType;
    }

    public Object getElementType() {
        return this.elementType;
    }

    protected Set doGetSet(Object source) {
        throw new UnsupportedOperationException("Cannot query the checked elements on an ICheckable");
    }

    protected void doSetSet(Object source, Set set) {
        throw new UnsupportedOperationException("Cannot batch replace the checked elements on an ICheckable.  Use updateSet(SetDiff) instead");
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

    public IObservableSet observe(Object source) {
        if (source instanceof Viewer) {
            return this.observe(SWTObservables.getRealm(((Viewer)source).getControl().getDisplay()), source);
        }
        return super.observe(source);
    }

    public IObservableSet observe(Realm realm, Object source) {
        IElementComparer comparer = null;
        if (source instanceof StructuredViewer) {
            comparer = ((StructuredViewer)source).getComparer();
        }
        Set wrappedSet = ViewerElementSet.withComparer(comparer);
        Object observable = new CheckableCheckedElementsObservableSet(realm, wrappedSet, this.elementType, comparer, (ICheckable)source);
        if (source instanceof Viewer) {
            observable = new ViewerObservableSetDecorator((IObservableSet)observable, (Viewer)source);
        }
        return observable;
    }
}

