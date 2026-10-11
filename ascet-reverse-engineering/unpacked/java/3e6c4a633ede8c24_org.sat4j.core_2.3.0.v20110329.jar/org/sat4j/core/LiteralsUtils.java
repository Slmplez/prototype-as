/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.core;

public final class LiteralsUtils {
    static final /* synthetic */ boolean $assertionsDisabled;

    private LiteralsUtils() {
    }

    public static int var(int n) {
        if (!$assertionsDisabled && n <= 1) {
            throw new AssertionError();
        }
        return n >> 1;
    }

    public static int neg(int n) {
        return n ^ 1;
    }

    public static int posLit(int n) {
        return n << 1;
    }

    public static int negLit(int n) {
        return n << 1 ^ 1;
    }

    public static int toDimacs(int n) {
        return ((n & 1) == 0 ? 1 : -1) * (n >> 1);
    }

    public static int toInternal(int n) {
        return n < 0 ? -n << 1 ^ 1 : n << 1;
    }

    static {
        $assertionsDisabled = !LiteralsUtils.class.desiredAssertionStatus();
    }
}

