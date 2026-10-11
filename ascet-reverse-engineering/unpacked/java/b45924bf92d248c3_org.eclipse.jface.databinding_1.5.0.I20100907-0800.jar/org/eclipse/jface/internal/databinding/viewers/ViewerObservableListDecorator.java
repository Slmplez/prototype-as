/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.list.DecoratingObservableList
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.jface.internal.databinding.viewers;

import org.eclipse.core.databinding.observable.list.DecoratingObservableList;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.jface.databinding.viewers.IViewerObservableList;
import org.eclipse.jface.viewers.Viewer;

public class ViewerObservableListDecorator
extends DecoratingObservableList
implements IViewerObservableList {
    private final Viewer viewer;

    public ViewerObservableListDecorator(IObservableList decorated, Viewer viewer) {
        super(decorated, true);
        this.viewer = viewer;
    }

    public Viewer getViewer() {
        return this.viewer;
    }
}

