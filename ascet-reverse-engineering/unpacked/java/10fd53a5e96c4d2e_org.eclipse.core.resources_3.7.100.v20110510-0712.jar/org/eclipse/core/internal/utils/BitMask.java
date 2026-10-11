/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.utils;

public class BitMask {
    public static boolean isSet(int flags, int mask) {
        return (flags & mask) == mask;
    }
}

