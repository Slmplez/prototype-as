/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.CLabel
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetStringValueProperty;
import org.eclipse.swt.custom.CLabel;

public class CLabelTextProperty
extends WidgetStringValueProperty {
    String doGetStringValue(Object source) {
        return ((CLabel)source).getText();
    }

    void doSetStringValue(Object source, String value) {
        ((CLabel)source).setText(value == null ? "" : value);
    }

    public String toString() {
        return "CLabel.text <String>";
    }
}

