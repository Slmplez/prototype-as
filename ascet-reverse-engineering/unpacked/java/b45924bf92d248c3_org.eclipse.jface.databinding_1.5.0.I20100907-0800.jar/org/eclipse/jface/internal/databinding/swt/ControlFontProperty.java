/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.databinding.swt.WidgetValueProperty;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.widgets.Control;

public class ControlFontProperty
extends WidgetValueProperty {
    static /* synthetic */ Class class$0;

    public Object getValueType() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.graphics.Font");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return clazz;
    }

    protected Object doGetValue(Object source) {
        return ((Control)source).getFont();
    }

    protected void doSetValue(Object source, Object value) {
        ((Control)source).setFont((Font)value);
    }

    public String toString() {
        return "Control.font <Font>";
    }
}

