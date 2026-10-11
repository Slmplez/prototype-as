/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

public interface ISizeProvider {
    public static final int INFINITE = Integer.MAX_VALUE;

    public int getSizeFlags(boolean var1);

    public int computePreferredSize(boolean var1, int var2, int var3, int var4);
}

