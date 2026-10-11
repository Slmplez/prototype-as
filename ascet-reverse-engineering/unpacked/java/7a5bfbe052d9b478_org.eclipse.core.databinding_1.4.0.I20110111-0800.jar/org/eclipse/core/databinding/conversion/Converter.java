/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.conversion;

import org.eclipse.core.databinding.conversion.IConverter;

public abstract class Converter
implements IConverter {
    private Object fromType;
    private Object toType;

    public Converter(Object fromType, Object toType) {
        this.fromType = fromType;
        this.toType = toType;
    }

    public Object getFromType() {
        return this.fromType;
    }

    public Object getToType() {
        return this.toType;
    }
}

