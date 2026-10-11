/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.CCombo
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetStringValueProperty;
import org.eclipse.swt.custom.CCombo;

public class CComboTextProperty
extends WidgetStringValueProperty {
    public CComboTextProperty() {
        super(24);
    }

    String doGetStringValue(Object source) {
        return ((CCombo)source).getText();
    }

    void doSetStringValue(Object source, String value) {
        ((CCombo)source).setText(value != null ? value : "");
    }

    public String toString() {
        return "CCombo.text <String>";
    }
}

