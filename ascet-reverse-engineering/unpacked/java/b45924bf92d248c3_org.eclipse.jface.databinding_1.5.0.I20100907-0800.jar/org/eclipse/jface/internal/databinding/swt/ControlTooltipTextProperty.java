/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetStringValueProperty;
import org.eclipse.swt.widgets.Control;

public class ControlTooltipTextProperty
extends WidgetStringValueProperty {
    String doGetStringValue(Object source) {
        return ((Control)source).getToolTipText();
    }

    void doSetStringValue(Object source, String value) {
        ((Control)source).setToolTipText(value);
    }

    public String toString() {
        return "Control.tooltipText <String>";
    }
}

