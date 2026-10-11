/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.List
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetStringValueProperty;
import org.eclipse.swt.widgets.List;

public class ListSelectionProperty
extends WidgetStringValueProperty {
    public ListSelectionProperty() {
        super(13);
    }

    String doGetStringValue(Object source) {
        List list = (List)source;
        int index = list.getSelectionIndex();
        if (index >= 0) {
            return list.getItem(index);
        }
        return null;
    }

    void doSetStringValue(Object source, String value) {
        List list = (List)source;
        String[] items = list.getItems();
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
            list.select(index);
        }
    }

    public String toString() {
        return "List.selection <String>";
    }
}

