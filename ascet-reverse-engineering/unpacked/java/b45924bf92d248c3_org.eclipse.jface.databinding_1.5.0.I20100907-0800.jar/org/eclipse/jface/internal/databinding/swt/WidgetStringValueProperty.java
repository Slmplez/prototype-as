/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.databinding.swt.WidgetValueProperty;

public abstract class WidgetStringValueProperty
extends WidgetValueProperty {
    static /* synthetic */ Class class$0;

    WidgetStringValueProperty() {
    }

    WidgetStringValueProperty(int event) {
        super(event);
    }

    WidgetStringValueProperty(int[] events) {
        super(events);
    }

    WidgetStringValueProperty(int[] events, int[] staleEvents) {
        super(events, staleEvents);
    }

    public Object getValueType() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.String");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return clazz;
    }

    protected Object doGetValue(Object source) {
        return this.doGetStringValue(source);
    }

    protected void doSetValue(Object source, Object value) {
        this.doSetStringValue(source, (String)value);
    }

    abstract String doGetStringValue(Object var1);

    abstract void doSetStringValue(Object var1, String var2);
}

