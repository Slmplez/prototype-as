/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.core.databinding.property.INativePropertyListener
 *  org.eclipse.core.databinding.property.IProperty
 *  org.eclipse.core.databinding.property.ISimplePropertyListener
 *  org.eclipse.core.databinding.property.value.SimpleValueProperty
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.databinding.swt;

import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.IProperty;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.core.databinding.property.value.SimpleValueProperty;
import org.eclipse.jface.databinding.swt.ISWTObservableValue;
import org.eclipse.jface.databinding.swt.IWidgetValueProperty;
import org.eclipse.jface.databinding.swt.SWTObservables;
import org.eclipse.jface.internal.databinding.swt.SWTObservableValueDecorator;
import org.eclipse.jface.internal.databinding.swt.WidgetListener;
import org.eclipse.swt.widgets.Widget;

public abstract class WidgetValueProperty
extends SimpleValueProperty
implements IWidgetValueProperty {
    private int[] changeEvents;
    private int[] staleEvents;

    protected WidgetValueProperty() {
        this(null, null);
    }

    protected WidgetValueProperty(int changeEvent) {
        this(new int[]{changeEvent}, null);
    }

    protected WidgetValueProperty(int[] changeEvents) {
        this(changeEvents, null);
    }

    public WidgetValueProperty(int[] changeEvents, int[] staleEvents) {
        this.changeEvents = changeEvents;
        this.staleEvents = staleEvents;
    }

    public INativePropertyListener adaptListener(ISimplePropertyListener listener) {
        if (this.changeEvents == null && this.staleEvents == null) {
            return null;
        }
        return new WidgetListener((IProperty)this, listener, this.changeEvents, this.staleEvents);
    }

    public IObservableValue observe(Object source) {
        if (source instanceof Widget) {
            return this.observe((Widget)source);
        }
        return super.observe(source);
    }

    public IObservableValue observe(Realm realm, Object source) {
        return this.wrapObservable(super.observe(realm, source), (Widget)source);
    }

    protected ISWTObservableValue wrapObservable(IObservableValue observable, Widget widget) {
        return new SWTObservableValueDecorator(observable, widget);
    }

    public ISWTObservableValue observe(Widget widget) {
        return (ISWTObservableValue)this.observe(SWTObservables.getRealm(widget.getDisplay()), widget);
    }

    public ISWTObservableValue observeDelayed(int delay, Widget widget) {
        return SWTObservables.observeDelayedValue(delay, this.observe(widget));
    }

    public abstract /* synthetic */ Object getValueType();
}

