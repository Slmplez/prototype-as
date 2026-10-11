/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.CTabItem
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetStringValueProperty;
import org.eclipse.swt.custom.CTabItem;

public class CTabItemTooltipTextProperty
extends WidgetStringValueProperty {
    String doGetStringValue(Object source) {
        return ((CTabItem)source).getToolTipText();
    }

    void doSetStringValue(Object source, String value) {
        ((CTabItem)source).setToolTipText(value);
    }

    public String toString() {
        return "CTabItem.toolTipText <String>";
    }
}

