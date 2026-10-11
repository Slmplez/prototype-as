/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.NumberFormat
 */
package org.eclipse.core.internal.databinding.conversion;

import com.ibm.icu.text.NumberFormat;
import org.eclipse.core.databinding.conversion.Converter;

public class IntegerToStringConverter
extends Converter {
    private final boolean primitive;
    private final NumberFormat numberFormat;
    private final Class boxedType;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    private IntegerToStringConverter(NumberFormat numberFormat, Class fromType, Class boxedType) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.String");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        super(fromType, clazz);
        this.primitive = fromType.isPrimitive();
        this.numberFormat = numberFormat;
        this.boxedType = boxedType;
    }

    public Object convert(Object fromObject) {
        if (fromObject == null && !this.primitive) {
            return "";
        }
        if (!this.boxedType.isInstance(fromObject)) {
            throw new IllegalArgumentException("'fromObject' is not of type [" + this.boxedType + "].");
        }
        return this.numberFormat.format(((Number)fromObject).longValue());
    }

    public static IntegerToStringConverter fromShort(boolean primitive) {
        return IntegerToStringConverter.fromShort(NumberFormat.getIntegerInstance(), primitive);
    }

    public static IntegerToStringConverter fromShort(NumberFormat numberFormat, boolean primitive) {
        Class<?> clazz;
        Class<?> clazz2;
        if (primitive) {
            clazz2 = Short.TYPE;
        } else {
            clazz2 = class$1;
            if (clazz2 == null) {
                try {
                    clazz2 = class$1 = Class.forName("java.lang.Short");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
        }
        if ((clazz = class$1) == null) {
            try {
                clazz = class$1 = Class.forName("java.lang.Short");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return new IntegerToStringConverter(numberFormat, clazz2, clazz);
    }

    public static IntegerToStringConverter fromByte(boolean primitive) {
        return IntegerToStringConverter.fromByte(NumberFormat.getIntegerInstance(), primitive);
    }

    public static IntegerToStringConverter fromByte(NumberFormat numberFormat, boolean primitive) {
        Class<?> clazz;
        Class<?> clazz2;
        if (primitive) {
            clazz2 = Byte.TYPE;
        } else {
            clazz2 = class$2;
            if (clazz2 == null) {
                try {
                    clazz2 = class$2 = Class.forName("java.lang.Byte");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
        }
        if ((clazz = class$2) == null) {
            try {
                clazz = class$2 = Class.forName("java.lang.Byte");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return new IntegerToStringConverter(numberFormat, clazz2, clazz);
    }
}

