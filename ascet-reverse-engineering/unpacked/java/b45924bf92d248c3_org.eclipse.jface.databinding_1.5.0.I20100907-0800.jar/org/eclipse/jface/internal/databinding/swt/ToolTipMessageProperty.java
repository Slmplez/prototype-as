/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.ToolTip
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetStringValueProperty;
import org.eclipse.swt.widgets.ToolTip;

public class ToolTipMessageProperty
extends WidgetStringValueProperty {
    String doGetStringValue(Object source) {
        return ((ToolTip)source).getMessage();
    }

    void doSetStringValue(Object source, String value) {
        ((ToolTip)source).setMessage(value == null ? "" : value);
    }

    public String toString() {
        return "ToolTip.message<String>";
    }
}

