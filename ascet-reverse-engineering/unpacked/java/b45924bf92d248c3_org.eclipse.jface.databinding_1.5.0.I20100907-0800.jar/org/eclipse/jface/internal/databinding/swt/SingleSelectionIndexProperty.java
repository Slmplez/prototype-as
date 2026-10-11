/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetIntValueProperty;

public abstract class SingleSelectionIndexProperty
extends WidgetIntValueProperty {
    public SingleSelectionIndexProperty(int[] events) {
        super(events);
    }

    protected void doSetValue(Object source, Object value) {
        super.doSetValue(source, value == null ? new Integer(-1) : value);
    }
}

