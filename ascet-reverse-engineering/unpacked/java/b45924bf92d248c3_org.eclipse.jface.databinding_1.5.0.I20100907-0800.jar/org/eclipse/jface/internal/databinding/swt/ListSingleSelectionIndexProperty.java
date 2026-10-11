/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.List
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.SingleSelectionIndexProperty;
import org.eclipse.swt.widgets.List;

public class ListSingleSelectionIndexProperty
extends SingleSelectionIndexProperty {
    public ListSingleSelectionIndexProperty() {
        super(new int[]{13, 14});
    }

    int doGetIntValue(Object source) {
        return ((List)source).getSelectionIndex();
    }

    void doSetIntValue(Object source, int value) {
        if (value == -1) {
            ((List)source).deselectAll();
        } else {
            ((List)source).setSelection(value);
        }
    }

    public String toString() {
        return "List.selectionIndex <int>";
    }
}

