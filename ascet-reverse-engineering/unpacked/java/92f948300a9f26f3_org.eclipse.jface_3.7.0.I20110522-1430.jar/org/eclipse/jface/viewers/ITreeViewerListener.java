/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.TreeExpansionEvent;

public interface ITreeViewerListener {
    public void treeCollapsed(TreeExpansionEvent var1);

    public void treeExpanded(TreeExpansionEvent var1);
}

