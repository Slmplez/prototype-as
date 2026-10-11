/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.property.value;

import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.core.databinding.property.value.SimpleValueProperty;

public final class SelfValueProperty
extends SimpleValueProperty {
    private final Object valueType;

    public SelfValueProperty(Object valueType) {
        this.valueType = valueType;
    }

    public Object getValueType() {
        return this.valueType;
    }

    protected Object doGetValue(Object source) {
        return source;
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
}

