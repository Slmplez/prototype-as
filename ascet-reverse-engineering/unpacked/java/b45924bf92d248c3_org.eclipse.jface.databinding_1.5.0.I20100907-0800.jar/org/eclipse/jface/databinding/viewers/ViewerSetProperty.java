/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.databinding.property.set.SimpleSetProperty
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.jface.databinding.viewers;

import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.property.set.SimpleSetProperty;
import org.eclipse.jface.databinding.swt.SWTObservables;
import org.eclipse.jface.databinding.viewers.IViewerObservableSet;
import org.eclipse.jface.databinding.viewers.IViewerSetProperty;
import org.eclipse.jface.internal.databinding.viewers.ViewerObservableSetDecorator;
import org.eclipse.jface.viewers.Viewer;

public abstract class ViewerSetProperty
extends SimpleSetProperty
implements IViewerSetProperty {
    public IObservableSet observe(Object source) {
        if (source instanceof Viewer) {
            return this.observe((Viewer)source);
        }
        return super.observe(source);
    }

    public IObservableSet observe(Realm realm, Object source) {
        IObservableSet observable = super.observe(realm, source);
        if (source instanceof Viewer) {
            return new ViewerObservableSetDecorator(observable, (Viewer)source);
        }
        return observable;
    }

    public IViewerObservableSet observe(Viewer viewer) {
        return (IViewerObservableSet)this.observe(SWTObservables.getRealm(viewer.getControl().getDisplay()), viewer);
    }

    public abstract /* synthetic */ Object getElementType();
}

