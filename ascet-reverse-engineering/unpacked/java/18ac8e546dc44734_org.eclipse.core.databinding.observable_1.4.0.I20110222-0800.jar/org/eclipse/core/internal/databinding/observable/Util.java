/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.observable;

public class Util {
    public static final boolean equals(Object left, Object right) {
        return left == null ? right == null : right != null && left.equals(right);
    }
}

