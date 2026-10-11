/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.core.databinding.property.list.SimpleListProperty
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.databinding.swt;

import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.property.list.SimpleListProperty;
import org.eclipse.jface.databinding.swt.ISWTObservableList;
import org.eclipse.jface.databinding.swt.IWidgetListProperty;
import org.eclipse.jface.databinding.swt.SWTObservables;
import org.eclipse.jface.internal.databinding.swt.SWTObservableListDecorator;
import org.eclipse.swt.widgets.Widget;

public abstract class WidgetListProperty
extends SimpleListProperty
implements IWidgetListProperty {
    public IObservableList observe(Object source) {
        if (source instanceof Widget) {
            return this.observe((Widget)source);
        }
        return super.observe(source);
    }

    public IObservableList observe(Realm realm, Object source) {
        return new SWTObservableListDecorator(super.observe(realm, source), (Widget)source);
    }

    public ISWTObservableList observe(Widget widget) {
        return (ISWTObservableList)this.observe(SWTObservables.getRealm(widget.getDisplay()), widget);
    }

    public abstract /* synthetic */ Object getElementType();
}

