/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Button
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetStringValueProperty;
import org.eclipse.swt.widgets.Button;

public class ButtonTextProperty
extends WidgetStringValueProperty {
    String doGetStringValue(Object source) {
        return ((Button)source).getText();
    }

    void doSetStringValue(Object source, String value) {
        ((Button)source).setText(value == null ? "" : value);
    }

    public String toString() {
        return "Button.text <String>";
    }
}

