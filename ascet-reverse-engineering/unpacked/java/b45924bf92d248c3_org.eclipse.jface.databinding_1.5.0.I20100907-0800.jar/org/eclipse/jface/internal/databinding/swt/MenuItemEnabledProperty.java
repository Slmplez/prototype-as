/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.MenuItem
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetBooleanValueProperty;
import org.eclipse.swt.widgets.MenuItem;

public class MenuItemEnabledProperty
extends WidgetBooleanValueProperty {
    public boolean doGetBooleanValue(Object source) {
        return ((MenuItem)source).getEnabled();
    }

    void doSetBooleanValue(Object source, boolean value) {
        ((MenuItem)source).setEnabled(value);
    }

    public String toString() {
        return "MenuItem.enabled <boolean>";
    }
}

