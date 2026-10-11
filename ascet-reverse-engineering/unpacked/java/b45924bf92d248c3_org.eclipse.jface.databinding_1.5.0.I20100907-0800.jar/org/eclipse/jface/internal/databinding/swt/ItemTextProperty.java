/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Item
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetStringValueProperty;
import org.eclipse.swt.widgets.Item;

public class ItemTextProperty
extends WidgetStringValueProperty {
    String doGetStringValue(Object source) {
        return ((Item)source).getText();
    }

    void doSetStringValue(Object source, String value) {
        ((Item)source).setText(value == null ? "" : value);
    }

    public String toString() {
        return "Item.text <String>";
    }
}

