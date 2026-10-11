/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.CCombo
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.SingleSelectionIndexProperty;
import org.eclipse.swt.custom.CCombo;

public class CComboSingleSelectionIndexProperty
extends SingleSelectionIndexProperty {
    public CComboSingleSelectionIndexProperty() {
        super(new int[]{13, 14});
    }

    int doGetIntValue(Object source) {
        return ((CCombo)source).getSelectionIndex();
    }

    void doSetIntValue(Object source, int value) {
        if (value == -1) {
            ((CCombo)source).deselectAll();
        } else {
            ((CCombo)source).select(value);
        }
    }

    public String toString() {
        return "CCombo.selectionIndex <int>";
    }
}

