/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Slider
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetIntValueProperty;
import org.eclipse.swt.widgets.Slider;

public class SliderSelectionProperty
extends WidgetIntValueProperty {
    public SliderSelectionProperty() {
        super(13);
    }

    int doGetIntValue(Object source) {
        return ((Slider)source).getSelection();
    }

    void doSetIntValue(Object source, int value) {
        ((Slider)source).setSelection(value);
    }

    public String toString() {
        return "Slider.selection <int>";
    }
}

