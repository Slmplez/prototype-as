/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.presentations.util;

import org.eclipse.ui.presentations.IPresentablePart;

public interface IPresentablePartList {
    public void insert(IPresentablePart var1, int var2);

    public void remove(IPresentablePart var1);

    public void move(IPresentablePart var1, int var2);

    public int size();

    public void select(IPresentablePart var1);

    public IPresentablePart[] getPartList();
}

