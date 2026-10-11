/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.property.IProperty
 *  org.eclipse.core.databinding.property.ISimplePropertyListener
 *  org.eclipse.core.databinding.property.NativePropertyListener
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.core.databinding.property.IProperty;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.core.databinding.property.NativePropertyListener;
import org.eclipse.jface.internal.databinding.swt.WidgetListenerUtil;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Widget;

public class WidgetListener
extends NativePropertyListener
implements Listener {
    private final int[] changeEvents;
    private final int[] staleEvents;

    public WidgetListener(IProperty property, ISimplePropertyListener listener, int[] changeEvents, int[] staleEvents) {
        super(property, listener);
        this.changeEvents = changeEvents;
        this.staleEvents = staleEvents;
    }

    public void handleEvent(Event event) {
        int i;
        if (this.staleEvents != null) {
            i = 0;
            while (i < this.staleEvents.length) {
                if (event.type == this.staleEvents[i]) {
                    this.fireStale(event.widget);
                    break;
                }
                ++i;
            }
        }
        if (this.changeEvents != null) {
            i = 0;
            while (i < this.changeEvents.length) {
                if (event.type == this.changeEvents[i]) {
                    this.fireChange(event.widget, null);
                    break;
                }
                ++i;
            }
        }
    }

    protected void doAddTo(Object source) {
        int event;
        int i;
        Widget widget = (Widget)source;
        if (this.changeEvents != null) {
            i = 0;
            while (i < this.changeEvents.length) {
                event = this.changeEvents[i];
                if (event != 0) {
                    WidgetListenerUtil.asyncAddListener(widget, event, this);
                }
                ++i;
            }
        }
        if (this.staleEvents != null) {
            i = 0;
            while (i < this.staleEvents.length) {
                event = this.staleEvents[i];
                if (event != 0) {
                    WidgetListenerUtil.asyncAddListener(widget, event, this);
                }
                ++i;
            }
        }
    }

    protected void doRemoveFrom(Object source) {
        Widget widget = (Widget)source;
        if (!widget.isDisposed()) {
            int event;
            int i;
            if (this.changeEvents != null) {
                i = 0;
                while (i < this.changeEvents.length) {
                    event = this.changeEvents[i];
                    if (event != 0) {
                        WidgetListenerUtil.asyncRemoveListener(widget, event, this);
                    }
                    ++i;
                }
            }
            if (this.staleEvents != null) {
                i = 0;
                while (i < this.staleEvents.length) {
                    event = this.staleEvents[i];
                    if (event != 0) {
                        WidgetListenerUtil.asyncRemoveListener(widget, event, this);
                    }
                    ++i;
                }
            }
        }
    }
}

