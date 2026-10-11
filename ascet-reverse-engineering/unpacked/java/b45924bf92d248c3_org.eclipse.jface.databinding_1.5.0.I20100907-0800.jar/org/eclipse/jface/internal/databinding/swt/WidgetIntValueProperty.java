/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.databinding.swt.WidgetValueProperty;

public abstract class WidgetIntValueProperty
extends WidgetValueProperty {
    WidgetIntValueProperty() {
    }

    WidgetIntValueProperty(int event) {
        super(event);
    }

    WidgetIntValueProperty(int[] events) {
        super(events);
    }

    public Object getValueType() {
        return Integer.TYPE;
    }

    protected Object doGetValue(Object source) {
        return new Integer(this.doGetIntValue(source));
    }

    protected void doSetValue(Object source, Object value) {
        this.doSetIntValue(source, (Integer)value);
    }

    abstract int doGetIntValue(Object var1);

    abstract void doSetIntValue(Object var1, int var2);
}

