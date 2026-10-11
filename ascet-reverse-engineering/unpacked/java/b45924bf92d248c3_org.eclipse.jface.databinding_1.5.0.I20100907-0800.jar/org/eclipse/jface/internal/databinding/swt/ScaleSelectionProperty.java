/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Scale
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetIntValueProperty;
import org.eclipse.swt.widgets.Scale;

public class ScaleSelectionProperty
extends WidgetIntValueProperty {
    public ScaleSelectionProperty() {
        super(13);
    }

    int doGetIntValue(Object source) {
        return ((Scale)source).getSelection();
    }

    void doSetIntValue(Object source, int value) {
        ((Scale)source).setSelection(value);
    }

    public String toString() {
        return "Scale.selection <int>";
    }
}

