/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.databinding.swt.WidgetValueProperty;

public abstract class WidgetBooleanValueProperty
extends WidgetValueProperty {
    WidgetBooleanValueProperty() {
    }

    WidgetBooleanValueProperty(int event) {
        super(event);
    }

    WidgetBooleanValueProperty(int[] events) {
        super(events);
    }

    public Object getValueType() {
        return Boolean.TYPE;
    }

    protected Object doGetValue(Object source) {
        return this.doGetBooleanValue(source) ? Boolean.TRUE : Boolean.FALSE;
    }

    protected void doSetValue(Object source, Object value) {
        if (value == null) {
            value = Boolean.FALSE;
        }
        this.doSetBooleanValue(source, (Boolean)value);
    }

    abstract boolean doGetBooleanValue(Object var1);

    abstract void doSetBooleanValue(Object var1, boolean var2);
}

