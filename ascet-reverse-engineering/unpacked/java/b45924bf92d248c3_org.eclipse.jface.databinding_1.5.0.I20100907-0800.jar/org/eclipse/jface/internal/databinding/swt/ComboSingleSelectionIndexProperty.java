/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Combo
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.SingleSelectionIndexProperty;
import org.eclipse.swt.widgets.Combo;

public class ComboSingleSelectionIndexProperty
extends SingleSelectionIndexProperty {
    public ComboSingleSelectionIndexProperty() {
        super(new int[]{13, 14});
    }

    int doGetIntValue(Object source) {
        return ((Combo)source).getSelectionIndex();
    }

    void doSetIntValue(Object source, int value) {
        if (value == -1) {
            ((Combo)source).deselectAll();
        } else {
            ((Combo)source).select(value);
        }
    }

    public String toString() {
        return "Combo.selectionIndex <int>";
    }
}

