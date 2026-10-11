/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetStringValueProperty;
import org.eclipse.swt.widgets.Text;

public class TextMessageProperty
extends WidgetStringValueProperty {
    String doGetStringValue(Object source) {
        return ((Text)source).getMessage();
    }

    void doSetStringValue(Object source, String value) {
        ((Text)source).setMessage(value == null ? "" : value);
    }

    public String toString() {
        return "Text.message<String>";
    }
}

