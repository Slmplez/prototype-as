/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.IEditingSupport;

public interface IEditingSupportRegistry {
    public void register(IEditingSupport var1);

    public void unregister(IEditingSupport var1);

    public IEditingSupport[] getRegisteredSupports();
}

