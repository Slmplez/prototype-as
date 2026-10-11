/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.databinding.viewers;

public interface IViewerUpdater {
    public void insert(Object var1, int var2);

    public void remove(Object var1, int var2);

    public void replace(Object var1, Object var2, int var3);

    public void move(Object var1, int var2, int var3);

    public void add(Object[] var1);

    public void remove(Object[] var1);
}

