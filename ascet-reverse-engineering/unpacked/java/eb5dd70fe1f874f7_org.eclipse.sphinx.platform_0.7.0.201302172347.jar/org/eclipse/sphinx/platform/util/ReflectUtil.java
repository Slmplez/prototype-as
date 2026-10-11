/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.sphinx.platform.util;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import org.eclipse.core.runtime.Assert;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class ReflectUtil {
    public static boolean isAssignableFrom(Class<?> clazz, String className) {
        Class<?>[] interfaces;
        Class<?> superClass;
        Assert.isNotNull(clazz);
        if (clazz.getName().equals(className) || clazz.getSimpleName().equals(className)) {
            return true;
        }
        if (!clazz.isInterface() && (superClass = clazz.getSuperclass()) != null && ReflectUtil.isAssignableFrom(superClass, className)) {
            return true;
        }
        Class<?>[] classArray = interfaces = clazz.getInterfaces();
        int n = interfaces.length;
        int n2 = 0;
        while (n2 < n) {
            Class<?> interfaze = classArray[n2];
            if (ReflectUtil.isAssignableFrom(interfaze, className)) {
                return true;
            }
            ++n2;
        }
        return false;
    }

    public static Field findDeclaredField(Class<?> clazz, String fieldName) {
        Assert.isNotNull(clazz);
        Field[] fieldArray = clazz.getDeclaredFields();
        int n = fieldArray.length;
        int n2 = 0;
        while (n2 < n) {
            Field declaredField = fieldArray[n2];
            if (declaredField.getName().equals(fieldName)) {
                return declaredField;
            }
            ++n2;
        }
        return null;
    }

    public static Field findField(Class<?> clazz, String fieldName) {
        Class<?>[] interfaces;
        Class<?> superClass;
        Assert.isNotNull(clazz);
        Field result = ReflectUtil.findDeclaredField(clazz, fieldName);
        if (result != null) {
            return result;
        }
        if (!clazz.isInterface() && (superClass = clazz.getSuperclass()) != null && (result = ReflectUtil.findField(superClass, fieldName)) != null) {
            return result;
        }
        Class<?>[] classArray = interfaces = clazz.getInterfaces();
        int n = interfaces.length;
        int n2 = 0;
        while (n2 < n) {
            Class<?> interfaze = classArray[n2];
            result = ReflectUtil.findField(interfaze, fieldName);
            if (result != null) {
                return result;
            }
            ++n2;
        }
        return null;
    }

    public static Object getFieldValue(Object object, String fieldName) throws NoSuchFieldException, IllegalArgumentException, IllegalAccessException {
        Assert.isNotNull((Object)object);
        Class<?> clazz = object instanceof Class ? (Class<?>)object : object.getClass();
        Field field = ReflectUtil.findField(clazz, fieldName);
        if (field == null) {
            throw new NoSuchFieldException(String.valueOf(clazz.getName()) + "#" + fieldName);
        }
        return field.get(object);
    }

    public static Object getInvisibleFieldValue(Object object, String fieldName) throws NoSuchFieldException, IllegalArgumentException, IllegalAccessException {
        Object result;
        Assert.isNotNull((Object)object);
        Class<?> clazz = object instanceof Class ? (Class<?>)object : object.getClass();
        Field field = ReflectUtil.findField(clazz, fieldName);
        if (field == null) {
            throw new NoSuchFieldException(String.valueOf(clazz.getName()) + "#" + fieldName);
        }
        boolean oldAccessible = field.isAccessible();
        field.setAccessible(true);
        try {
            result = field.get(object);
        }
        finally {
            field.setAccessible(oldAccessible);
        }
        return result;
    }

    public static Method findDeclaredMethod(Class<?> clazz, String methodName, Class<?> ... parameterTypes) {
        Assert.isNotNull(clazz);
        Method[] methodArray = clazz.getDeclaredMethods();
        int n = methodArray.length;
        int n2 = 0;
        while (n2 < n) {
            Method declaredMethod = methodArray[n2];
            if (declaredMethod.getName().equals(methodName) && ReflectUtil.compareParameterTypes(declaredMethod.getParameterTypes(), parameterTypes)) {
                return declaredMethod;
            }
            ++n2;
        }
        return null;
    }

    public static Method findMethod(Class<?> clazz, String methodName, Class<?> ... parameterTypes) throws NoSuchMethodException {
        Class<?>[] interfaces;
        Class<?> superClass;
        Assert.isNotNull(clazz);
        Method result = ReflectUtil.findDeclaredMethod(clazz, methodName, parameterTypes);
        if (result != null) {
            return result;
        }
        if (!clazz.isInterface() && (superClass = clazz.getSuperclass()) != null && (result = ReflectUtil.findMethod(superClass, methodName, parameterTypes)) != null) {
            return result;
        }
        Class<?>[] classArray = interfaces = clazz.getInterfaces();
        int n = interfaces.length;
        int n2 = 0;
        while (n2 < n) {
            Class<?> interfaze = classArray[n2];
            result = ReflectUtil.findMethod(interfaze, methodName, parameterTypes);
            if (result != null) {
                return result;
            }
            ++n2;
        }
        return null;
    }

    public static Object invokeMethod(Object object, String methodName, Object ... args) throws NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        Class[] parameterTypes;
        Assert.isNotNull((Object)object);
        Assert.isNotNull((Object)args);
        ArrayList list = new ArrayList();
        Object[] objectArray = args;
        int n = args.length;
        int n2 = 0;
        while (n2 < n) {
            Object arg = objectArray[n2];
            list.add(arg.getClass());
            ++n2;
        }
        Class<?> clazz = object instanceof Class ? (Class<?>)object : object.getClass();
        Method method = ReflectUtil.findMethod(clazz, methodName, parameterTypes = list.toArray(new Class[list.size()]));
        if (method == null) {
            throw new NoSuchMethodException(String.valueOf(clazz.getName()) + "#" + methodName + "(" + ReflectUtil.convertParameterTypesToString(parameterTypes) + ")");
        }
        return method.invoke(object, args);
    }

    public static Object invokeInvisibleMethod(Object object, String methodName, Object ... args) throws NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        Object result;
        Class[] parameterTypes;
        Assert.isNotNull((Object)object);
        Assert.isNotNull((Object)args);
        ArrayList list = new ArrayList();
        Object[] objectArray = args;
        int n = args.length;
        int n2 = 0;
        while (n2 < n) {
            Object arg = objectArray[n2];
            list.add(arg.getClass());
            ++n2;
        }
        Class<?> clazz = object instanceof Class ? (Class<?>)object : object.getClass();
        Method method = ReflectUtil.findMethod(clazz, methodName, parameterTypes = list.toArray(new Class[list.size()]));
        if (method == null) {
            throw new NoSuchMethodException(String.valueOf(clazz.getName()) + "#" + methodName + "(" + ReflectUtil.convertParameterTypesToString(parameterTypes) + ")");
        }
        boolean oldAccessible = method.isAccessible();
        method.setAccessible(true);
        try {
            result = method.invoke(object, args);
        }
        finally {
            method.setAccessible(oldAccessible);
        }
        return result;
    }

    private static boolean compareParameterTypes(Class<?>[] parameterTypes1, Class<?>[] parameterTypes2) {
        Assert.isNotNull(parameterTypes1);
        Assert.isNotNull(parameterTypes2);
        if (parameterTypes1.length != parameterTypes2.length) {
            return false;
        }
        int i = 0;
        while (i < parameterTypes1.length) {
            Class<?> parameterType1 = parameterTypes1[i];
            Class<?> parameterType2 = parameterTypes2[i];
            if (!parameterType1.isAssignableFrom(parameterType2)) {
                if (parameterType1.getName().equals("int") && parameterType2.getName().equals("java.lang.Integer") || parameterType1.getName().equals("boolean") && parameterType2.getName().equals("java.lang.Boolean")) break;
                return false;
            }
            ++i;
        }
        return true;
    }

    private static String convertParameterTypesToString(Class<?> ... parameterTypes) {
        Assert.isNotNull(parameterTypes);
        StringBuilder buf = new StringBuilder();
        int i = 0;
        while (i < parameterTypes.length) {
            Class<?> clazz;
            if (i > 0) {
                buf.append(", ");
            }
            buf.append((clazz = parameterTypes[i]) == null ? "null" : clazz.getName());
            ++i;
        }
        return buf.toString();
    }

    public static String getSimplePackageName(String qualifiedPackageName) {
        if (qualifiedPackageName != null) {
            int lastSeparatorIndex = qualifiedPackageName.lastIndexOf(".");
            if (lastSeparatorIndex != -1) {
                if (lastSeparatorIndex < qualifiedPackageName.length() - 1) {
                    return qualifiedPackageName.substring(lastSeparatorIndex + 1);
                }
                return "";
            }
            return qualifiedPackageName;
        }
        return null;
    }

    public static String getSuperPackageName(String qualifiedPackageName) {
        int lastSeparatorIndex;
        if (qualifiedPackageName != null && (lastSeparatorIndex = qualifiedPackageName.lastIndexOf(".")) != -1) {
            return qualifiedPackageName.substring(0, lastSeparatorIndex);
        }
        return null;
    }

    public static void clearAllFields(Object object) throws IllegalAccessException {
        ReflectUtil.clearAllFields(object, new String[0]);
    }

    public static void clearAllFields(Object object, String[] excludedFieldNames) throws IllegalAccessException {
        Assert.isNotNull((Object)object);
        ReflectUtil.clearAllFields(object, object.getClass(), excludedFieldNames);
    }

    private static void clearAllFields(Object object, Class<?> clazz, String[] excludedFieldNames) throws IllegalAccessException {
        Class<?>[] interfaces;
        Class<?> superClass;
        Assert.isNotNull((Object)object);
        Assert.isNotNull(clazz);
        ReflectUtil.clearDeclaredFields(object, clazz, excludedFieldNames);
        if (!clazz.isInterface() && (superClass = clazz.getSuperclass()) != null) {
            ReflectUtil.clearAllFields(object, superClass, excludedFieldNames);
        }
        Class<?>[] classArray = interfaces = clazz.getInterfaces();
        int n = interfaces.length;
        int n2 = 0;
        while (n2 < n) {
            Class<?> interfaze = classArray[n2];
            ReflectUtil.clearAllFields(object, interfaze, excludedFieldNames);
            ++n2;
        }
    }

    private static void clearDeclaredFields(Object object, Class<?> clazz, String[] excludedFieldNames) throws IllegalAccessException {
        Assert.isNotNull((Object)object);
        Assert.isNotNull(clazz);
        ArrayList excludedFieldNameList = excludedFieldNames != null ? Arrays.asList(excludedFieldNames) : new ArrayList(0);
        Field[] fieldArray = clazz.getDeclaredFields();
        int n = fieldArray.length;
        int n2 = 0;
        while (n2 < n) {
            Field declaredField = fieldArray[n2];
            if (!declaredField.getType().isPrimitive() && (declaredField.getModifiers() & 0x38) == 0 && !excludedFieldNameList.contains(declaredField.getName())) {
                boolean oldAccessible = declaredField.isAccessible();
                try {
                    declaredField.setAccessible(true);
                    declaredField.set(object, null);
                }
                finally {
                    declaredField.setAccessible(oldAccessible);
                }
            }
            ++n2;
        }
    }
}

