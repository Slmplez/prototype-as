/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Combo
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetStringValueProperty;
import org.eclipse.swt.widgets.Combo;

public class ComboTextProperty
extends WidgetStringValueProperty {
    public ComboTextProperty() {
        super(24);
    }

    String doGetStringValue(Object source) {
        return ((Combo)source).getText();
    }

    void doSetStringValue(Object source, String value) {
        ((Combo)source).setText(value != null ? value : "");
    }

    public String toString() {
        return "Combo.text <String>";
    }
}

