/*
 * Decompiled with CFR 0.152.
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import java.lang.reflect.Array;
import java.util.List;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible(emulated=true)
class Platform {
    @GwtIncompatible(value="List.subList")
    static <T> List<T> subList(List<T> list, int fromIndex, int toIndex) {
        return list.subList(fromIndex, toIndex);
    }

    @GwtIncompatible(value="Class.isInstance")
    static boolean isInstance(Class<?> clazz, Object obj) {
        return clazz.isInstance(obj);
    }

    static <T> T[] clone(T[] array) {
        return (Object[])array.clone();
    }

    @GwtIncompatible(value="Array.newInstance(Class, int)")
    static <T> T[] newArray(Class<T> type, int length) {
        return (Object[])Array.newInstance(type, length);
    }

    static <T> T[] newArray(T[] reference, int length) {
        Class<?> type = reference.getClass().getComponentType();
        Object[] result = (Object[])Array.newInstance(type, length);
        return result;
    }

    private Platform() {
    }
}

