/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.util;

import java.util.HashMap;
import java.util.Map;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class Reflect {
    static final Map<Class<?>, Helper> HELPER_REGISTRY = new HashMap();

    public static void register(Class<?> class_, Helper helper) {
        HELPER_REGISTRY.put(class_, helper);
    }

    public static boolean isInstance(Class<?> class_, Object instance) {
        Helper helper = HELPER_REGISTRY.get(class_);
        if (helper != null) {
            return helper.isInstance(instance);
        }
        return class_.isInstance(instance);
    }

    public static interface Helper {
        public boolean isInstance(Object var1);

        public Object newArrayInstance(int var1);
    }
}

