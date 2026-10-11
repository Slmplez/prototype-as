/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.core.databinding.property.list.SimpleListProperty
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.jface.databinding.viewers;

import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.property.list.SimpleListProperty;
import org.eclipse.jface.databinding.swt.SWTObservables;
import org.eclipse.jface.databinding.viewers.IViewerListProperty;
import org.eclipse.jface.databinding.viewers.IViewerObservableList;
import org.eclipse.jface.internal.databinding.viewers.ViewerObservableListDecorator;
import org.eclipse.jface.viewers.Viewer;

public abstract class ViewerListProperty
extends SimpleListProperty
implements IViewerListProperty {
    public IObservableList observe(Object source) {
        if (source instanceof Viewer) {
            return this.observe((Viewer)source);
        }
        return super.observe(source);
    }

    public IObservableList observe(Realm realm, Object source) {
        IObservableList observable = super.observe(realm, source);
        if (source instanceof Viewer) {
            observable = new ViewerObservableListDecorator(observable, (Viewer)source);
        }
        return observable;
    }

    public IViewerObservableList observe(Viewer viewer) {
        return (IViewerObservableList)this.observe(SWTObservables.getRealm(viewer.getControl().getDisplay()), viewer);
    }

    public abstract /* synthetic */ Object getElementType();
}

