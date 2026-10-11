/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Slider
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetIntValueProperty;
import org.eclipse.swt.widgets.Slider;

public class SliderMinimumProperty
extends WidgetIntValueProperty {
    int doGetIntValue(Object source) {
        return ((Slider)source).getMinimum();
    }

    void doSetIntValue(Object source, int value) {
        ((Slider)source).setMinimum(value);
    }

    public String toString() {
        return "Slider.minimum <int>";
    }
}

