/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetBooleanValueProperty;
import org.eclipse.swt.widgets.Control;

public class ControlEnabledProperty
extends WidgetBooleanValueProperty {
    public boolean doGetBooleanValue(Object source) {
        return ((Control)source).getEnabled();
    }

    void doSetBooleanValue(Object source, boolean value) {
        ((Control)source).setEnabled(value);
    }

    public String toString() {
        return "Control.enabled <boolean>";
    }
}

