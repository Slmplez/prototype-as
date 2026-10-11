/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.NumberFormat
 */
package org.eclipse.core.internal.databinding.conversion;

import com.ibm.icu.text.NumberFormat;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.eclipse.core.internal.databinding.conversion.NumberToNumberConverter;

public class NumberToBigDecimalConverter
extends NumberToNumberConverter {
    static /* synthetic */ Class class$0;

    public NumberToBigDecimalConverter(NumberFormat numberFormat, Class fromType) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.math.BigDecimal");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        super(numberFormat, fromType, clazz);
    }

    protected Number doConvert(Number number) {
        if (number instanceof BigInteger) {
            return new BigDecimal((BigInteger)number);
        }
        return new BigDecimal(number.doubleValue());
    }
}

