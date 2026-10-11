/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.property.value.IValueProperty
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.databinding.swt;

import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.jface.databinding.swt.ISWTObservableValue;
import org.eclipse.swt.widgets.Widget;

public interface IWidgetValueProperty
extends IValueProperty {
    public ISWTObservableValue observe(Widget var1);

    public ISWTObservableValue observeDelayed(int var1, Widget var2);
}

