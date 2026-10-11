/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Button
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetBooleanValueProperty;
import org.eclipse.swt.widgets.Button;

public class ButtonSelectionProperty
extends WidgetBooleanValueProperty {
    public ButtonSelectionProperty() {
        super(13);
    }

    boolean doGetBooleanValue(Object source) {
        return ((Button)source).getSelection();
    }

    void doSetBooleanValue(Object source, boolean value) {
        ((Button)source).setSelection(value);
    }

    public String toString() {
        return "Button.selection <Boolean>";
    }
}

