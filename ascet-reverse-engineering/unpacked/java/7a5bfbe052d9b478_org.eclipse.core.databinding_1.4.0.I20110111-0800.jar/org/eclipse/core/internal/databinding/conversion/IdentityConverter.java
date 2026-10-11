/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.conversion;

import org.eclipse.core.databinding.BindingException;
import org.eclipse.core.databinding.conversion.IConverter;

public class IdentityConverter
implements IConverter {
    private Class fromType;
    private Class toType;
    private Class[][] primitiveMap;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;
    static /* synthetic */ Class class$6;
    static /* synthetic */ Class class$7;

    public IdentityConverter(Class type) {
        Class[][] classArrayArray = new Class[8][];
        Class[] classArray = new Class[2];
        classArray[0] = Integer.TYPE;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.Integer");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[1] = clazz;
        classArrayArray[0] = classArray;
        Class[] classArray2 = new Class[2];
        classArray2[0] = Short.TYPE;
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("java.lang.Short");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray2[1] = clazz2;
        classArrayArray[1] = classArray2;
        Class[] classArray3 = new Class[2];
        classArray3[0] = Long.TYPE;
        Class<?> clazz3 = class$2;
        if (clazz3 == null) {
            try {
                clazz3 = class$2 = Class.forName("java.lang.Long");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray3[1] = clazz3;
        classArrayArray[2] = classArray3;
        Class[] classArray4 = new Class[2];
        classArray4[0] = Double.TYPE;
        Class<?> clazz4 = class$3;
        if (clazz4 == null) {
            try {
                clazz4 = class$3 = Class.forName("java.lang.Double");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray4[1] = clazz4;
        classArrayArray[3] = classArray4;
        Class[] classArray5 = new Class[2];
        classArray5[0] = Byte.TYPE;
        Class<?> clazz5 = class$4;
        if (clazz5 == null) {
            try {
                clazz5 = class$4 = Class.forName("java.lang.Byte");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray5[1] = clazz5;
        classArrayArray[4] = classArray5;
        Class[] classArray6 = new Class[2];
        classArray6[0] = Float.TYPE;
        Class<?> clazz6 = class$5;
        if (clazz6 == null) {
            try {
                clazz6 = class$5 = Class.forName("java.lang.Float");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray6[1] = clazz6;
        classArrayArray[5] = classArray6;
        Class[] classArray7 = new Class[2];
        classArray7[0] = Boolean.TYPE;
        Class<?> clazz7 = class$6;
        if (clazz7 == null) {
            try {
                clazz7 = class$6 = Class.forName("java.lang.Boolean");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray7[1] = clazz7;
        classArrayArray[6] = classArray7;
        Class[] classArray8 = new Class[2];
        classArray8[0] = Character.TYPE;
        Class<?> clazz8 = class$7;
        if (clazz8 == null) {
            try {
                clazz8 = class$7 = Class.forName("java.lang.Character");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray8[1] = clazz8;
        classArrayArray[7] = classArray8;
        this.primitiveMap = classArrayArray;
        this.fromType = type;
        this.toType = type;
    }

    public IdentityConverter(Class fromType, Class toType) {
        Class[][] classArrayArray = new Class[8][];
        Class[] classArray = new Class[2];
        classArray[0] = Integer.TYPE;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.Integer");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[1] = clazz;
        classArrayArray[0] = classArray;
        Class[] classArray2 = new Class[2];
        classArray2[0] = Short.TYPE;
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("java.lang.Short");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray2[1] = clazz2;
        classArrayArray[1] = classArray2;
        Class[] classArray3 = new Class[2];
        classArray3[0] = Long.TYPE;
        Class<?> clazz3 = class$2;
        if (clazz3 == null) {
            try {
                clazz3 = class$2 = Class.forName("java.lang.Long");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray3[1] = clazz3;
        classArrayArray[2] = classArray3;
        Class[] classArray4 = new Class[2];
        classArray4[0] = Double.TYPE;
        Class<?> clazz4 = class$3;
        if (clazz4 == null) {
            try {
                clazz4 = class$3 = Class.forName("java.lang.Double");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray4[1] = clazz4;
        classArrayArray[3] = classArray4;
        Class[] classArray5 = new Class[2];
        classArray5[0] = Byte.TYPE;
        Class<?> clazz5 = class$4;
        if (clazz5 == null) {
            try {
                clazz5 = class$4 = Class.forName("java.lang.Byte");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray5[1] = clazz5;
        classArrayArray[4] = classArray5;
        Class[] classArray6 = new Class[2];
        classArray6[0] = Float.TYPE;
        Class<?> clazz6 = class$5;
        if (clazz6 == null) {
            try {
                clazz6 = class$5 = Class.forName("java.lang.Float");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray6[1] = clazz6;
        classArrayArray[5] = classArray6;
        Class[] classArray7 = new Class[2];
        classArray7[0] = Boolean.TYPE;
        Class<?> clazz7 = class$6;
        if (clazz7 == null) {
            try {
                clazz7 = class$6 = Class.forName("java.lang.Boolean");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray7[1] = clazz7;
        classArrayArray[6] = classArray7;
        Class[] classArray8 = new Class[2];
        classArray8[0] = Character.TYPE;
        Class<?> clazz8 = class$7;
        if (clazz8 == null) {
            try {
                clazz8 = class$7 = Class.forName("java.lang.Character");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray8[1] = clazz8;
        classArrayArray[7] = classArray8;
        this.primitiveMap = classArrayArray;
        this.fromType = fromType;
        this.toType = toType;
    }

    public Object convert(Object source) {
        if (this.toType.isPrimitive() && source == null) {
            throw new BindingException("Cannot convert null to a primitive");
        }
        if (source != null) {
            Class<?> sourceClass = source.getClass();
            if (this.toType.isPrimitive() || sourceClass.isPrimitive()) {
                if (sourceClass.equals(this.toType) || this.isPrimitiveTypeMatchedWithBoxed(sourceClass, this.toType)) {
                    return source;
                }
                throw new BindingException("Boxed and unboxed types do not match");
            }
            if (!this.toType.isAssignableFrom(sourceClass)) {
                throw new BindingException(String.valueOf(sourceClass.getName()) + " is not assignable to " + this.toType.getName());
            }
        }
        return source;
    }

    public boolean isPrimitiveTypeMatchedWithBoxed(Class sourceClass, Class toClass) {
        int i = 0;
        while (i < this.primitiveMap.length) {
            if (toClass.equals(this.primitiveMap[i][0]) && sourceClass.equals(this.primitiveMap[i][1])) {
                return true;
            }
            if (sourceClass.equals(this.primitiveMap[i][0]) && toClass.equals(this.primitiveMap[i][1])) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public Object getFromType() {
        return this.fromType;
    }

    public Object getToType() {
        return this.toType;
    }
}

