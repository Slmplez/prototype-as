/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Scale
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetIntValueProperty;
import org.eclipse.swt.widgets.Scale;

public class ScaleMinimumProperty
extends WidgetIntValueProperty {
    int doGetIntValue(Object source) {
        return ((Scale)source).getMinimum();
    }

    void doSetIntValue(Object source, int value) {
        ((Scale)source).setMinimum(value);
    }

    public String toString() {
        return "Scale.minimum <int>";
    }
}

