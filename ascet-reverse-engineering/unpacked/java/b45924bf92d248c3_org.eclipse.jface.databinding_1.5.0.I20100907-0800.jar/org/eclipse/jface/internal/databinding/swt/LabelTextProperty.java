/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Label
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetStringValueProperty;
import org.eclipse.swt.widgets.Label;

public class LabelTextProperty
extends WidgetStringValueProperty {
    String doGetStringValue(Object source) {
        return ((Label)source).getText();
    }

    void doSetStringValue(Object source, String value) {
        ((Label)source).setText(value == null ? "" : value);
    }

    public String toString() {
        return "Label.text <String>";
    }
}

