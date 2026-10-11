/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Combo
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetStringValueProperty;
import org.eclipse.swt.widgets.Combo;

public class ComboSelectionProperty
extends WidgetStringValueProperty {
    public ComboSelectionProperty() {
        super(24);
    }

    String doGetStringValue(Object source) {
        return ((Combo)source).getText();
    }

    void doSetStringValue(Object source, String value) {
        Combo combo = (Combo)source;
        String[] items = combo.getItems();
        int index = -1;
        if (items != null && value != null) {
            int i = 0;
            while (i < items.length) {
                if (value.equals(items[i])) {
                    index = i;
                    break;
                }
                ++i;
            }
            if (index == -1) {
                combo.setText(value);
            } else {
                combo.select(index);
            }
        }
    }

    public String toString() {
        return "Combo.selection <String>";
    }
}

