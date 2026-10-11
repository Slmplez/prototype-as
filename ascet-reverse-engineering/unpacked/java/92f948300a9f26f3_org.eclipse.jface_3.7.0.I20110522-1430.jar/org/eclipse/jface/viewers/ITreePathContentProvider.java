/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.TreePath;

public interface ITreePathContentProvider
extends IStructuredContentProvider {
    public Object[] getElements(Object var1);

    public Object[] getChildren(TreePath var1);

    public boolean hasChildren(TreePath var1);

    public TreePath[] getParents(Object var1);
}

