/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.TableColumn
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetStringValueProperty;
import org.eclipse.swt.widgets.TableColumn;

public class TableColumnTooltipTextProperty
extends WidgetStringValueProperty {
    String doGetStringValue(Object source) {
        return ((TableColumn)source).getToolTipText();
    }

    void doSetStringValue(Object source, String value) {
        ((TableColumn)source).setToolTipText(value);
    }

    public String toString() {
        return "TableColumn.toolTipText <String>";
    }
}

