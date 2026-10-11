/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.etas.amd.core.IArrayElementAttributes
 *  com.etas.amd.core.type.AbstractAmdType
 */
package com.etas.ascet.importer.a2a.element;

import com.etas.amd.core.IArrayElementAttributes;
import com.etas.amd.core.type.AbstractAmdType;
import com.etas.ascet.importer.a2a.type.AutosarArrayTypeConverter;

public class ArrayElementAttributesImpl
implements IArrayElementAttributes {
    AutosarArrayTypeConverter arrayConverter;

    public ArrayElementAttributesImpl(AutosarArrayTypeConverter arrayConverter) {
        this.arrayConverter = arrayConverter;
    }

    public boolean isBooleanType() {
        return this.arrayConverter.isBooleanType();
    }

    public boolean isNumericType() {
        return this.arrayConverter.isNumericType();
    }

    public String getTypeRef() {
        return this.arrayConverter.getTypeRef();
    }

    public AbstractAmdType getAmdImplementationType() {
        return this.arrayConverter.getAmdImplementationType();
    }
}

