/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.swt.widgets.Text
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.jface.databinding.swt.ISWTObservableValue;
import org.eclipse.jface.internal.databinding.swt.SWTVetoableValueDecorator;
import org.eclipse.jface.internal.databinding.swt.WidgetStringValueProperty;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.widgets.Widget;

public class TextTextProperty
extends WidgetStringValueProperty {
    public TextTextProperty() {
        this(null);
    }

    public TextTextProperty(int[] events) {
        super(TextTextProperty.checkEvents(events), TextTextProperty.staleEvents(events));
    }

    private static int[] checkEvents(int[] events) {
        if (events != null) {
            int i = 0;
            while (i < events.length) {
                TextTextProperty.checkEvent(events[i]);
                ++i;
            }
        }
        return events;
    }

    private static void checkEvent(int event) {
        if (event != 0 && event != 24 && event != 16 && event != 14) {
            throw new IllegalArgumentException("UpdateEventType [" + event + "] is not supported.");
        }
    }

    private static int[] staleEvents(int[] changeEvents) {
        if (changeEvents != null) {
            int i = 0;
            while (i < changeEvents.length) {
                if (changeEvents[i] == 24) {
                    return null;
                }
                ++i;
            }
        }
        return new int[]{24};
    }

    String doGetStringValue(Object source) {
        return ((Text)source).getText();
    }

    void doSetStringValue(Object source, String value) {
        ((Text)source).setText(value == null ? "" : value);
    }

    public String toString() {
        return "Text.text <String>";
    }

    protected ISWTObservableValue wrapObservable(IObservableValue observable, Widget widget) {
        return new SWTVetoableValueDecorator(widget, this, observable);
    }
}

