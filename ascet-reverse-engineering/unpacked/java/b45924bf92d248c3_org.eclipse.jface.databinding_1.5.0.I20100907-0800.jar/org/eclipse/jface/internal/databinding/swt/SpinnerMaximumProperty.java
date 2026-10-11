/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Spinner
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetIntValueProperty;
import org.eclipse.swt.widgets.Spinner;

public class SpinnerMaximumProperty
extends WidgetIntValueProperty {
    int doGetIntValue(Object source) {
        return ((Spinner)source).getMaximum();
    }

    void doSetIntValue(Object source, int value) {
        ((Spinner)source).setMaximum(value);
    }

    public String toString() {
        return "Spinner.maximum <int>";
    }
}

