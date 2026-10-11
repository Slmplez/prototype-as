/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.DecimalFormat
 *  com.ibm.icu.text.NumberFormat
 */
package org.eclipse.core.databinding.conversion;

import com.ibm.icu.text.DecimalFormat;
import com.ibm.icu.text.NumberFormat;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.eclipse.core.databinding.conversion.Converter;

public class NumberToStringConverter
extends Converter {
    private final NumberFormat numberFormat;
    private final Class fromType;
    private boolean fromTypeFitsLong;
    private boolean fromTypeIsDecimalType;
    private boolean fromTypeIsBigInteger;
    private boolean fromTypeIsBigDecimal;
    static Class icuBigDecimal = null;
    static Constructor icuBigDecimalCtr = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;
    static /* synthetic */ Class class$6;
    static /* synthetic */ Class class$7;
    static /* synthetic */ Class class$8;

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private NumberToStringConverter(NumberFormat numberFormat, Class fromType) {
        block52: {
            block51: {
                block50: {
                    block49: {
                        Class<?> clazz = class$1;
                        if (clazz == null) {
                            try {
                                clazz = class$1 = Class.forName("java.lang.String");
                            }
                            catch (ClassNotFoundException classNotFoundException) {
                                throw new NoClassDefFoundError(classNotFoundException.getMessage());
                            }
                        }
                        super(fromType, clazz);
                        try {
                            icuBigDecimal = Class.forName("com.ibm.icu.math.BigDecimal");
                            Class[] classArray = new Class[2];
                            Class<?> clazz2 = class$0;
                            if (clazz2 == null) {
                                try {
                                    clazz2 = class$0 = Class.forName("java.math.BigInteger");
                                }
                                catch (ClassNotFoundException classNotFoundException) {
                                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                                }
                            }
                            classArray[0] = clazz2;
                            classArray[1] = Integer.TYPE;
                            icuBigDecimalCtr = icuBigDecimal.getConstructor(classArray);
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                        }
                        catch (NoSuchMethodException noSuchMethodException) {}
                        this.numberFormat = numberFormat;
                        this.fromType = fromType;
                        Class<?> clazz3 = class$2;
                        if (clazz3 == null) {
                            try {
                                clazz3 = class$2 = Class.forName("java.lang.Integer");
                            }
                            catch (ClassNotFoundException classNotFoundException) {
                                throw new NoClassDefFoundError(classNotFoundException.getMessage());
                            }
                        }
                        if (clazz3.equals(fromType) || Integer.TYPE.equals(fromType)) break block49;
                        Class<?> clazz4 = class$3;
                        if (clazz4 == null) {
                            try {
                                clazz4 = class$3 = Class.forName("java.lang.Long");
                            }
                            catch (ClassNotFoundException classNotFoundException) {
                                throw new NoClassDefFoundError(classNotFoundException.getMessage());
                            }
                        }
                        if (clazz4.equals(fromType) || Long.TYPE.equals(fromType)) break block49;
                        Class<?> clazz5 = class$4;
                        if (clazz5 == null) {
                            try {
                                clazz5 = class$4 = Class.forName("java.lang.Short");
                            }
                            catch (ClassNotFoundException classNotFoundException) {
                                throw new NoClassDefFoundError(classNotFoundException.getMessage());
                            }
                        }
                        if (clazz5.equals(fromType) || Short.TYPE.equals(fromType)) break block49;
                        Class<?> clazz6 = class$5;
                        if (clazz6 == null) {
                            try {
                                clazz6 = class$5 = Class.forName("java.lang.Byte");
                            }
                            catch (ClassNotFoundException classNotFoundException) {
                                throw new NoClassDefFoundError(classNotFoundException.getMessage());
                            }
                        }
                        if (!clazz6.equals(fromType) && !Byte.TYPE.equals(fromType)) break block50;
                    }
                    this.fromTypeFitsLong = true;
                    return;
                }
                Class<?> clazz = class$6;
                if (clazz == null) {
                    try {
                        clazz = class$6 = Class.forName("java.lang.Float");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if (clazz.equals(fromType) || Float.TYPE.equals(fromType)) break block51;
                Class<?> clazz7 = class$7;
                if (clazz7 == null) {
                    try {
                        clazz7 = class$7 = Class.forName("java.lang.Double");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if (!clazz7.equals(fromType) && !Double.TYPE.equals(fromType)) break block52;
            }
            this.fromTypeIsDecimalType = true;
            return;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.math.BigInteger");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz.equals(fromType)) {
            this.fromTypeIsBigInteger = true;
            return;
        }
        Class<?> clazz8 = class$8;
        if (clazz8 == null) {
            try {
                clazz8 = class$8 = Class.forName("java.math.BigDecimal");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (!clazz8.equals(fromType)) return;
        this.fromTypeIsBigDecimal = true;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Object convert(Object fromObject) {
        if (fromObject == null && !this.fromType.isPrimitive()) {
            return "";
        }
        Number number = (Number)fromObject;
        String result = null;
        if (this.fromTypeFitsLong) {
            NumberFormat numberFormat = this.numberFormat;
            synchronized (numberFormat) {
                result = this.numberFormat.format(number.longValue());
            }
        }
        if (this.fromTypeIsDecimalType) {
            NumberFormat numberFormat = this.numberFormat;
            synchronized (numberFormat) {
                result = this.numberFormat.format(number.doubleValue());
            }
        }
        if (this.fromTypeIsBigInteger) {
            NumberFormat numberFormat = this.numberFormat;
            synchronized (numberFormat) {
                result = this.numberFormat.format((BigInteger)number);
            }
        }
        if (this.fromTypeIsBigDecimal) {
            if (icuBigDecimal != null && icuBigDecimalCtr != null && this.numberFormat instanceof DecimalFormat) {
                BigDecimal o = (BigDecimal)fromObject;
                try {
                    fromObject = icuBigDecimalCtr.newInstance(o.unscaledValue(), new Integer(o.scale()));
                }
                catch (InstantiationException instantiationException) {
                }
                catch (InvocationTargetException invocationTargetException) {
                }
                catch (IllegalAccessException illegalAccessException) {}
            }
            NumberFormat numberFormat = this.numberFormat;
            synchronized (numberFormat) {
                result = this.numberFormat.format(fromObject);
            }
        }
        return result;
    }

    public static NumberToStringConverter fromDouble(boolean primitive) {
        return NumberToStringConverter.fromDouble(NumberFormat.getNumberInstance(), primitive);
    }

    public static NumberToStringConverter fromDouble(NumberFormat numberFormat, boolean primitive) {
        Class<?> clazz;
        if (primitive) {
            clazz = Double.TYPE;
        } else {
            clazz = class$7;
            if (clazz == null) {
                try {
                    clazz = class$7 = Class.forName("java.lang.Double");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
        }
        return new NumberToStringConverter(numberFormat, clazz);
    }

    public static NumberToStringConverter fromLong(boolean primitive) {
        return NumberToStringConverter.fromLong(NumberFormat.getIntegerInstance(), primitive);
    }

    public static NumberToStringConverter fromLong(NumberFormat numberFormat, boolean primitive) {
        Class<?> clazz;
        if (primitive) {
            clazz = Long.TYPE;
        } else {
            clazz = class$3;
            if (clazz == null) {
                try {
                    clazz = class$3 = Class.forName("java.lang.Long");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
        }
        return new NumberToStringConverter(numberFormat, clazz);
    }

    public static NumberToStringConverter fromFloat(boolean primitive) {
        return NumberToStringConverter.fromFloat(NumberFormat.getNumberInstance(), primitive);
    }

    public static NumberToStringConverter fromFloat(NumberFormat numberFormat, boolean primitive) {
        Class<?> clazz;
        if (primitive) {
            clazz = Float.TYPE;
        } else {
            clazz = class$6;
            if (clazz == null) {
                try {
                    clazz = class$6 = Class.forName("java.lang.Float");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
        }
        return new NumberToStringConverter(numberFormat, clazz);
    }

    public static NumberToStringConverter fromInteger(boolean primitive) {
        return NumberToStringConverter.fromInteger(NumberFormat.getIntegerInstance(), primitive);
    }

    public static NumberToStringConverter fromInteger(NumberFormat numberFormat, boolean primitive) {
        Class<?> clazz;
        if (primitive) {
            clazz = Integer.TYPE;
        } else {
            clazz = class$2;
            if (clazz == null) {
                try {
                    clazz = class$2 = Class.forName("java.lang.Integer");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
        }
        return new NumberToStringConverter(numberFormat, clazz);
    }

    public static NumberToStringConverter fromBigInteger() {
        return NumberToStringConverter.fromBigInteger(NumberFormat.getIntegerInstance());
    }

    public static NumberToStringConverter fromBigInteger(NumberFormat numberFormat) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.math.BigInteger");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return new NumberToStringConverter(numberFormat, clazz);
    }

    public static NumberToStringConverter fromBigDecimal() {
        return NumberToStringConverter.fromBigDecimal(NumberFormat.getNumberInstance());
    }

    public static NumberToStringConverter fromBigDecimal(NumberFormat numberFormat) {
        Class<?> clazz = class$8;
        if (clazz == null) {
            try {
                clazz = class$8 = Class.forName("java.math.BigDecimal");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return new NumberToStringConverter(numberFormat, clazz);
    }

    public static NumberToStringConverter fromShort(boolean primitive) {
        return NumberToStringConverter.fromShort(NumberFormat.getIntegerInstance(), primitive);
    }

    public static NumberToStringConverter fromShort(NumberFormat numberFormat, boolean primitive) {
        Class<?> clazz;
        if (primitive) {
            clazz = Short.TYPE;
        } else {
            clazz = class$4;
            if (clazz == null) {
                try {
                    clazz = class$4 = Class.forName("java.lang.Short");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
        }
        return new NumberToStringConverter(numberFormat, clazz);
    }

    public static NumberToStringConverter fromByte(boolean primitive) {
        return NumberToStringConverter.fromByte(NumberFormat.getIntegerInstance(), primitive);
    }

    public static NumberToStringConverter fromByte(NumberFormat numberFormat, boolean primitive) {
        Class<?> clazz;
        if (primitive) {
            clazz = Byte.TYPE;
        } else {
            clazz = class$5;
            if (clazz == null) {
                try {
                    clazz = class$5 = Class.forName("java.lang.Byte");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
        }
        return new NumberToStringConverter(numberFormat, clazz);
    }
}

