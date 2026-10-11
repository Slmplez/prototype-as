/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Menu
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetBooleanValueProperty;
import org.eclipse.swt.widgets.Menu;

public class MenuEnabledProperty
extends WidgetBooleanValueProperty {
    public boolean doGetBooleanValue(Object source) {
        return ((Menu)source).getEnabled();
    }

    void doSetBooleanValue(Object source, boolean value) {
        ((Menu)source).setEnabled(value);
    }

    public String toString() {
        return "Menu.enabled <boolean>";
    }
}

