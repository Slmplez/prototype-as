/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.core.databinding.property.value.SimpleValueProperty
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.jface.databinding.viewers;

import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.property.value.SimpleValueProperty;
import org.eclipse.jface.databinding.swt.SWTObservables;
import org.eclipse.jface.databinding.viewers.IViewerObservableValue;
import org.eclipse.jface.databinding.viewers.IViewerValueProperty;
import org.eclipse.jface.databinding.viewers.ViewersObservables;
import org.eclipse.jface.internal.databinding.viewers.ViewerObservableValueDecorator;
import org.eclipse.jface.viewers.Viewer;

public abstract class ViewerValueProperty
extends SimpleValueProperty
implements IViewerValueProperty {
    public IObservableValue observe(Object source) {
        if (source instanceof Viewer) {
            return this.observe((Viewer)source);
        }
        return super.observe(source);
    }

    public IObservableValue observe(Realm realm, Object source) {
        IObservableValue observable = super.observe(realm, source);
        if (source instanceof Viewer) {
            observable = new ViewerObservableValueDecorator(observable, (Viewer)source);
        }
        return observable;
    }

    public IViewerObservableValue observe(Viewer viewer) {
        return (IViewerObservableValue)this.observe(SWTObservables.getRealm(viewer.getControl().getDisplay()), viewer);
    }

    public IViewerObservableValue observeDelayed(int delay, Viewer viewer) {
        return ViewersObservables.observeDelayedValue(delay, this.observe(viewer));
    }

    public abstract /* synthetic */ Object getValueType();
}

