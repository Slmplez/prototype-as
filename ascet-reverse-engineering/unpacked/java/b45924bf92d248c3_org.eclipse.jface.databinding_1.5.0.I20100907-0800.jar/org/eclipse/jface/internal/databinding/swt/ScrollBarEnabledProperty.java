/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.ScrollBar
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetBooleanValueProperty;
import org.eclipse.swt.widgets.ScrollBar;

public class ScrollBarEnabledProperty
extends WidgetBooleanValueProperty {
    public boolean doGetBooleanValue(Object source) {
        return ((ScrollBar)source).getEnabled();
    }

    void doSetBooleanValue(Object source, boolean value) {
        ((ScrollBar)source).setEnabled(value);
    }

    public String toString() {
        return "ScrollBar.enabled <boolean>";
    }
}

