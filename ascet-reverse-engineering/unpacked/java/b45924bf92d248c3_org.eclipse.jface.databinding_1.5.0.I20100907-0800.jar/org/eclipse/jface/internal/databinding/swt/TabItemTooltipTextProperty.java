/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.TabItem
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetStringValueProperty;
import org.eclipse.swt.widgets.TabItem;

public class TabItemTooltipTextProperty
extends WidgetStringValueProperty {
    String doGetStringValue(Object source) {
        return ((TabItem)source).getToolTipText();
    }

    void doSetStringValue(Object source, String value) {
        ((TabItem)source).setToolTipText(value);
    }

    public String toString() {
        return "TabItem.toolTipText <String>";
    }
}

