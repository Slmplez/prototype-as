/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.TreeNode;
import org.eclipse.jface.viewers.Viewer;

public class TreeNodeContentProvider
implements ITreeContentProvider {
    public void dispose() {
    }

    public Object[] getChildren(Object parentElement) {
        TreeNode node = (TreeNode)parentElement;
        return node.getChildren();
    }

    public Object[] getElements(Object inputElement) {
        if (inputElement instanceof TreeNode[]) {
            return (TreeNode[])inputElement;
        }
        return new Object[0];
    }

    public Object getParent(Object element) {
        TreeNode node = (TreeNode)element;
        return node.getParent();
    }

    public boolean hasChildren(Object element) {
        TreeNode node = (TreeNode)element;
        return node.hasChildren();
    }

    public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
    }
}

