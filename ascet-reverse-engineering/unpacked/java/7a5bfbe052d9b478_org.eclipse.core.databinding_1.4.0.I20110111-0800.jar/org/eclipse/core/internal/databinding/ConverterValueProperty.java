/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.property.INativePropertyListener
 *  org.eclipse.core.databinding.property.ISimplePropertyListener
 *  org.eclipse.core.databinding.property.value.SimpleValueProperty
 */
package org.eclipse.core.internal.databinding;

import org.eclipse.core.databinding.conversion.IConverter;
import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.core.databinding.property.value.SimpleValueProperty;

public class ConverterValueProperty
extends SimpleValueProperty {
    private final IConverter converter;

    public ConverterValueProperty(IConverter converter) {
        this.converter = converter;
    }

    public Object getValueType() {
        return this.converter.getToType();
    }

    public Object getValue(Object source) {
        return this.doGetValue(source);
    }

    protected Object doGetValue(Object source) {
        return this.converter.convert(source);
    }

    protected void doSetValue(Object source, Object value) {
        throw new UnsupportedOperationException(String.valueOf(this.toString()) + ": Setter not supported on a converted value!");
    }

    public INativePropertyListener adaptListener(ISimplePropertyListener listener) {
        return null;
    }

    public String toString() {
        return "IConverter#convert(source) <IConverter#getToType()>";
    }
}

