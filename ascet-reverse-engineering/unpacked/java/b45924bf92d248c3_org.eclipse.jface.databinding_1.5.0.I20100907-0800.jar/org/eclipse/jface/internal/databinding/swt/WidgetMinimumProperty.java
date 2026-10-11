/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.property.value.IValueProperty
 *  org.eclipse.swt.widgets.Scale
 *  org.eclipse.swt.widgets.Slider
 *  org.eclipse.swt.widgets.Spinner
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.jface.internal.databinding.swt.ScaleMinimumProperty;
import org.eclipse.jface.internal.databinding.swt.SliderMinimumProperty;
import org.eclipse.jface.internal.databinding.swt.SpinnerMinimumProperty;
import org.eclipse.jface.internal.databinding.swt.WidgetDelegatingValueProperty;
import org.eclipse.swt.widgets.Scale;
import org.eclipse.swt.widgets.Slider;
import org.eclipse.swt.widgets.Spinner;

public class WidgetMinimumProperty
extends WidgetDelegatingValueProperty {
    private IValueProperty scale;
    private IValueProperty slider;
    private IValueProperty spinner;

    public WidgetMinimumProperty() {
        super(Integer.TYPE);
    }

    protected IValueProperty doGetDelegate(Object source) {
        if (source instanceof Scale) {
            if (this.scale == null) {
                this.scale = new ScaleMinimumProperty();
            }
            return this.scale;
        }
        if (source instanceof Slider) {
            if (this.slider == null) {
                this.slider = new SliderMinimumProperty();
            }
            return this.slider;
        }
        if (source instanceof Spinner) {
            if (this.spinner == null) {
                this.spinner = new SpinnerMinimumProperty();
            }
            return this.spinner;
        }
        throw this.notSupported(source);
    }
}

