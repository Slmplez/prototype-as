/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.util.Util;

public class TreeNode {
    private TreeNode[] children;
    private TreeNode parent;
    protected Object value;

    public TreeNode(Object value) {
        this.value = value;
    }

    public boolean equals(Object object) {
        if (object instanceof TreeNode) {
            return Util.equals(this.value, ((TreeNode)object).value);
        }
        return false;
    }

    public TreeNode[] getChildren() {
        if (this.children != null && this.children.length == 0) {
            return null;
        }
        return this.children;
    }

    public TreeNode getParent() {
        return this.parent;
    }

    public Object getValue() {
        return this.value;
    }

    public boolean hasChildren() {
        return this.children != null && this.children.length > 0;
    }

    public int hashCode() {
        return Util.hashCode(this.value);
    }

    public void setChildren(TreeNode[] children) {
        this.children = children;
    }

    public void setParent(TreeNode parent) {
        this.parent = parent;
    }
}

