/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.property.INativePropertyListener
 *  org.eclipse.core.databinding.property.ISimplePropertyListener
 *  org.eclipse.core.databinding.property.value.SimpleValueProperty
 *  org.eclipse.jface.viewers.CellEditor
 */
package org.eclipse.jface.internal.databinding.viewers;

import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.core.databinding.property.value.SimpleValueProperty;
import org.eclipse.jface.viewers.CellEditor;

public class CellEditorControlProperty
extends SimpleValueProperty {
    static /* synthetic */ Class class$0;

    public Object getValueType() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.widgets.Control");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return clazz;
    }

    protected Object doGetValue(Object source) {
        return ((CellEditor)source).getControl();
    }

    protected void doSetValue(Object source, Object value) {
        throw new UnsupportedOperationException();
    }

    public INativePropertyListener adaptListener(ISimplePropertyListener listener) {
        return null;
    }

    public String toString() {
        return super.toString();
    }
}

