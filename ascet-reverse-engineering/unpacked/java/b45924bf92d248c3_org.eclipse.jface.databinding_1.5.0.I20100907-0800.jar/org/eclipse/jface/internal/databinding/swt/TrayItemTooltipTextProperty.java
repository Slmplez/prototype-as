/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.TrayItem
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetStringValueProperty;
import org.eclipse.swt.widgets.TrayItem;

public class TrayItemTooltipTextProperty
extends WidgetStringValueProperty {
    String doGetStringValue(Object source) {
        return ((TrayItem)source).getToolTipText();
    }

    void doSetStringValue(Object source, String value) {
        ((TrayItem)source).setToolTipText(value);
    }

    public String toString() {
        return "TrayItem.toolTipText <String>";
    }
}

