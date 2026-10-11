/*
 * Decompiled with CFR 0.152.
 */
package com.google.common.base;

import com.google.common.annotations.GwtCompatible;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible(emulated=true)
final class Platform {
    private Platform() {
    }

    static boolean isInstance(Class<?> clazz, Object obj) {
        return clazz.isInstance(obj);
    }
}

