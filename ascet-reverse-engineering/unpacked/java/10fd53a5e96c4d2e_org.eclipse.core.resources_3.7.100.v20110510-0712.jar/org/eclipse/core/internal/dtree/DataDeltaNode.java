/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.internal.dtree;

import org.eclipse.core.internal.dtree.AbstractDataTreeNode;
import org.eclipse.core.internal.dtree.DataTreeNode;
import org.eclipse.core.internal.dtree.DeltaDataTree;
import org.eclipse.core.internal.dtree.IComparator;
import org.eclipse.core.internal.dtree.NoDataDeltaNode;
import org.eclipse.core.internal.dtree.NodeComparison;
import org.eclipse.core.runtime.IPath;

public class DataDeltaNode
extends DataTreeNode {
    DataDeltaNode(String name, Object data) {
        super(name, data);
    }

    DataDeltaNode(String name, Object data, AbstractDataTreeNode[] children) {
        super(name, data, children);
    }

    AbstractDataTreeNode asBackwardDelta(DeltaDataTree myTree, DeltaDataTree parentTree, IPath key) {
        AbstractDataTreeNode[] newChildren;
        if (this.children.length == 0) {
            newChildren = NO_CHILDREN;
        } else {
            newChildren = new AbstractDataTreeNode[this.children.length];
            int i = this.children.length;
            while (--i >= 0) {
                newChildren[i] = this.children[i].asBackwardDelta(myTree, parentTree, key.append(this.children[i].getName()));
            }
        }
        return new DataDeltaNode(this.name, parentTree.getData(key), newChildren);
    }

    AbstractDataTreeNode compareWithParent(IPath key, DeltaDataTree parent, IComparator comparator) {
        AbstractDataTreeNode[] comparedChildren = DataDeltaNode.compareWithParent(this.children, key, parent, comparator);
        Object oldData = parent.getData(key);
        Object newData = this.data;
        int userComparison = 0;
        if (key != parent.rootKey()) {
            userComparison = comparator.compare(oldData, newData);
        }
        return new DataTreeNode(key.lastSegment(), new NodeComparison(oldData, newData, 4, userComparison), comparedChildren);
    }

    AbstractDataTreeNode copy() {
        AbstractDataTreeNode[] childrenCopy;
        if (this.children.length == 0) {
            childrenCopy = NO_CHILDREN;
        } else {
            childrenCopy = new AbstractDataTreeNode[this.children.length];
            System.arraycopy(this.children, 0, childrenCopy, 0, this.children.length);
        }
        return new DataDeltaNode(this.name, this.data, childrenCopy);
    }

    boolean isDelta() {
        return true;
    }

    AbstractDataTreeNode simplifyWithParent(IPath key, DeltaDataTree parent, IComparator comparer) {
        AbstractDataTreeNode[] simplifiedChildren = DataDeltaNode.simplifyWithParent(this.children, key, parent, comparer);
        if (!key.isRoot() && comparer.compare(parent.getData(key), this.data) == 0) {
            return new NoDataDeltaNode(this.name, simplifiedChildren);
        }
        return new DataDeltaNode(this.name, this.data, simplifiedChildren);
    }

    public String toString() {
        return "a DataDeltaNode(" + this.getName() + ") with " + this.getChildren().length + " children.";
    }

    int type() {
        return 1;
    }
}

