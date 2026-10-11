/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.NumberFormat
 */
package org.eclipse.core.internal.databinding.conversion;

import com.ibm.icu.text.NumberFormat;
import org.eclipse.core.internal.databinding.conversion.NumberToNumberConverter;
import org.eclipse.core.internal.databinding.conversion.StringToNumberParser;

public class NumberToDoubleConverter
extends NumberToNumberConverter {
    static /* synthetic */ Class class$0;

    public NumberToDoubleConverter(NumberFormat numberFormat, Class fromType, boolean primitive) {
        Class<?> clazz;
        if (primitive) {
            clazz = Double.TYPE;
        } else {
            clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.lang.Double");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
        }
        super(numberFormat, fromType, clazz);
    }

    protected Number doConvert(Number number) {
        if (StringToNumberParser.inDoubleRange(number)) {
            return new Double(number.doubleValue());
        }
        return null;
    }
}

