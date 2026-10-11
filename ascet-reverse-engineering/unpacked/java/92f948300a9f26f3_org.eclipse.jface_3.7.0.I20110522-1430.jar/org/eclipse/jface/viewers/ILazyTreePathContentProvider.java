/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.TreePath;

public interface ILazyTreePathContentProvider
extends IContentProvider {
    public void updateElement(TreePath var1, int var2);

    public void updateChildCount(TreePath var1, int var2);

    public void updateHasChildren(TreePath var1);

    public TreePath[] getParents(Object var1);
}

