/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.internal.databinding.swt.WidgetBooleanValueProperty;
import org.eclipse.swt.widgets.Text;

public class TextEditableProperty
extends WidgetBooleanValueProperty {
    boolean doGetBooleanValue(Object source) {
        return ((Text)source).getEditable();
    }

    void doSetBooleanValue(Object source, boolean value) {
        ((Text)source).setEditable(value);
    }

    public String toString() {
        return "Text.editable <boolean>";
    }
}

