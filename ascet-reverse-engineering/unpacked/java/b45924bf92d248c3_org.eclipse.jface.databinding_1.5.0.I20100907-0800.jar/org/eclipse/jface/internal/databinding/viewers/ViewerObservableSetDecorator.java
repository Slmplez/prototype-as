/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.set.DecoratingObservableSet
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.jface.internal.databinding.viewers;

import org.eclipse.core.databinding.observable.set.DecoratingObservableSet;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.jface.databinding.viewers.IViewerObservableSet;
import org.eclipse.jface.viewers.Viewer;

public class ViewerObservableSetDecorator
extends DecoratingObservableSet
implements IViewerObservableSet {
    private final Viewer viewer;

    public ViewerObservableSetDecorator(IObservableSet decorated, Viewer viewer) {
        super(decorated, true);
        this.viewer = viewer;
    }

    public Viewer getViewer() {
        return this.viewer;
    }
}

