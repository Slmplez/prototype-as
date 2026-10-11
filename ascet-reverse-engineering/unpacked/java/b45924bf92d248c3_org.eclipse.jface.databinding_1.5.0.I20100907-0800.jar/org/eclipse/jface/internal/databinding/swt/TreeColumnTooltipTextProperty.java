/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.TreeColumn
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetStringValueProperty;
import org.eclipse.swt.widgets.TreeColumn;

public class TreeColumnTooltipTextProperty
extends WidgetStringValueProperty {
    String doGetStringValue(Object source) {
        return ((TreeColumn)source).getToolTipText();
    }

    void doSetStringValue(Object source, String value) {
        ((TreeColumn)source).setToolTipText(value);
    }

    public String toString() {
        return "TreeColumn.toolTipText <String>";
    }
}

