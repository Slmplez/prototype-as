/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.CCombo
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetStringValueProperty;
import org.eclipse.swt.custom.CCombo;

public class CComboSelectionProperty
extends WidgetStringValueProperty {
    public CComboSelectionProperty() {
        super(24);
    }

    String doGetStringValue(Object source) {
        return ((CCombo)source).getText();
    }

    void doSetStringValue(Object source, String value) {
        CCombo ccombo = (CCombo)source;
        String[] items = ccombo.getItems();
        int index = -1;
        if (value == null) {
            ccombo.select(-1);
        } else if (items != null) {
            int i = 0;
            while (i < items.length) {
                if (value.equals(items[i])) {
                    index = i;
                    break;
                }
                ++i;
            }
            if (index == -1) {
                ccombo.setText(value);
            } else {
                ccombo.select(index);
            }
        }
    }

    public String toString() {
        return "CCombo.selection <String>";
    }
}

