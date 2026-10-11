/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.jface.databinding.swt.ISWTObservableValue;
import org.eclipse.jface.internal.databinding.swt.SWTVetoableValueDecorator;
import org.eclipse.jface.internal.databinding.swt.WidgetStringValueProperty;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.widgets.Widget;

public class StyledTextTextProperty
extends WidgetStringValueProperty {
    public StyledTextTextProperty() {
        this(null);
    }

    public StyledTextTextProperty(int[] events) {
        super(StyledTextTextProperty.checkEvents(events), StyledTextTextProperty.staleEvents(events));
    }

    private static int[] checkEvents(int[] events) {
        if (events != null) {
            int i = 0;
            while (i < events.length) {
                StyledTextTextProperty.checkEvent(events[i]);
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
        return ((StyledText)source).getText();
    }

    void doSetStringValue(Object source, String value) {
        ((StyledText)source).setText(value == null ? "" : value);
    }

    public String toString() {
        return "StyledText.text <String>";
    }

    protected ISWTObservableValue wrapObservable(IObservableValue observable, Widget widget) {
        return new SWTVetoableValueDecorator(widget, this, observable);
    }
}

