/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.NumberFormat
 */
package org.eclipse.core.internal.databinding.conversion;

import com.ibm.icu.text.NumberFormat;
import org.eclipse.core.databinding.conversion.Converter;
import org.eclipse.core.internal.databinding.conversion.StringToNumberParser;

public abstract class NumberToNumberConverter
extends Converter {
    private NumberFormat numberFormat;
    private boolean primitive;
    private String outOfRangeMessage;

    protected NumberToNumberConverter(NumberFormat numberFormat, Class fromType, Class toType) {
        super(fromType, toType);
        this.numberFormat = numberFormat;
        this.primitive = toType.isPrimitive();
    }

    public final Object convert(Object fromObject) {
        if (fromObject == null) {
            if (this.primitive) {
                throw new IllegalArgumentException("Parameter 'fromObject' cannot be null.");
            }
            return null;
        }
        if (!(fromObject instanceof Number)) {
            throw new IllegalArgumentException("Parameter 'fromObject' must be of type Number.");
        }
        Number number = (Number)fromObject;
        Number result = this.doConvert(number);
        if (result != null) {
            return result;
        }
        NumberToNumberConverter numberToNumberConverter = this;
        synchronized (numberToNumberConverter) {
            if (this.outOfRangeMessage == null) {
                this.outOfRangeMessage = StringToNumberParser.createOutOfRangeMessage(new Short(Short.MIN_VALUE), new Short(Short.MAX_VALUE), this.numberFormat);
            }
            throw new IllegalArgumentException(this.outOfRangeMessage);
        }
    }

    protected abstract Number doConvert(Number var1);

    public NumberFormat getNumberFormat() {
        return this.numberFormat;
    }
}

