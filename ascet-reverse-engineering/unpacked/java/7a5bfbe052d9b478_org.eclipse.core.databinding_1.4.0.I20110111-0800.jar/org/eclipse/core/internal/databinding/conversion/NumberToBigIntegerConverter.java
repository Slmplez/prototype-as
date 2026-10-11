/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.NumberFormat
 */
package org.eclipse.core.internal.databinding.conversion;

import com.ibm.icu.text.NumberFormat;
import java.math.BigDecimal;
import org.eclipse.core.internal.databinding.conversion.NumberToNumberConverter;

public class NumberToBigIntegerConverter
extends NumberToNumberConverter {
    static /* synthetic */ Class class$0;

    public NumberToBigIntegerConverter(NumberFormat numberFormat, Class fromType) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.math.BigInteger");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        super(numberFormat, fromType, clazz);
    }

    protected Number doConvert(Number number) {
        return NumberToBigIntegerConverter.toBigDecimal(number).toBigInteger();
    }

    private static BigDecimal toBigDecimal(Number number) {
        if (number instanceof BigDecimal) {
            return (BigDecimal)number;
        }
        return new BigDecimal(number.doubleValue());
    }
}

