/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.LabelProvider
 */
package org.eclipse.ui.views.properties;

import org.eclipse.jface.viewers.LabelProvider;

public class ComboBoxLabelProvider
extends LabelProvider {
    private String[] values;

    public ComboBoxLabelProvider(String[] values) {
        this.values = values;
    }

    public String[] getValues() {
        return this.values;
    }

    public void setValues(String[] values) {
        this.values = values;
    }

    public String getText(Object element) {
        if (element == null) {
            return "";
        }
        if (element instanceof Integer) {
            int index = (Integer)element;
            if (index >= 0 && index < this.values.length) {
                return this.values[index];
            }
            return "";
        }
        return "";
    }
}

