/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.property.value.IValueProperty
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.jface.internal.databinding.swt.StyledTextTextProperty;
import org.eclipse.jface.internal.databinding.swt.TextTextProperty;
import org.eclipse.jface.internal.databinding.swt.WidgetDelegatingValueProperty;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.widgets.Text;

public class WidgetTextWithEventsProperty
extends WidgetDelegatingValueProperty {
    private final int[] events;
    private IValueProperty styledText;
    private IValueProperty text;
    static /* synthetic */ Class class$0;

    public WidgetTextWithEventsProperty(int[] events) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.String");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        super(clazz);
        this.events = WidgetTextWithEventsProperty.checkEvents(events);
    }

    private static int[] checkEvents(int[] events) {
        int i = 0;
        while (i < events.length) {
            WidgetTextWithEventsProperty.checkEvent(events[i]);
            ++i;
        }
        return events;
    }

    private static void checkEvent(int event) {
        if (event != 0 && event != 24 && event != 16 && event != 14) {
            throw new IllegalArgumentException("UpdateEventType [" + event + "] is not supported.");
        }
    }

    protected IValueProperty doGetDelegate(Object source) {
        if (source instanceof StyledText) {
            if (this.styledText == null) {
                this.styledText = new StyledTextTextProperty(this.events);
            }
            return this.styledText;
        }
        if (source instanceof Text) {
            if (this.text == null) {
                this.text = new TextTextProperty(this.events);
            }
            return this.text;
        }
        throw this.notSupported(source);
    }
}

