/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.NumberFormat
 */
package org.eclipse.core.internal.databinding.conversion;

import com.ibm.icu.text.NumberFormat;
import org.eclipse.core.internal.databinding.conversion.StringToNumberParser;
import org.eclipse.core.internal.databinding.validation.NumberFormatConverter;

public class StringToShortConverter
extends NumberFormatConverter {
    private final NumberFormat numberFormat;
    private final boolean primitive;
    private String outOfRangeMessage;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    private StringToShortConverter(NumberFormat numberFormat, Class toType) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.String");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        super(clazz, toType, numberFormat);
        this.numberFormat = numberFormat;
        this.primitive = toType.isPrimitive();
    }

    public Object convert(Object fromObject) {
        StringToNumberParser.ParseResult result = StringToNumberParser.parse(fromObject, this.numberFormat, this.primitive);
        if (result.getPosition() != null) {
            throw new IllegalArgumentException(StringToNumberParser.createParseErrorMessage((String)fromObject, result.getPosition()));
        }
        if (result.getNumber() == null) {
            return null;
        }
        if (StringToNumberParser.inShortRange(result.getNumber())) {
            return new Short(result.getNumber().shortValue());
        }
        StringToShortConverter stringToShortConverter = this;
        synchronized (stringToShortConverter) {
            if (this.outOfRangeMessage == null) {
                this.outOfRangeMessage = StringToNumberParser.createOutOfRangeMessage(new Short(Short.MIN_VALUE), new Short(Short.MAX_VALUE), this.numberFormat);
            }
            throw new IllegalArgumentException(this.outOfRangeMessage);
        }
    }

    public static StringToShortConverter toShort(boolean primitive) {
        return StringToShortConverter.toShort(NumberFormat.getIntegerInstance(), primitive);
    }

    public static StringToShortConverter toShort(NumberFormat numberFormat, boolean primitive) {
        Class<?> clazz;
        if (primitive) {
            clazz = Short.TYPE;
        } else {
            clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("java.lang.Short");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
        }
        return new StringToShortConverter(numberFormat, clazz);
    }
}

