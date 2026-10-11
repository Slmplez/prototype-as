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

public class StringToByteConverter
extends NumberFormatConverter {
    private String outOfRangeMessage;
    private NumberFormat numberFormat;
    private boolean primitive;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    private StringToByteConverter(NumberFormat numberFormat, Class toType) {
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
        this.primitive = toType.isPrimitive();
        this.numberFormat = numberFormat;
    }

    public static StringToByteConverter toByte(NumberFormat numberFormat, boolean primitive) {
        Class<?> clazz;
        if (primitive) {
            clazz = Byte.TYPE;
        } else {
            clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("java.lang.Byte");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
        }
        return new StringToByteConverter(numberFormat, clazz);
    }

    public static StringToByteConverter toByte(boolean primitive) {
        return StringToByteConverter.toByte(NumberFormat.getIntegerInstance(), primitive);
    }

    public Object convert(Object fromObject) {
        StringToNumberParser.ParseResult result = StringToNumberParser.parse(fromObject, this.numberFormat, this.primitive);
        if (result.getPosition() != null) {
            throw new IllegalArgumentException(StringToNumberParser.createParseErrorMessage((String)fromObject, result.getPosition()));
        }
        if (result.getNumber() == null) {
            return null;
        }
        if (StringToNumberParser.inByteRange(result.getNumber())) {
            return new Byte(result.getNumber().byteValue());
        }
        StringToByteConverter stringToByteConverter = this;
        synchronized (stringToByteConverter) {
            if (this.outOfRangeMessage == null) {
                this.outOfRangeMessage = StringToNumberParser.createOutOfRangeMessage(new Byte(-128), new Byte(127), this.numberFormat);
            }
            throw new IllegalArgumentException(this.outOfRangeMessage);
        }
    }
}

