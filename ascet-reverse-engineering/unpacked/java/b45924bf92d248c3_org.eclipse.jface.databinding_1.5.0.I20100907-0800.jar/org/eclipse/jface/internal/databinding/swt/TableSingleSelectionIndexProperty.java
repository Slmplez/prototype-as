/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Table
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.SingleSelectionIndexProperty;
import org.eclipse.swt.widgets.Table;

public class TableSingleSelectionIndexProperty
extends SingleSelectionIndexProperty {
    public TableSingleSelectionIndexProperty() {
        super(new int[]{13, 14});
    }

    int doGetIntValue(Object source) {
        return ((Table)source).getSelectionIndex();
    }

    void doSetIntValue(Object source, int value) {
        if (value == -1) {
            ((Table)source).deselectAll();
        } else {
            ((Table)source).setSelection(value);
        }
    }

    public String toString() {
        return "Table.selectionIndex <int>";
    }
}

