/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.property.value.IValueProperty
 *  org.eclipse.swt.widgets.Text
 *  org.eclipse.swt.widgets.ToolTip
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.jface.internal.databinding.swt.TextMessageProperty;
import org.eclipse.jface.internal.databinding.swt.ToolTipMessageProperty;
import org.eclipse.jface.internal.databinding.swt.WidgetDelegatingValueProperty;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.widgets.ToolTip;

public class WidgetMessageProperty
extends WidgetDelegatingValueProperty {
    private IValueProperty text;
    private IValueProperty toolTip;
    static /* synthetic */ Class class$0;

    public WidgetMessageProperty() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.String");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        super(clazz);
    }

    protected IValueProperty doGetDelegate(Object source) {
        if (source instanceof Text) {
            if (this.text == null) {
                this.text = new TextMessageProperty();
            }
            return this.text;
        }
        if (source instanceof ToolTip) {
            if (this.toolTip == null) {
                this.toolTip = new ToolTipMessageProperty();
            }
            return this.toolTip;
        }
        throw this.notSupported(source);
    }
}

