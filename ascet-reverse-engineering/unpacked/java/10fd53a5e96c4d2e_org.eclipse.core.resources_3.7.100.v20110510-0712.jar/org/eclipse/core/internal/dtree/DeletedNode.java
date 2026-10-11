/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.dtree;

import org.eclipse.core.internal.dtree.AbstractDataTreeNode;
import org.eclipse.core.internal.dtree.DataTreeNode;
import org.eclipse.core.internal.dtree.DeltaDataTree;
import org.eclipse.core.internal.dtree.IComparator;
import org.eclipse.core.internal.dtree.NoDataDeltaNode;
import org.eclipse.core.internal.dtree.NodeComparison;
import org.eclipse.core.internal.dtree.ObjectNotFoundException;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.runtime.IPath;
import org.eclipse.osgi.util.NLS;

public class DeletedNode
extends AbstractDataTreeNode {
    DeletedNode(String localName) {
        super(localName, NO_CHILDREN);
    }

    AbstractDataTreeNode asBackwardDelta(DeltaDataTree myTree, DeltaDataTree parentTree, IPath key) {
        if (parentTree.includes(key)) {
            return parentTree.copyCompleteSubtree(key);
        }
        return this;
    }

    AbstractDataTreeNode childAt(String localName) {
        throw new ObjectNotFoundException(NLS.bind((String)Messages.dtree_missingChild, (Object)localName));
    }

    AbstractDataTreeNode childAtOrNull(String localName) {
        return null;
    }

    AbstractDataTreeNode compareWithParent(IPath key, DeltaDataTree parent, IComparator comparator) {
        if (parent.includes(key)) {
            return DeletedNode.convertToRemovedComparisonNode(parent.copyCompleteSubtree(key), 2);
        }
        return new DataTreeNode(key.lastSegment(), new NodeComparison(null, null, 0, 0));
    }

    AbstractDataTreeNode copy() {
        return new DeletedNode(this.name);
    }

    boolean isDeleted() {
        return true;
    }

    AbstractDataTreeNode simplifyWithParent(IPath key, DeltaDataTree parent, IComparator comparer) {
        if (parent.includes(key)) {
            return this;
        }
        return new NoDataDeltaNode(this.name);
    }

    int size() {
        return 0;
    }

    public String toString() {
        return "a DeletedNode(" + this.getName() + ")";
    }

    int type() {
        return 2;
    }

    AbstractDataTreeNode childAtIgnoreCase(String localName) {
        return null;
    }
}

