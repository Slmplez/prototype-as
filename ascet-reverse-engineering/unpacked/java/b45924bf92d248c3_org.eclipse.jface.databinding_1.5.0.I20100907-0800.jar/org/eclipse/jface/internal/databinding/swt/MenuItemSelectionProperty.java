/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.MenuItem
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetBooleanValueProperty;
import org.eclipse.swt.widgets.MenuItem;

public class MenuItemSelectionProperty
extends WidgetBooleanValueProperty {
    public MenuItemSelectionProperty() {
        super(13);
    }

    boolean doGetBooleanValue(Object source) {
        return ((MenuItem)source).getSelection();
    }

    void doSetBooleanValue(Object source, boolean value) {
        ((MenuItem)source).setSelection(value);
    }

    public String toString() {
        return "MenuItem.selection <Boolean>";
    }
}

