/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.ICheckStateListener;

public interface ICheckable {
    public void addCheckStateListener(ICheckStateListener var1);

    public boolean getChecked(Object var1);

    public void removeCheckStateListener(ICheckStateListener var1);

    public boolean setChecked(Object var1, boolean var2);
}

