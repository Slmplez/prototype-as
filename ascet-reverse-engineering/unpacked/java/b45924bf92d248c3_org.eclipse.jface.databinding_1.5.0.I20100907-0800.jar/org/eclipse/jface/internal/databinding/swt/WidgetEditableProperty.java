/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.property.value.IValueProperty
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.jface.internal.databinding.swt.TextEditableProperty;
import org.eclipse.jface.internal.databinding.swt.WidgetDelegatingValueProperty;
import org.eclipse.swt.widgets.Text;

public class WidgetEditableProperty
extends WidgetDelegatingValueProperty {
    IValueProperty text;

    public WidgetEditableProperty() {
        super(Boolean.TYPE);
    }

    protected IValueProperty doGetDelegate(Object source) {
        if (source instanceof Text) {
            if (this.text == null) {
                this.text = new TextEditableProperty();
            }
            return this.text;
        }
        throw this.notSupported(source);
    }
}

