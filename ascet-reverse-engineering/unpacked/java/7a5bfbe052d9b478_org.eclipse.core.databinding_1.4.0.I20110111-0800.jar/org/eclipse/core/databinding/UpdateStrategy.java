/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.NumberFormat
 *  org.eclipse.core.databinding.util.Policy
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.databinding;

import com.ibm.icu.text.NumberFormat;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.databinding.BindingException;
import org.eclipse.core.databinding.conversion.IConverter;
import org.eclipse.core.databinding.conversion.NumberToStringConverter;
import org.eclipse.core.databinding.conversion.StringToNumberConverter;
import org.eclipse.core.databinding.util.Policy;
import org.eclipse.core.internal.databinding.ClassLookupSupport;
import org.eclipse.core.internal.databinding.Pair;
import org.eclipse.core.internal.databinding.conversion.CharacterToStringConverter;
import org.eclipse.core.internal.databinding.conversion.IdentityConverter;
import org.eclipse.core.internal.databinding.conversion.IntegerToStringConverter;
import org.eclipse.core.internal.databinding.conversion.NumberToBigDecimalConverter;
import org.eclipse.core.internal.databinding.conversion.NumberToBigIntegerConverter;
import org.eclipse.core.internal.databinding.conversion.NumberToByteConverter;
import org.eclipse.core.internal.databinding.conversion.NumberToDoubleConverter;
import org.eclipse.core.internal.databinding.conversion.NumberToFloatConverter;
import org.eclipse.core.internal.databinding.conversion.NumberToIntegerConverter;
import org.eclipse.core.internal.databinding.conversion.NumberToLongConverter;
import org.eclipse.core.internal.databinding.conversion.NumberToShortConverter;
import org.eclipse.core.internal.databinding.conversion.ObjectToStringConverter;
import org.eclipse.core.internal.databinding.conversion.StringToByteConverter;
import org.eclipse.core.internal.databinding.conversion.StringToCharacterConverter;
import org.eclipse.core.internal.databinding.conversion.StringToShortConverter;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;

class UpdateStrategy {
    private static final String BOOLEAN_CLASS = "boolean.class";
    private static final String SHORT_CLASS = "short.class";
    private static final String BYTE_CLASS = "byte.class";
    private static final String DOUBLE_CLASS = "double.class";
    private static final String FLOAT_CLASS = "float.class";
    private static final String INTEGER_CLASS = "int.class";
    private static final String LONG_CLASS = "long.class";
    private static final String CHARACTER_CLASS = "char.class";
    private static Map converterMap;
    private static final Class[] integerClasses;
    private static final Class[] floatClasses;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;
    static /* synthetic */ Class class$6;
    static /* synthetic */ Class class$7;
    static /* synthetic */ Class class$8;
    static /* synthetic */ Class class$9;
    static /* synthetic */ Class class$10;

    static {
        Class[] classArray = new Class[9];
        classArray[0] = Byte.TYPE;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.Byte");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[1] = clazz;
        classArray[2] = Short.TYPE;
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("java.lang.Short");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[3] = clazz2;
        classArray[4] = Integer.TYPE;
        Class<?> clazz3 = class$2;
        if (clazz3 == null) {
            try {
                clazz3 = class$2 = Class.forName("java.lang.Integer");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[5] = clazz3;
        classArray[6] = Long.TYPE;
        Class<?> clazz4 = class$3;
        if (clazz4 == null) {
            try {
                clazz4 = class$3 = Class.forName("java.lang.Long");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[7] = clazz4;
        Class<?> clazz5 = class$4;
        if (clazz5 == null) {
            try {
                clazz5 = class$4 = Class.forName("java.math.BigInteger");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[8] = clazz5;
        integerClasses = classArray;
        Class[] classArray2 = new Class[5];
        classArray2[0] = Float.TYPE;
        Class<?> clazz6 = class$5;
        if (clazz6 == null) {
            try {
                clazz6 = class$5 = Class.forName("java.lang.Float");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray2[1] = clazz6;
        classArray2[2] = Double.TYPE;
        Class<?> clazz7 = class$6;
        if (clazz7 == null) {
            try {
                clazz7 = class$6 = Class.forName("java.lang.Double");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray2[3] = clazz7;
        Class<?> clazz8 = class$7;
        if (clazz8 == null) {
            try {
                clazz8 = class$7 = Class.forName("java.math.BigDecimal");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray2[4] = clazz8;
        floatClasses = classArray2;
    }

    UpdateStrategy() {
    }

    private static Class autoboxed(Class clazz) {
        if (clazz == Float.TYPE) {
            Class<?> clazz2 = class$5;
            if (clazz2 == null) {
                try {
                    clazz2 = class$5 = Class.forName("java.lang.Float");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            return clazz2;
        }
        if (clazz == Double.TYPE) {
            Class<?> clazz3 = class$6;
            if (clazz3 == null) {
                try {
                    clazz3 = class$6 = Class.forName("java.lang.Double");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            return clazz3;
        }
        if (clazz == Short.TYPE) {
            Class<?> clazz4 = class$1;
            if (clazz4 == null) {
                try {
                    clazz4 = class$1 = Class.forName("java.lang.Short");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            return clazz4;
        }
        if (clazz == Integer.TYPE) {
            Class<?> clazz5 = class$2;
            if (clazz5 == null) {
                try {
                    clazz5 = class$2 = Class.forName("java.lang.Integer");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            return clazz5;
        }
        if (clazz == Long.TYPE) {
            Class<?> clazz6 = class$3;
            if (clazz6 == null) {
                try {
                    clazz6 = class$3 = Class.forName("java.lang.Long");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            return clazz6;
        }
        if (clazz == Byte.TYPE) {
            Class<?> clazz7 = class$0;
            if (clazz7 == null) {
                try {
                    clazz7 = class$0 = Class.forName("java.lang.Byte");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            return clazz7;
        }
        if (clazz == Boolean.TYPE) {
            Class<?> clazz8 = class$8;
            if (clazz8 == null) {
                try {
                    clazz8 = class$8 = Class.forName("java.lang.Boolean");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            return clazz8;
        }
        if (clazz == Character.TYPE) {
            Class<?> clazz9 = class$9;
            if (clazz9 == null) {
                try {
                    clazz9 = class$9 = Class.forName("java.lang.Character");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            return clazz9;
        }
        return clazz;
    }

    protected final void checkAssignable(Object toType, Object fromType, String errorString) {
        Boolean assignableFromModelToModelConverter = this.isAssignableFromTo(fromType, toType);
        if (assignableFromModelToModelConverter != null && !assignableFromModelToModelConverter.booleanValue()) {
            throw new BindingException(String.valueOf(errorString) + " Expected: " + fromType + ", actual: " + toType);
        }
    }

    protected IConverter createConverter(Object fromType, Object toType) {
        Class fromClass;
        Class toClass;
        if (!(fromType instanceof Class) || !(toType instanceof Class)) {
            return new DefaultConverter(fromType, toType);
        }
        Class originalToClass = toClass = (Class)toType;
        if (toClass.isPrimitive()) {
            toClass = UpdateStrategy.autoboxed(toClass);
        }
        Class originalFromClass = fromClass = (Class)fromType;
        if (fromClass.isPrimitive()) {
            fromClass = UpdateStrategy.autoboxed(fromClass);
        }
        if (!((Class)toType).isPrimitive() && toClass.isAssignableFrom(fromClass)) {
            return new IdentityConverter(originalFromClass, originalToClass);
        }
        if (((Class)fromType).isPrimitive() && ((Class)toType).isPrimitive() && fromType.equals(toType)) {
            return new IdentityConverter(originalFromClass, originalToClass);
        }
        Map converterMap = UpdateStrategy.getConverterMap();
        Class[] supertypeHierarchyFlattened = ClassLookupSupport.getTypeHierarchyFlattened(fromClass);
        int i = 0;
        while (i < supertypeHierarchyFlattened.length) {
            Class currentFromClass = supertypeHierarchyFlattened[i];
            if (currentFromClass == toType) {
                return new IdentityConverter(fromClass, toClass);
            }
            Pair key = new Pair(UpdateStrategy.getKeyForClass(fromType, currentFromClass), UpdateStrategy.getKeyForClass(toType, toClass));
            Object converterOrClassname = converterMap.get(key);
            if (converterOrClassname instanceof IConverter) {
                return (IConverter)converterOrClassname;
            }
            if (converterOrClassname instanceof String) {
                String classname = (String)converterOrClassname;
                try {
                    Class<?> converterClass = Class.forName(classname);
                    IConverter result = (IConverter)converterClass.newInstance();
                    converterMap.put(key, result);
                    return result;
                }
                catch (Exception e) {
                    Policy.getLog().log((IStatus)new Status(4, "org.eclipse.core.databinding", 0, "Error while instantiating default converter", (Throwable)e));
                }
            }
            ++i;
        }
        if (fromClass.isAssignableFrom(toClass)) {
            return new IdentityConverter(originalFromClass, originalToClass);
        }
        return new DefaultConverter(fromType, toType);
    }

    private static synchronized Map getConverterMap() {
        if (converterMap == null) {
            Class<?> clazz;
            Class<?> clazz2;
            Class<?> clazz3;
            Class<?> clazz4;
            Class<?> clazz5;
            Class<?> clazz6;
            Class<?> clazz7;
            Class<?> clazz8;
            Class<?> clazz9;
            Class<?> clazz10;
            Class<?> clazz11;
            Class<?> clazz12;
            Class<?> clazz13;
            Class<?> clazz14;
            Class<?> clazz15;
            Class<?> clazz16;
            NumberFormat integerFormat = NumberFormat.getIntegerInstance();
            NumberFormat numberFormat = NumberFormat.getNumberInstance();
            converterMap = new HashMap();
            converterMap.put(new Pair("java.util.Date", "java.lang.String"), "org.eclipse.core.internal.databinding.conversion.DateToStringConverter");
            converterMap.put(new Pair("java.lang.String", "java.lang.Boolean"), "org.eclipse.core.internal.databinding.conversion.StringToBooleanConverter");
            converterMap.put(new Pair("java.lang.String", "java.lang.Byte"), StringToByteConverter.toByte(integerFormat, false));
            converterMap.put(new Pair("java.lang.String", "java.util.Date"), "org.eclipse.core.internal.databinding.conversion.StringToDateConverter");
            converterMap.put(new Pair("java.lang.String", "java.lang.Short"), StringToShortConverter.toShort(integerFormat, false));
            converterMap.put(new Pair("java.lang.String", "java.lang.Character"), StringToCharacterConverter.toCharacter(false));
            converterMap.put(new Pair("java.lang.String", "java.lang.Integer"), StringToNumberConverter.toInteger(integerFormat, false));
            converterMap.put(new Pair("java.lang.String", "java.lang.Double"), StringToNumberConverter.toDouble(numberFormat, false));
            converterMap.put(new Pair("java.lang.String", "java.lang.Long"), StringToNumberConverter.toLong(integerFormat, false));
            converterMap.put(new Pair("java.lang.String", "java.lang.Float"), StringToNumberConverter.toFloat(numberFormat, false));
            converterMap.put(new Pair("java.lang.String", "java.math.BigInteger"), StringToNumberConverter.toBigInteger(integerFormat));
            converterMap.put(new Pair("java.lang.String", "java.math.BigDecimal"), StringToNumberConverter.toBigDecimal(numberFormat));
            converterMap.put(new Pair("java.lang.Integer", "java.lang.String"), NumberToStringConverter.fromInteger(integerFormat, false));
            converterMap.put(new Pair("java.lang.Long", "java.lang.String"), NumberToStringConverter.fromLong(integerFormat, false));
            converterMap.put(new Pair("java.lang.Double", "java.lang.String"), NumberToStringConverter.fromDouble(numberFormat, false));
            converterMap.put(new Pair("java.lang.Float", "java.lang.String"), NumberToStringConverter.fromFloat(numberFormat, false));
            converterMap.put(new Pair("java.math.BigInteger", "java.lang.String"), NumberToStringConverter.fromBigInteger(integerFormat));
            converterMap.put(new Pair("java.math.BigDecimal", "java.lang.String"), NumberToStringConverter.fromBigDecimal(numberFormat));
            converterMap.put(new Pair("java.lang.Byte", "java.lang.String"), IntegerToStringConverter.fromByte(integerFormat, false));
            converterMap.put(new Pair("java.lang.Short", "java.lang.String"), IntegerToStringConverter.fromShort(integerFormat, false));
            converterMap.put(new Pair("java.lang.Character", "java.lang.String"), CharacterToStringConverter.fromCharacter(false));
            converterMap.put(new Pair("java.lang.Object", "java.lang.String"), "org.eclipse.core.internal.databinding.conversion.ObjectToStringConverter");
            converterMap.put(new Pair("java.lang.String", INTEGER_CLASS), StringToNumberConverter.toInteger(integerFormat, true));
            Pair pair = new Pair(INTEGER_CLASS, "java.lang.Integer");
            Class<?> clazz17 = class$2;
            if (clazz17 == null) {
                try {
                    clazz17 = class$2 = Class.forName("java.lang.Integer");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((clazz16 = class$2) == null) {
                try {
                    clazz16 = class$2 = Class.forName("java.lang.Integer");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            converterMap.put(pair, new IdentityConverter(clazz17, clazz16));
            Pair pair2 = new Pair(INTEGER_CLASS, "java.lang.Object");
            Class<?> clazz18 = class$2;
            if (clazz18 == null) {
                try {
                    clazz18 = class$2 = Class.forName("java.lang.Integer");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((clazz15 = class$10) == null) {
                try {
                    clazz15 = class$10 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            converterMap.put(pair2, new IdentityConverter(clazz18, clazz15));
            converterMap.put(new Pair(INTEGER_CLASS, "java.lang.String"), NumberToStringConverter.fromInteger(integerFormat, true));
            converterMap.put(new Pair("java.lang.String", BYTE_CLASS), StringToByteConverter.toByte(integerFormat, true));
            Pair pair3 = new Pair(BYTE_CLASS, "java.lang.Byte");
            Class<?> clazz19 = class$0;
            if (clazz19 == null) {
                try {
                    clazz19 = class$0 = Class.forName("java.lang.Byte");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((clazz14 = class$0) == null) {
                try {
                    clazz14 = class$0 = Class.forName("java.lang.Byte");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            converterMap.put(pair3, new IdentityConverter(clazz19, clazz14));
            converterMap.put(new Pair(BYTE_CLASS, "java.lang.String"), IntegerToStringConverter.fromByte(integerFormat, true));
            Pair pair4 = new Pair(BYTE_CLASS, "java.lang.Object");
            Class<?> clazz20 = class$0;
            if (clazz20 == null) {
                try {
                    clazz20 = class$0 = Class.forName("java.lang.Byte");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((clazz13 = class$10) == null) {
                try {
                    clazz13 = class$10 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            converterMap.put(pair4, new IdentityConverter(clazz20, clazz13));
            converterMap.put(new Pair("java.lang.String", DOUBLE_CLASS), StringToNumberConverter.toDouble(numberFormat, true));
            converterMap.put(new Pair(DOUBLE_CLASS, "java.lang.String"), NumberToStringConverter.fromDouble(numberFormat, true));
            Pair pair5 = new Pair(DOUBLE_CLASS, "java.lang.Double");
            Class<?> clazz21 = class$6;
            if (clazz21 == null) {
                try {
                    clazz21 = class$6 = Class.forName("java.lang.Double");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((clazz12 = class$6) == null) {
                try {
                    clazz12 = class$6 = Class.forName("java.lang.Double");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            converterMap.put(pair5, new IdentityConverter(clazz21, clazz12));
            Pair pair6 = new Pair(DOUBLE_CLASS, "java.lang.Object");
            Class<?> clazz22 = class$6;
            if (clazz22 == null) {
                try {
                    clazz22 = class$6 = Class.forName("java.lang.Double");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((clazz11 = class$10) == null) {
                try {
                    clazz11 = class$10 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            converterMap.put(pair6, new IdentityConverter(clazz22, clazz11));
            converterMap.put(new Pair("java.lang.String", BOOLEAN_CLASS), "org.eclipse.core.internal.databinding.conversion.StringToBooleanPrimitiveConverter");
            Pair pair7 = new Pair(BOOLEAN_CLASS, "java.lang.Boolean");
            Class<?> clazz23 = class$8;
            if (clazz23 == null) {
                try {
                    clazz23 = class$8 = Class.forName("java.lang.Boolean");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((clazz10 = class$8) == null) {
                try {
                    clazz10 = class$8 = Class.forName("java.lang.Boolean");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            converterMap.put(pair7, new IdentityConverter(clazz23, clazz10));
            Pair pair8 = new Pair(BOOLEAN_CLASS, "java.lang.String");
            Class<?> clazz24 = class$8;
            if (clazz24 == null) {
                try {
                    clazz24 = class$8 = Class.forName("java.lang.Boolean");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            converterMap.put(pair8, new ObjectToStringConverter(clazz24));
            Pair pair9 = new Pair(BOOLEAN_CLASS, "java.lang.Object");
            Class<?> clazz25 = class$8;
            if (clazz25 == null) {
                try {
                    clazz25 = class$8 = Class.forName("java.lang.Boolean");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((clazz9 = class$10) == null) {
                try {
                    clazz9 = class$10 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            converterMap.put(pair9, new IdentityConverter(clazz25, clazz9));
            converterMap.put(new Pair("java.lang.String", FLOAT_CLASS), StringToNumberConverter.toFloat(numberFormat, true));
            converterMap.put(new Pair(FLOAT_CLASS, "java.lang.String"), NumberToStringConverter.fromFloat(numberFormat, true));
            Pair pair10 = new Pair(FLOAT_CLASS, "java.lang.Float");
            Class<?> clazz26 = class$5;
            if (clazz26 == null) {
                try {
                    clazz26 = class$5 = Class.forName("java.lang.Float");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((clazz8 = class$5) == null) {
                try {
                    clazz8 = class$5 = Class.forName("java.lang.Float");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            converterMap.put(pair10, new IdentityConverter(clazz26, clazz8));
            Pair pair11 = new Pair(FLOAT_CLASS, "java.lang.Object");
            Class<?> clazz27 = class$5;
            if (clazz27 == null) {
                try {
                    clazz27 = class$5 = Class.forName("java.lang.Float");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((clazz7 = class$10) == null) {
                try {
                    clazz7 = class$10 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            converterMap.put(pair11, new IdentityConverter(clazz27, clazz7));
            converterMap.put(new Pair("java.lang.String", SHORT_CLASS), StringToShortConverter.toShort(integerFormat, true));
            Pair pair12 = new Pair(SHORT_CLASS, "java.lang.Short");
            Class<?> clazz28 = class$1;
            if (clazz28 == null) {
                try {
                    clazz28 = class$1 = Class.forName("java.lang.Short");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((clazz6 = class$1) == null) {
                try {
                    clazz6 = class$1 = Class.forName("java.lang.Short");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            converterMap.put(pair12, new IdentityConverter(clazz28, clazz6));
            converterMap.put(new Pair(SHORT_CLASS, "java.lang.String"), IntegerToStringConverter.fromShort(integerFormat, true));
            Pair pair13 = new Pair(SHORT_CLASS, "java.lang.Object");
            Class<?> clazz29 = class$1;
            if (clazz29 == null) {
                try {
                    clazz29 = class$1 = Class.forName("java.lang.Short");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((clazz5 = class$10) == null) {
                try {
                    clazz5 = class$10 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            converterMap.put(pair13, new IdentityConverter(clazz29, clazz5));
            converterMap.put(new Pair("java.lang.String", LONG_CLASS), StringToNumberConverter.toLong(integerFormat, true));
            converterMap.put(new Pair(LONG_CLASS, "java.lang.String"), NumberToStringConverter.fromLong(integerFormat, true));
            Pair pair14 = new Pair(LONG_CLASS, "java.lang.Long");
            Class<?> clazz30 = class$3;
            if (clazz30 == null) {
                try {
                    clazz30 = class$3 = Class.forName("java.lang.Long");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((clazz4 = class$3) == null) {
                try {
                    clazz4 = class$3 = Class.forName("java.lang.Long");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            converterMap.put(pair14, new IdentityConverter(clazz30, clazz4));
            Pair pair15 = new Pair(LONG_CLASS, "java.lang.Object");
            Class<?> clazz31 = class$3;
            if (clazz31 == null) {
                try {
                    clazz31 = class$3 = Class.forName("java.lang.Long");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((clazz3 = class$10) == null) {
                try {
                    clazz3 = class$10 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            converterMap.put(pair15, new IdentityConverter(clazz31, clazz3));
            converterMap.put(new Pair("java.lang.String", CHARACTER_CLASS), StringToCharacterConverter.toCharacter(true));
            Pair pair16 = new Pair(CHARACTER_CLASS, "java.lang.Character");
            Class<?> clazz32 = class$9;
            if (clazz32 == null) {
                try {
                    clazz32 = class$9 = Class.forName("java.lang.Character");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((clazz2 = class$9) == null) {
                try {
                    clazz2 = class$9 = Class.forName("java.lang.Character");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            converterMap.put(pair16, new IdentityConverter(clazz32, clazz2));
            converterMap.put(new Pair(CHARACTER_CLASS, "java.lang.String"), CharacterToStringConverter.fromCharacter(true));
            Pair pair17 = new Pair(CHARACTER_CLASS, "java.lang.Object");
            Class<?> clazz33 = class$9;
            if (clazz33 == null) {
                try {
                    clazz33 = class$9 = Class.forName("java.lang.Character");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((clazz = class$10) == null) {
                try {
                    clazz = class$10 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            converterMap.put(pair17, new IdentityConverter(clazz33, clazz));
            converterMap.put(new Pair("org.eclipse.core.runtime.IStatus", "java.lang.String"), "org.eclipse.core.internal.databinding.conversion.StatusToStringConverter");
            UpdateStrategy.addNumberToByteConverters(converterMap, integerFormat, integerClasses);
            UpdateStrategy.addNumberToByteConverters(converterMap, numberFormat, floatClasses);
            UpdateStrategy.addNumberToShortConverters(converterMap, integerFormat, integerClasses);
            UpdateStrategy.addNumberToShortConverters(converterMap, numberFormat, floatClasses);
            UpdateStrategy.addNumberToIntegerConverters(converterMap, integerFormat, integerClasses);
            UpdateStrategy.addNumberToIntegerConverters(converterMap, numberFormat, floatClasses);
            UpdateStrategy.addNumberToLongConverters(converterMap, integerFormat, integerClasses);
            UpdateStrategy.addNumberToLongConverters(converterMap, numberFormat, floatClasses);
            UpdateStrategy.addNumberToFloatConverters(converterMap, integerFormat, integerClasses);
            UpdateStrategy.addNumberToFloatConverters(converterMap, numberFormat, floatClasses);
            UpdateStrategy.addNumberToDoubleConverters(converterMap, integerFormat, integerClasses);
            UpdateStrategy.addNumberToDoubleConverters(converterMap, numberFormat, floatClasses);
            UpdateStrategy.addNumberToBigIntegerConverters(converterMap, integerFormat, integerClasses);
            UpdateStrategy.addNumberToBigIntegerConverters(converterMap, numberFormat, floatClasses);
            UpdateStrategy.addNumberToBigDecimalConverters(converterMap, integerFormat, integerClasses);
            UpdateStrategy.addNumberToBigDecimalConverters(converterMap, numberFormat, floatClasses);
        }
        return converterMap;
    }

    private static void addNumberToByteConverters(Map map, NumberFormat numberFormat, Class[] fromTypes) {
        int i = 0;
        while (i < fromTypes.length) {
            Class fromType = fromTypes[i];
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = Class.forName("java.lang.Byte");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (!fromType.equals(clazz) && !fromType.equals(Byte.TYPE)) {
                String fromName = fromType.isPrimitive() ? UpdateStrategy.getKeyForClass(fromType, null) : fromType.getName();
                map.put(new Pair(fromName, BYTE_CLASS), new NumberToByteConverter(numberFormat, fromType, true));
                Class<?> clazz2 = class$0;
                if (clazz2 == null) {
                    try {
                        clazz2 = Class.forName("java.lang.Byte");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                map.put(new Pair(fromName, clazz2.getName()), new NumberToByteConverter(numberFormat, fromType, false));
            }
            ++i;
        }
    }

    private static void addNumberToShortConverters(Map map, NumberFormat numberFormat, Class[] fromTypes) {
        int i = 0;
        while (i < fromTypes.length) {
            Class fromType = fromTypes[i];
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = Class.forName("java.lang.Short");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (!fromType.equals(clazz) && !fromType.equals(Short.TYPE)) {
                String fromName = fromType.isPrimitive() ? UpdateStrategy.getKeyForClass(fromType, null) : fromType.getName();
                map.put(new Pair(fromName, SHORT_CLASS), new NumberToShortConverter(numberFormat, fromType, true));
                Class<?> clazz2 = class$1;
                if (clazz2 == null) {
                    try {
                        clazz2 = Class.forName("java.lang.Short");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                map.put(new Pair(fromName, clazz2.getName()), new NumberToShortConverter(numberFormat, fromType, false));
            }
            ++i;
        }
    }

    private static void addNumberToIntegerConverters(Map map, NumberFormat numberFormat, Class[] fromTypes) {
        int i = 0;
        while (i < fromTypes.length) {
            Class fromType = fromTypes[i];
            Class<?> clazz = class$2;
            if (clazz == null) {
                try {
                    clazz = Class.forName("java.lang.Integer");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (!fromType.equals(clazz) && !fromType.equals(Integer.TYPE)) {
                String fromName = fromType.isPrimitive() ? UpdateStrategy.getKeyForClass(fromType, null) : fromType.getName();
                map.put(new Pair(fromName, INTEGER_CLASS), new NumberToIntegerConverter(numberFormat, fromType, true));
                Class<?> clazz2 = class$2;
                if (clazz2 == null) {
                    try {
                        clazz2 = Class.forName("java.lang.Integer");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                map.put(new Pair(fromName, clazz2.getName()), new NumberToIntegerConverter(numberFormat, fromType, false));
            }
            ++i;
        }
    }

    private static void addNumberToLongConverters(Map map, NumberFormat numberFormat, Class[] fromTypes) {
        int i = 0;
        while (i < fromTypes.length) {
            Class fromType = fromTypes[i];
            Class<?> clazz = class$3;
            if (clazz == null) {
                try {
                    clazz = Class.forName("java.lang.Long");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (!fromType.equals(clazz) && !fromType.equals(Long.TYPE)) {
                String fromName = fromType.isPrimitive() ? UpdateStrategy.getKeyForClass(fromType, null) : fromType.getName();
                map.put(new Pair(fromName, LONG_CLASS), new NumberToLongConverter(numberFormat, fromType, true));
                Class<?> clazz2 = class$3;
                if (clazz2 == null) {
                    try {
                        clazz2 = Class.forName("java.lang.Long");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                map.put(new Pair(fromName, clazz2.getName()), new NumberToLongConverter(numberFormat, fromType, false));
            }
            ++i;
        }
    }

    private static void addNumberToFloatConverters(Map map, NumberFormat numberFormat, Class[] fromTypes) {
        int i = 0;
        while (i < fromTypes.length) {
            Class fromType = fromTypes[i];
            Class<?> clazz = class$5;
            if (clazz == null) {
                try {
                    clazz = Class.forName("java.lang.Float");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (!fromType.equals(clazz) && !fromType.equals(Float.TYPE)) {
                String fromName = fromType.isPrimitive() ? UpdateStrategy.getKeyForClass(fromType, null) : fromType.getName();
                map.put(new Pair(fromName, FLOAT_CLASS), new NumberToFloatConverter(numberFormat, fromType, true));
                Class<?> clazz2 = class$5;
                if (clazz2 == null) {
                    try {
                        clazz2 = Class.forName("java.lang.Float");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                map.put(new Pair(fromName, clazz2.getName()), new NumberToFloatConverter(numberFormat, fromType, false));
            }
            ++i;
        }
    }

    private static void addNumberToDoubleConverters(Map map, NumberFormat numberFormat, Class[] fromTypes) {
        int i = 0;
        while (i < fromTypes.length) {
            Class fromType = fromTypes[i];
            Class<?> clazz = class$6;
            if (clazz == null) {
                try {
                    clazz = Class.forName("java.lang.Double");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (!fromType.equals(clazz) && !fromType.equals(Double.TYPE)) {
                String fromName = fromType.isPrimitive() ? UpdateStrategy.getKeyForClass(fromType, null) : fromType.getName();
                map.put(new Pair(fromName, DOUBLE_CLASS), new NumberToDoubleConverter(numberFormat, fromType, true));
                Class<?> clazz2 = class$6;
                if (clazz2 == null) {
                    try {
                        clazz2 = Class.forName("java.lang.Double");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                map.put(new Pair(fromName, clazz2.getName()), new NumberToDoubleConverter(numberFormat, fromType, false));
            }
            ++i;
        }
    }

    private static void addNumberToBigIntegerConverters(Map map, NumberFormat numberFormat, Class[] fromTypes) {
        int i = 0;
        while (i < fromTypes.length) {
            Class fromType = fromTypes[i];
            Class<?> clazz = class$4;
            if (clazz == null) {
                try {
                    clazz = Class.forName("java.math.BigInteger");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (!fromType.equals(clazz)) {
                String fromName = fromType.isPrimitive() ? UpdateStrategy.getKeyForClass(fromType, null) : fromType.getName();
                Class<?> clazz2 = class$4;
                if (clazz2 == null) {
                    try {
                        clazz2 = Class.forName("java.math.BigInteger");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                map.put(new Pair(fromName, clazz2.getName()), new NumberToBigIntegerConverter(numberFormat, fromType));
            }
            ++i;
        }
    }

    private static void addNumberToBigDecimalConverters(Map map, NumberFormat numberFormat, Class[] fromTypes) {
        int i = 0;
        while (i < fromTypes.length) {
            Class fromType = fromTypes[i];
            Class<?> clazz = class$7;
            if (clazz == null) {
                try {
                    clazz = Class.forName("java.math.BigDecimal");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (!fromType.equals(clazz)) {
                String fromName = fromType.isPrimitive() ? UpdateStrategy.getKeyForClass(fromType, null) : fromType.getName();
                Class<?> clazz2 = class$7;
                if (clazz2 == null) {
                    try {
                        clazz2 = Class.forName("java.math.BigDecimal");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                map.put(new Pair(fromName, clazz2.getName()), new NumberToBigDecimalConverter(numberFormat, fromType));
            }
            ++i;
        }
    }

    private static String getKeyForClass(Object originalValue, Class filteredValue) {
        if (originalValue instanceof Class) {
            Class originalClass = (Class)originalValue;
            if (originalClass.equals(Integer.TYPE)) {
                return INTEGER_CLASS;
            }
            if (originalClass.equals(Byte.TYPE)) {
                return BYTE_CLASS;
            }
            if (originalClass.equals(Boolean.TYPE)) {
                return BOOLEAN_CLASS;
            }
            if (originalClass.equals(Double.TYPE)) {
                return DOUBLE_CLASS;
            }
            if (originalClass.equals(Float.TYPE)) {
                return FLOAT_CLASS;
            }
            if (originalClass.equals(Long.TYPE)) {
                return LONG_CLASS;
            }
            if (originalClass.equals(Short.TYPE)) {
                return SHORT_CLASS;
            }
        }
        return filteredValue.getName();
    }

    protected Boolean isAssignableFromTo(Object fromType, Object toType) {
        if (fromType instanceof Class && toType instanceof Class) {
            Class fromClass;
            Class toClass = (Class)toType;
            if (toClass.isPrimitive()) {
                toClass = UpdateStrategy.autoboxed(toClass);
            }
            if ((fromClass = (Class)fromType).isPrimitive()) {
                fromClass = UpdateStrategy.autoboxed(fromClass);
            }
            return toClass.isAssignableFrom(fromClass) ? Boolean.TRUE : Boolean.FALSE;
        }
        return null;
    }

    protected static final class DefaultConverter
    implements IConverter {
        private final Object toType;
        private final Object fromType;

        DefaultConverter(Object fromType, Object toType) {
            this.toType = toType;
            this.fromType = fromType;
        }

        public Object convert(Object fromObject) {
            return fromObject;
        }

        public Object getFromType() {
            return this.fromType;
        }

        public Object getToType() {
            return this.toType;
        }
    }
}

