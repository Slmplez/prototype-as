/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.NumberFormat
 */
package org.eclipse.core.internal.databinding.validation;

import com.ibm.icu.text.NumberFormat;
import org.eclipse.core.databinding.conversion.Converter;

public abstract class NumberFormatConverter
extends Converter {
    private final NumberFormat numberFormat;

    public NumberFormatConverter(Object fromType, Object toType, NumberFormat numberFormat) {
        super(fromType, toType);
        this.numberFormat = numberFormat;
    }

    NumberFormat getNumberFormat() {
        return this.numberFormat;
    }
}

