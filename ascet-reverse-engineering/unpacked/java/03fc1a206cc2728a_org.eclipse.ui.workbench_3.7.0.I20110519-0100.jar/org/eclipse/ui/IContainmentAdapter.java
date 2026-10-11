/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

public interface IContainmentAdapter {
    public static final int CHECK_CONTEXT = 1;
    public static final int CHECK_IF_CHILD = 2;
    public static final int CHECK_IF_ANCESTOR = 4;
    public static final int CHECK_IF_DESCENDANT = 8;

    public boolean contains(Object var1, Object var2, int var3);
}

