/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.NumberFormat
 */
package org.eclipse.core.databinding.conversion;

import com.ibm.icu.text.NumberFormat;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.eclipse.core.internal.databinding.conversion.StringToNumberParser;
import org.eclipse.core.internal.databinding.validation.NumberFormatConverter;

public class StringToNumberConverter
extends NumberFormatConverter {
    private Class toType;
    private NumberFormat numberFormat;
    private final Number min;
    private final Number max;
    private final Class boxedType;
    private static final Integer MIN_INTEGER = new Integer(Integer.MIN_VALUE);
    private static final Integer MAX_INTEGER = new Integer(Integer.MAX_VALUE);
    private static final Double MIN_DOUBLE = new Double(-1.7976931348623157E308);
    private static final Double MAX_DOUBLE = new Double(Double.MAX_VALUE);
    private static final Long MIN_LONG = new Long(Long.MIN_VALUE);
    private static final Long MAX_LONG = new Long(Long.MAX_VALUE);
    private static final Float MIN_FLOAT = new Float(-3.4028235E38f);
    private static final Float MAX_FLOAT = new Float(Float.MAX_VALUE);
    private static final Short MIN_SHORT = new Short(Short.MIN_VALUE);
    private static final Short MAX_SHORT = new Short(Short.MAX_VALUE);
    private static final Byte MIN_BYTE = new Byte(-128);
    private static final Byte MAX_BYTE = new Byte(127);
    static Class icuBigDecimal = null;
    static Method icuBigDecimalScale = null;
    static Method icuBigDecimalUnscaledValue = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;
    static /* synthetic */ Class class$6;
    static /* synthetic */ Class class$7;
    static /* synthetic */ Class class$8;

    private StringToNumberConverter(NumberFormat numberFormat, Class toType, Number min, Number max, Class boxedType) {
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
        try {
            icuBigDecimal = Class.forName("com.ibm.icu.math.BigDecimal");
            icuBigDecimalScale = icuBigDecimal.getMethod("scale", null);
            icuBigDecimalUnscaledValue = icuBigDecimal.getMethod("unscaledValue", null);
        }
        catch (ClassNotFoundException classNotFoundException) {
        }
        catch (NoSuchMethodException noSuchMethodException) {}
        this.toType = toType;
        this.numberFormat = numberFormat;
        this.min = min;
        this.max = max;
        this.boxedType = boxedType;
    }

    public Object convert(Object fromObject) {
        StringToNumberParser.ParseResult result = StringToNumberParser.parse(fromObject, this.numberFormat, this.toType.isPrimitive());
        if (result.getPosition() != null) {
            throw new IllegalArgumentException(StringToNumberParser.createParseErrorMessage((String)fromObject, result.getPosition()));
        }
        if (result.getNumber() == null) {
            return null;
        }
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("java.lang.Integer");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz.equals(this.boxedType)) {
            if (StringToNumberParser.inIntegerRange(result.getNumber())) {
                return new Integer(result.getNumber().intValue());
            }
        } else {
            Class<?> clazz2 = class$2;
            if (clazz2 == null) {
                try {
                    clazz2 = class$2 = Class.forName("java.lang.Double");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz2.equals(this.boxedType)) {
                if (StringToNumberParser.inDoubleRange(result.getNumber())) {
                    return new Double(result.getNumber().doubleValue());
                }
            } else {
                Class<?> clazz3 = class$3;
                if (clazz3 == null) {
                    try {
                        clazz3 = class$3 = Class.forName("java.lang.Long");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if (clazz3.equals(this.boxedType)) {
                    if (StringToNumberParser.inLongRange(result.getNumber())) {
                        return new Long(result.getNumber().longValue());
                    }
                } else {
                    Class<?> clazz4 = class$4;
                    if (clazz4 == null) {
                        try {
                            clazz4 = class$4 = Class.forName("java.lang.Float");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    if (clazz4.equals(this.boxedType)) {
                        if (StringToNumberParser.inFloatRange(result.getNumber())) {
                            return new Float(result.getNumber().floatValue());
                        }
                    } else {
                        Class<?> clazz5 = class$5;
                        if (clazz5 == null) {
                            try {
                                clazz5 = class$5 = Class.forName("java.math.BigInteger");
                            }
                            catch (ClassNotFoundException classNotFoundException) {
                                throw new NoClassDefFoundError(classNotFoundException.getMessage());
                            }
                        }
                        if (clazz5.equals(this.boxedType)) {
                            Number n = result.getNumber();
                            if (n instanceof Long) {
                                return BigInteger.valueOf(n.longValue());
                            }
                            if (n instanceof BigInteger) {
                                return n;
                            }
                            if (n instanceof BigDecimal) {
                                return ((BigDecimal)n).toBigInteger();
                            }
                            return new BigDecimal(n.doubleValue()).toBigInteger();
                        }
                        Class<?> clazz6 = class$6;
                        if (clazz6 == null) {
                            try {
                                clazz6 = class$6 = Class.forName("java.math.BigDecimal");
                            }
                            catch (ClassNotFoundException classNotFoundException) {
                                throw new NoClassDefFoundError(classNotFoundException.getMessage());
                            }
                        }
                        if (clazz6.equals(this.boxedType)) {
                            Number n = result.getNumber();
                            if (n instanceof Long) {
                                return BigDecimal.valueOf(n.longValue());
                            }
                            if (n instanceof BigInteger) {
                                return new BigDecimal((BigInteger)n);
                            }
                            if (n instanceof BigDecimal) {
                                return n;
                            }
                            if (icuBigDecimal != null && icuBigDecimal.isInstance(n)) {
                                try {
                                    int scale = (Integer)icuBigDecimalScale.invoke(n, null);
                                    BigInteger unscaledValue = (BigInteger)icuBigDecimalUnscaledValue.invoke(n, null);
                                    return new BigDecimal(unscaledValue, scale);
                                }
                                catch (IllegalAccessException illegalAccessException) {
                                    throw new IllegalArgumentException("Error (IllegalAccessException) converting BigDecimal using ICU");
                                }
                                catch (InvocationTargetException invocationTargetException) {
                                    throw new IllegalArgumentException("Error (InvocationTargetException) converting BigDecimal using ICU");
                                }
                            }
                            if (n instanceof Double) {
                                BigDecimal bd = new BigDecimal(n.doubleValue());
                                if (bd.scale() == 0) {
                                    return bd;
                                }
                                throw new IllegalArgumentException("Non-integral Double value returned from NumberFormat which cannot be accurately stored in a BigDecimal due to lost precision. Consider using ICU4J or Java 5 which can properly format and parse these types.");
                            }
                        } else {
                            Class<?> clazz7 = class$7;
                            if (clazz7 == null) {
                                try {
                                    clazz7 = class$7 = Class.forName("java.lang.Short");
                                }
                                catch (ClassNotFoundException classNotFoundException) {
                                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                                }
                            }
                            if (clazz7.equals(this.boxedType)) {
                                if (StringToNumberParser.inShortRange(result.getNumber())) {
                                    return new Short(result.getNumber().shortValue());
                                }
                            } else {
                                Class<?> clazz8 = class$8;
                                if (clazz8 == null) {
                                    try {
                                        clazz8 = class$8 = Class.forName("java.lang.Byte");
                                    }
                                    catch (ClassNotFoundException classNotFoundException) {
                                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                                    }
                                }
                                if (clazz8.equals(this.boxedType) && StringToNumberParser.inByteRange(result.getNumber())) {
                                    return new Byte(result.getNumber().byteValue());
                                }
                            }
                        }
                    }
                }
            }
        }
        if (this.min != null && this.max != null) {
            throw new IllegalArgumentException(StringToNumberParser.createOutOfRangeMessage(this.min, this.max, this.numberFormat));
        }
        throw new IllegalArgumentException("Could not convert [" + fromObject + "] to type [" + this.toType + "]");
    }

    public static StringToNumberConverter toInteger(boolean primitive) {
        return StringToNumberConverter.toInteger(NumberFormat.getIntegerInstance(), primitive);
    }

    public static StringToNumberConverter toInteger(NumberFormat numberFormat, boolean primitive) {
        Class<?> clazz;
        Class<?> clazz2;
        if (primitive) {
            clazz2 = Integer.TYPE;
        } else {
            clazz2 = class$1;
            if (clazz2 == null) {
                try {
                    clazz2 = class$1 = Class.forName("java.lang.Integer");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
        }
        if ((clazz = class$1) == null) {
            try {
                clazz = class$1 = Class.forName("java.lang.Integer");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return new StringToNumberConverter(numberFormat, clazz2, MIN_INTEGER, MAX_INTEGER, clazz);
    }

    public static StringToNumberConverter toDouble(boolean primitive) {
        return StringToNumberConverter.toDouble(NumberFormat.getNumberInstance(), primitive);
    }

    public static StringToNumberConverter toDouble(NumberFormat numberFormat, boolean primitive) {
        Class<?> clazz;
        Class<?> clazz2;
        if (primitive) {
            clazz2 = Double.TYPE;
        } else {
            clazz2 = class$2;
            if (clazz2 == null) {
                try {
                    clazz2 = class$2 = Class.forName("java.lang.Double");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
        }
        if ((clazz = class$2) == null) {
            try {
                clazz = class$2 = Class.forName("java.lang.Double");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return new StringToNumberConverter(numberFormat, clazz2, MIN_DOUBLE, MAX_DOUBLE, clazz);
    }

    public static StringToNumberConverter toLong(boolean primitive) {
        return StringToNumberConverter.toLong(NumberFormat.getIntegerInstance(), primitive);
    }

    public static StringToNumberConverter toLong(NumberFormat numberFormat, boolean primitive) {
        Class<?> clazz;
        Class<?> clazz2;
        if (primitive) {
            clazz2 = Long.TYPE;
        } else {
            clazz2 = class$3;
            if (clazz2 == null) {
                try {
                    clazz2 = class$3 = Class.forName("java.lang.Long");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
        }
        if ((clazz = class$3) == null) {
            try {
                clazz = class$3 = Class.forName("java.lang.Long");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return new StringToNumberConverter(numberFormat, clazz2, MIN_LONG, MAX_LONG, clazz);
    }

    public static StringToNumberConverter toFloat(boolean primitive) {
        return StringToNumberConverter.toFloat(NumberFormat.getNumberInstance(), primitive);
    }

    public static StringToNumberConverter toFloat(NumberFormat numberFormat, boolean primitive) {
        Class<?> clazz;
        Class<?> clazz2;
        if (primitive) {
            clazz2 = Float.TYPE;
        } else {
            clazz2 = class$4;
            if (clazz2 == null) {
                try {
                    clazz2 = class$4 = Class.forName("java.lang.Float");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
        }
        if ((clazz = class$4) == null) {
            try {
                clazz = class$4 = Class.forName("java.lang.Float");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return new StringToNumberConverter(numberFormat, clazz2, MIN_FLOAT, MAX_FLOAT, clazz);
    }

    public static StringToNumberConverter toBigInteger() {
        return StringToNumberConverter.toBigInteger(NumberFormat.getIntegerInstance());
    }

    public static StringToNumberConverter toBigInteger(NumberFormat numberFormat) {
        Class<?> clazz;
        Class<?> clazz2 = class$5;
        if (clazz2 == null) {
            try {
                clazz2 = class$5 = Class.forName("java.math.BigInteger");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$5) == null) {
            try {
                clazz = class$5 = Class.forName("java.math.BigInteger");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return new StringToNumberConverter(numberFormat, clazz2, null, null, clazz);
    }

    public static StringToNumberConverter toBigDecimal() {
        return StringToNumberConverter.toBigDecimal(NumberFormat.getNumberInstance());
    }

    public static StringToNumberConverter toBigDecimal(NumberFormat numberFormat) {
        Class<?> clazz;
        Class<?> clazz2 = class$6;
        if (clazz2 == null) {
            try {
                clazz2 = class$6 = Class.forName("java.math.BigDecimal");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((clazz = class$6) == null) {
            try {
                clazz = class$6 = Class.forName("java.math.BigDecimal");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return new StringToNumberConverter(numberFormat, clazz2, null, null, clazz);
    }

    public static StringToNumberConverter toShort(boolean primitive) {
        return StringToNumberConverter.toShort(NumberFormat.getIntegerInstance(), primitive);
    }

    public static StringToNumberConverter toShort(NumberFormat numberFormat, boolean primitive) {
        Class<?> clazz;
        Class<?> clazz2;
        if (primitive) {
            clazz2 = Short.TYPE;
        } else {
            clazz2 = class$7;
            if (clazz2 == null) {
                try {
                    clazz2 = class$7 = Class.forName("java.lang.Short");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
        }
        if ((clazz = class$7) == null) {
            try {
                clazz = class$7 = Class.forName("java.lang.Short");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return new StringToNumberConverter(numberFormat, clazz2, MIN_SHORT, MAX_SHORT, clazz);
    }

    public static StringToNumberConverter toByte(boolean primitive) {
        return StringToNumberConverter.toByte(NumberFormat.getIntegerInstance(), primitive);
    }

    public static StringToNumberConverter toByte(NumberFormat numberFormat, boolean primitive) {
        Class<?> clazz;
        Class<?> clazz2;
        if (primitive) {
            clazz2 = Byte.TYPE;
        } else {
            clazz2 = class$8;
            if (clazz2 == null) {
                try {
                    clazz2 = class$8 = Class.forName("java.lang.Byte");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
        }
        if ((clazz = class$8) == null) {
            try {
                clazz = class$8 = Class.forName("java.lang.Byte");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return new StringToNumberConverter(numberFormat, clazz2, MIN_BYTE, MAX_BYTE, clazz);
    }
}

