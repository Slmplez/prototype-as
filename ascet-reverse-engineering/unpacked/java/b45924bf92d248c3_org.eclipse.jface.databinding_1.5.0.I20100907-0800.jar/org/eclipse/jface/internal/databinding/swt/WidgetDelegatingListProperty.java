/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.property.list.DelegatingListProperty
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.core.databinding.property.list.DelegatingListProperty;
import org.eclipse.jface.databinding.swt.ISWTObservableList;
import org.eclipse.jface.databinding.swt.IWidgetListProperty;
import org.eclipse.jface.databinding.swt.SWTObservables;
import org.eclipse.swt.widgets.Widget;

abstract class WidgetDelegatingListProperty
extends DelegatingListProperty
implements IWidgetListProperty {
    RuntimeException notSupported(Object source) {
        return new IllegalArgumentException("Widget [" + source.getClass().getName() + "] is not supported.");
    }

    public WidgetDelegatingListProperty(Object elementType) {
        super(elementType);
    }

    public ISWTObservableList observe(Widget widget) {
        return (ISWTObservableList)this.observe(SWTObservables.getRealm(widget.getDisplay()), widget);
    }
}

