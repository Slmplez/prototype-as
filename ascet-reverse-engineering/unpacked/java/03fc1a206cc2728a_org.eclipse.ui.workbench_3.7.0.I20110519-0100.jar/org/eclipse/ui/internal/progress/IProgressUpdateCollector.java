/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.progress;

public interface IProgressUpdateCollector {
    public void refresh();

    public void refresh(Object[] var1);

    public void add(Object[] var1);

    public void remove(Object[] var1);
}

