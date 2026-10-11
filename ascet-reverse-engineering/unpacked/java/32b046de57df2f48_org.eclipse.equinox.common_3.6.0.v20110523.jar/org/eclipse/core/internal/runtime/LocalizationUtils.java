/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.runtime;

import java.lang.reflect.Field;

public class LocalizationUtils {
    public static String safeLocalize(String key) {
        try {
            Class<?> messageClass = Class.forName("org.eclipse.core.internal.runtime.CommonMessages");
            if (messageClass == null) {
                return key;
            }
            Field field = messageClass.getDeclaredField(key);
            if (field == null) {
                return key;
            }
            Object value = field.get(null);
            if (value instanceof String) {
                return (String)value;
            }
        }
        catch (ClassNotFoundException classNotFoundException) {
        }
        catch (NoClassDefFoundError noClassDefFoundError) {
        }
        catch (SecurityException securityException) {
        }
        catch (NoSuchFieldException noSuchFieldException) {
        }
        catch (IllegalArgumentException illegalArgumentException) {
        }
        catch (IllegalAccessException illegalAccessException) {}
        return key;
    }
}

