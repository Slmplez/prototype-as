/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.property.value.DelegatingValueProperty
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.core.databinding.property.value.DelegatingValueProperty;
import org.eclipse.jface.databinding.swt.ISWTObservableValue;
import org.eclipse.jface.databinding.swt.IWidgetValueProperty;
import org.eclipse.jface.databinding.swt.SWTObservables;
import org.eclipse.swt.widgets.Widget;

abstract class WidgetDelegatingValueProperty
extends DelegatingValueProperty
implements IWidgetValueProperty {
    RuntimeException notSupported(Object source) {
        return new IllegalArgumentException("Widget [" + source.getClass().getName() + "] is not supported.");
    }

    public WidgetDelegatingValueProperty() {
    }

    public WidgetDelegatingValueProperty(Object valueType) {
        super(valueType);
    }

    public ISWTObservableValue observe(Widget widget) {
        return (ISWTObservableValue)this.observe(SWTObservables.getRealm(widget.getDisplay()), widget);
    }

    public ISWTObservableValue observeDelayed(int delay, Widget widget) {
        return SWTObservables.observeDelayedValue(delay, this.observe(widget));
    }
}

