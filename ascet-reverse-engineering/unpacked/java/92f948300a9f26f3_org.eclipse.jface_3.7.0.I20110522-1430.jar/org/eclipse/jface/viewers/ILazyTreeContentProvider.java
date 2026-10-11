/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.IContentProvider;

public interface ILazyTreeContentProvider
extends IContentProvider {
    public void updateElement(Object var1, int var2);

    public void updateChildCount(Object var1, int var2);

    public Object getParent(Object var1);
}

