/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.value.DecoratingObservableValue
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.core.databinding.observable.value.DecoratingObservableValue;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.jface.databinding.swt.ISWTObservableValue;
import org.eclipse.jface.internal.databinding.swt.WidgetListenerUtil;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Widget;

public class SWTObservableValueDecorator
extends DecoratingObservableValue
implements ISWTObservableValue,
Listener {
    private Widget widget;

    public SWTObservableValueDecorator(IObservableValue decorated, Widget widget) {
        super(decorated, true);
        this.widget = widget;
        WidgetListenerUtil.asyncAddListener(widget, 12, this);
    }

    public void handleEvent(Event event) {
        if (event.type == 12) {
            this.dispose();
        }
    }

    public Widget getWidget() {
        return this.widget;
    }

    public synchronized void dispose() {
        if (this.widget != null) {
            WidgetListenerUtil.asyncRemoveListener(this.widget, 12, this);
            this.widget = null;
        }
        super.dispose();
    }
}

