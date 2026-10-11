/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.value.DecoratingObservableValue
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 */
package org.eclipse.jface.internal.databinding.viewers;

import org.eclipse.core.databinding.observable.value.DecoratingObservableValue;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.jface.databinding.viewers.IViewerObservableValue;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;

public class ViewerObservableValueDecorator
extends DecoratingObservableValue
implements IViewerObservableValue,
Listener {
    private Viewer viewer;

    public ViewerObservableValueDecorator(IObservableValue decorated, Viewer viewer) {
        super(decorated, true);
        this.viewer = viewer;
        viewer.getControl().addListener(12, (Listener)this);
    }

    public void handleEvent(Event event) {
        if (event.type == 12) {
            this.dispose();
        }
    }

    public Viewer getViewer() {
        return this.viewer;
    }

    public synchronized void dispose() {
        if (this.viewer != null) {
            Control control = this.viewer.getControl();
            if (control != null && !control.isDisposed()) {
                control.removeListener(12, (Listener)this);
            }
            this.viewer = null;
        }
        super.dispose();
    }
}

