/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.jface.databinding.swt.WidgetValueProperty;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Control;

public class ControlLocationProperty
extends WidgetValueProperty {
    static /* synthetic */ Class class$0;

    public ControlLocationProperty() {
        super(10);
    }

    public Object getValueType() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.graphics.Point");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return clazz;
    }

    protected Object doGetValue(Object source) {
        return ((Control)source).getLocation();
    }

    protected void doSetValue(Object source, Object value) {
        ((Control)source).setLocation((Point)value);
    }

    public String toString() {
        return "Control.location <Point>";
    }
}

