/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Spinner
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetIntValueProperty;
import org.eclipse.swt.widgets.Spinner;

public class SpinnerSelectionProperty
extends WidgetIntValueProperty {
    public SpinnerSelectionProperty() {
        super(24);
    }

    int doGetIntValue(Object source) {
        return ((Spinner)source).getSelection();
    }

    void doSetIntValue(Object source, int value) {
        ((Spinner)source).setSelection(value);
    }

    public String toString() {
        return "Spinner.selection <int>";
    }
}

