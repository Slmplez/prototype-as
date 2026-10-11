/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.ToolItem
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetBooleanValueProperty;
import org.eclipse.swt.widgets.ToolItem;

public class ToolItemEnabledProperty
extends WidgetBooleanValueProperty {
    public boolean doGetBooleanValue(Object source) {
        return ((ToolItem)source).getEnabled();
    }

    void doSetBooleanValue(Object source, boolean value) {
        ((ToolItem)source).setEnabled(value);
    }

    public String toString() {
        return "ToolItem.enabled <boolean>";
    }
}

