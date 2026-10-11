/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.IStructuredContentProvider;

public interface ITreeContentProvider
extends IStructuredContentProvider {
    public Object[] getElements(Object var1);

    public Object[] getChildren(Object var1);

    public Object getParent(Object var1);

    public boolean hasChildren(Object var1);
}

