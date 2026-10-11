/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.jface.internal.databinding.swt.SWTObservableValueDecorator;
import org.eclipse.jface.internal.databinding.swt.WidgetListenerUtil;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Widget;

public class SWTDelayedObservableValueDecorator
extends SWTObservableValueDecorator {
    private Control control;

    public SWTDelayedObservableValueDecorator(IObservableValue decorated, Widget widget) {
        super(decorated, widget);
        if (widget instanceof Control) {
            this.control = (Control)widget;
            WidgetListenerUtil.asyncAddListener((Widget)this.control, 16, this);
        }
    }

    public void handleEvent(Event event) {
        if (event.type == 16 && this.isStale()) {
            this.getValue();
        }
        super.handleEvent(event);
    }

    public synchronized void dispose() {
        if (this.control != null) {
            WidgetListenerUtil.asyncRemoveListener((Widget)this.control, 16, this);
            this.control = null;
        }
        super.dispose();
    }
}

