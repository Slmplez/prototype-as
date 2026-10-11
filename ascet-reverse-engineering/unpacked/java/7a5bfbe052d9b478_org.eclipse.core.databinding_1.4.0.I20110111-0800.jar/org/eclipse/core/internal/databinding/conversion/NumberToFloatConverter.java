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

public class NumberToFloatConverter
extends NumberToNumberConverter {
    static /* synthetic */ Class class$0;

    public NumberToFloatConverter(NumberFormat numberFormat, Class fromType, boolean primitive) {
        Class<?> clazz;
        if (primitive) {
            clazz = Float.TYPE;
        } else {
            clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.lang.Float");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
        }
        super(numberFormat, fromType, clazz);
    }

    protected Number doConvert(Number number) {
        if (StringToNumberParser.inFloatRange(number)) {
            return new Float(number.floatValue());
        }
        return null;
    }
}

