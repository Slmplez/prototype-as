/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.property.list.IListProperty
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.databinding.swt;

import org.eclipse.core.databinding.property.list.IListProperty;
import org.eclipse.jface.databinding.swt.ISWTObservableList;
import org.eclipse.swt.widgets.Widget;

public interface IWidgetListProperty
extends IListProperty {
    public ISWTObservableList observe(Widget var1);
}

