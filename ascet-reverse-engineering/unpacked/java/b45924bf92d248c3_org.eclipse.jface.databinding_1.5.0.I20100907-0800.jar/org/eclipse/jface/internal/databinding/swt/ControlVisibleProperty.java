/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetBooleanValueProperty;
import org.eclipse.swt.widgets.Control;

public class ControlVisibleProperty
extends WidgetBooleanValueProperty {
    boolean doGetBooleanValue(Object source) {
        return ((Control)source).getVisible();
    }

    void doSetBooleanValue(Object source, boolean value) {
        ((Control)source).setVisible(value);
    }

    public String toString() {
        return "Control.visible <boolean>";
    }
}

