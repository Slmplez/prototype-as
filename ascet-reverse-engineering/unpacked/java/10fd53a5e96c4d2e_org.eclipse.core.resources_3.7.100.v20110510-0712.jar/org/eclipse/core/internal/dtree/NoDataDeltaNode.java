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
import org.eclipse.core.internal.dtree.NodeComparison;
import org.eclipse.core.runtime.IPath;

public class NoDataDeltaNode
extends AbstractDataTreeNode {
    public NoDataDeltaNode(String name) {
        this(name, NO_CHILDREN);
    }

    public NoDataDeltaNode(String name, AbstractDataTreeNode[] children) {
        super(name, children);
    }

    NoDataDeltaNode(String localName, AbstractDataTreeNode childNode) {
        super(localName, new AbstractDataTreeNode[]{childNode});
    }

    AbstractDataTreeNode asBackwardDelta(DeltaDataTree myTree, DeltaDataTree parentTree, IPath key) {
        int numChildren = this.children.length;
        if (numChildren == 0) {
            return new NoDataDeltaNode(this.name, NO_CHILDREN);
        }
        AbstractDataTreeNode[] newChildren = new AbstractDataTreeNode[numChildren];
        int i = numChildren;
        while (--i >= 0) {
            newChildren[i] = this.children[i].asBackwardDelta(myTree, parentTree, key.append(this.children[i].getName()));
        }
        return new NoDataDeltaNode(this.name, newChildren);
    }

    AbstractDataTreeNode compareWithParent(IPath key, DeltaDataTree parent, IComparator comparator) {
        AbstractDataTreeNode[] comparedChildren = NoDataDeltaNode.compareWithParent(this.children, key, parent, comparator);
        Object oldData = parent.getData(key);
        return new DataTreeNode(key.lastSegment(), new NodeComparison(oldData, oldData, 4, 0), comparedChildren);
    }

    AbstractDataTreeNode copy() {
        AbstractDataTreeNode[] childrenCopy;
        if (this.children.length == 0) {
            childrenCopy = NO_CHILDREN;
        } else {
            childrenCopy = new AbstractDataTreeNode[this.children.length];
            System.arraycopy(this.children, 0, childrenCopy, 0, this.children.length);
        }
        return new NoDataDeltaNode(this.name, childrenCopy);
    }

    boolean isDelta() {
        return true;
    }

    boolean isEmptyDelta() {
        return this.size() == 0;
    }

    AbstractDataTreeNode simplifyWithParent(IPath key, DeltaDataTree parent, IComparator comparer) {
        AbstractDataTreeNode[] simplifiedChildren = NoDataDeltaNode.simplifyWithParent(this.children, key, parent, comparer);
        return new NoDataDeltaNode(this.name, simplifiedChildren);
    }

    public String toString() {
        return "a NoDataDeltaNode(" + this.getName() + ") with " + this.getChildren().length + " children.";
    }

    int type() {
        return 3;
    }
}

