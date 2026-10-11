/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.list.DecoratingObservableList
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.core.databinding.observable.list.DecoratingObservableList;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.jface.databinding.swt.ISWTObservableList;
import org.eclipse.jface.internal.databinding.swt.WidgetListenerUtil;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Widget;

public class SWTObservableListDecorator
extends DecoratingObservableList
implements ISWTObservableList {
    private Widget widget;
    private Listener disposeListener = new Listener(){

        public void handleEvent(Event event) {
            SWTObservableListDecorator.this.dispose();
        }
    };

    public SWTObservableListDecorator(IObservableList decorated, Widget widget) {
        super(decorated, true);
        this.widget = widget;
        WidgetListenerUtil.asyncAddListener(widget, 12, this.disposeListener);
    }

    public synchronized void dispose() {
        WidgetListenerUtil.asyncRemoveListener(this.widget, 12, this.disposeListener);
        this.widget = null;
        super.dispose();
    }

    public Widget getWidget() {
        return this.widget;
    }
}

