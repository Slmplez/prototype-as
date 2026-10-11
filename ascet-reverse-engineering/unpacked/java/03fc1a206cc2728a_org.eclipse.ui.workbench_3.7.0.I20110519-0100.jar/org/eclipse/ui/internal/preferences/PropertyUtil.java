/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.preferences;

import java.util.Iterator;
import java.util.Set;
import org.eclipse.ui.internal.preferences.IPropertyMap;
import org.eclipse.ui.internal.preferences.PropertyMapUnion;

public class PropertyUtil {
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    private PropertyUtil() {
    }

    public static boolean isEqual(IPropertyMap map1, IPropertyMap map2) {
        Set map2Keys;
        Set map1Keys = map1.keySet();
        if (!map1Keys.equals(map2Keys = map2.keySet())) {
            return false;
        }
        Iterator iter = map1Keys.iterator();
        while (iter.hasNext()) {
            String next = (String)iter.next();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            Object object = map1.getValue(next, clazz);
            Class<?> clazz2 = class$0;
            if (clazz2 == null) {
                try {
                    clazz2 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (object.equals(map2.getValue(next, clazz2))) continue;
            return false;
        }
        return true;
    }

    public static void copy(IPropertyMap destination, IPropertyMap source) {
        Set keys = source.keySet();
        Iterator iter = keys.iterator();
        while (iter.hasNext()) {
            String key = (String)iter.next();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            destination.setValue(key, source.getValue(key, clazz));
        }
    }

    public static IPropertyMap union(IPropertyMap[] sources) {
        PropertyMapUnion result = new PropertyMapUnion();
        int i = 0;
        while (i < sources.length) {
            IPropertyMap map = sources[i];
            result.addMap(map);
            ++i;
        }
        return result;
    }

    public static boolean get(IPropertyMap toRead, String propertyId, boolean defaultValue) {
        Boolean result;
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("java.lang.Boolean");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((result = (Boolean)toRead.getValue(propertyId, clazz)) == null) {
            return defaultValue;
        }
        return result;
    }

    public static int get(IPropertyMap toRead, String propertyId, int defaultValue) {
        Integer result;
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("java.lang.Integer");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((result = (Integer)toRead.getValue(propertyId, clazz)) == null) {
            return defaultValue;
        }
        return result;
    }
}

