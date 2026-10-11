/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.property.INativePropertyListener
 *  org.eclipse.core.databinding.property.ISimplePropertyListener
 *  org.eclipse.core.databinding.property.value.SimpleValueProperty
 */
package org.eclipse.core.internal.databinding;

import org.eclipse.core.databinding.Binding;
import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.core.databinding.property.value.SimpleValueProperty;

public class BindingTargetProperty
extends SimpleValueProperty {
    static /* synthetic */ Class class$0;

    public Object getValueType() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.databinding.observable.IObservable");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return clazz;
    }

    protected Object doGetValue(Object source) {
        return ((Binding)source).getTarget();
    }

    protected void doSetValue(Object source, Object value) {
    }

    public INativePropertyListener adaptListener(ISimplePropertyListener listener) {
        return null;
    }

    protected void doAddListener(Object source, INativePropertyListener listener) {
    }

    protected void doRemoveListener(Object source, INativePropertyListener listener) {
    }

    public String toString() {
        return "Binding#target <IObservable>";
    }
}

