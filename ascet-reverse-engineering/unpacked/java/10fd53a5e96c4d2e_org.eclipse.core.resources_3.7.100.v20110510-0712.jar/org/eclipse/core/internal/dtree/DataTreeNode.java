/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.internal.dtree;

import org.eclipse.core.internal.dtree.AbstractDataTreeNode;
import org.eclipse.core.internal.dtree.DataDeltaNode;
import org.eclipse.core.internal.dtree.DeletedNode;
import org.eclipse.core.internal.dtree.DeltaDataTree;
import org.eclipse.core.internal.dtree.IComparator;
import org.eclipse.core.internal.dtree.NoDataDeltaNode;
import org.eclipse.core.internal.dtree.NodeComparison;
import org.eclipse.core.internal.utils.IStringPoolParticipant;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.StringPool;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IPath;

public class DataTreeNode
extends AbstractDataTreeNode {
    protected Object data;

    public DataTreeNode(String name, Object data) {
        super(name, AbstractDataTreeNode.NO_CHILDREN);
        this.data = data;
    }

    public DataTreeNode(String name, Object data, AbstractDataTreeNode[] children) {
        super(name, children);
        this.data = data;
    }

    AbstractDataTreeNode asBackwardDelta(DeltaDataTree myTree, DeltaDataTree parentTree, IPath key) {
        if (parentTree.includes(key)) {
            return parentTree.copyCompleteSubtree(key);
        }
        return new DeletedNode(this.name);
    }

    AbstractDataTreeNode asReverseComparisonNode(IComparator comparator) {
        NodeComparison comparison = null;
        try {
            comparison = ((NodeComparison)this.data).asReverseComparison(comparator);
        }
        catch (ClassCastException classCastException) {
            Assert.isTrue((boolean)false, (String)Messages.dtree_reverse);
        }
        int nextChild = 0;
        int i = 0;
        while (i < this.children.length) {
            AbstractDataTreeNode child = this.children[i].asReverseComparisonNode(comparator);
            if (child != null) {
                this.children[nextChild++] = child;
            }
            ++i;
        }
        if (nextChild == 0 && comparison.getUserComparison() == 0) {
            return null;
        }
        this.data = comparison;
        if (nextChild < this.children.length) {
            AbstractDataTreeNode[] newChildren = new AbstractDataTreeNode[nextChild];
            System.arraycopy(this.children, 0, newChildren, 0, nextChild);
            this.children = newChildren;
        }
        return this;
    }

    AbstractDataTreeNode compareWith(DataTreeNode other, IComparator comparator) {
        AbstractDataTreeNode[] comparedChildren = DataTreeNode.compareWith(this.children, other.children, comparator);
        Object oldData = this.data;
        Object newData = other.data;
        int userComparison = 0;
        if (this.name != null) {
            userComparison = comparator.compare(oldData, newData);
        }
        return new DataTreeNode(this.name, new NodeComparison(oldData, newData, 4, userComparison), comparedChildren);
    }

    AbstractDataTreeNode compareWithParent(IPath key, DeltaDataTree parent, IComparator comparator) {
        if (!parent.includes(key)) {
            return DataTreeNode.convertToAddedComparisonNode(this, 1);
        }
        DataTreeNode inParent = (DataTreeNode)parent.copyCompleteSubtree(key);
        return inParent.compareWith(this, comparator);
    }

    AbstractDataTreeNode copy() {
        if (this.children.length > 0) {
            AbstractDataTreeNode[] childrenCopy = new AbstractDataTreeNode[this.children.length];
            System.arraycopy(this.children, 0, childrenCopy, 0, this.children.length);
            return new DataTreeNode(this.name, this.data, childrenCopy);
        }
        return new DataTreeNode(this.name, this.data, this.children);
    }

    DataTreeNode copyWithNewChild(String localName, DataTreeNode childNode) {
        AbstractDataTreeNode[] children = this.children;
        int left = 0;
        int right = children.length - 1;
        while (left <= right) {
            int mid = (left + right) / 2;
            int compare = localName.compareTo(children[mid].name);
            if (compare < 0) {
                right = mid - 1;
                continue;
            }
            if (compare > 0) {
                left = mid + 1;
                continue;
            }
            throw new Error();
        }
        AbstractDataTreeNode[] newChildren = new AbstractDataTreeNode[children.length + 1];
        System.arraycopy(children, 0, newChildren, 0, left);
        childNode.setName(localName);
        newChildren[left] = childNode;
        System.arraycopy(children, left, newChildren, left + 1, children.length - left);
        return new DataTreeNode(this.getName(), this.getData(), newChildren);
    }

    DataTreeNode copyWithoutChild(String localName) {
        DataTreeNode newNode;
        int index = this.indexOfChild(localName);
        if (index == -1) {
            newNode = (DataTreeNode)this.copy();
        } else {
            int newSize = this.size() - 1;
            AbstractDataTreeNode[] children = new AbstractDataTreeNode[newSize];
            newNode = new DataTreeNode(this.getName(), this.getData(), children);
            newNode.copyChildren(0, index - 1, this, 0);
            newNode.copyChildren(index, newSize - 1, this, index + 1);
        }
        return newNode;
    }

    protected static AbstractDataTreeNode[] forwardDeltaWith(AbstractDataTreeNode[] oldNodes, AbstractDataTreeNode[] newNodes, IComparator comparer) {
        if (oldNodes.length == 0 && newNodes.length == 0) {
            return NO_CHILDREN;
        }
        AbstractDataTreeNode[] childDeltas = null;
        int numChildDeltas = 0;
        int childDeltaMax = 0;
        int oldIndex = 0;
        int newIndex = 0;
        while (oldIndex < oldNodes.length && newIndex < newNodes.length) {
            String oldName = oldNodes[oldIndex].name;
            String newName = newNodes[newIndex].name;
            int compare = oldName.compareTo(newName);
            if (compare == 0) {
                AbstractDataTreeNode deltaNode;
                if ((deltaNode = DataTreeNode.forwardDeltaWithOrNullIfEqual(oldNodes[oldIndex++], newNodes[newIndex++], comparer)) == null) continue;
                if (numChildDeltas >= childDeltaMax) {
                    if (childDeltas == null) {
                        childDeltaMax = 5;
                        childDeltas = new AbstractDataTreeNode[5];
                    } else {
                        AbstractDataTreeNode[] abstractDataTreeNodeArray = childDeltas;
                        childDeltaMax = childDeltaMax * 2 + 1;
                        childDeltas = new AbstractDataTreeNode[childDeltaMax];
                        System.arraycopy(abstractDataTreeNodeArray, 0, childDeltas, 0, numChildDeltas);
                    }
                }
                childDeltas[numChildDeltas++] = deltaNode;
                continue;
            }
            if (compare < 0) {
                if (numChildDeltas >= childDeltaMax) {
                    if (childDeltas == null) {
                        childDeltaMax = 5;
                        childDeltas = new AbstractDataTreeNode[5];
                    } else {
                        AbstractDataTreeNode[] abstractDataTreeNodeArray = childDeltas;
                        childDeltaMax = childDeltaMax * 2 + 1;
                        childDeltas = new AbstractDataTreeNode[childDeltaMax];
                        System.arraycopy(abstractDataTreeNodeArray, 0, childDeltas, 0, numChildDeltas);
                    }
                }
                childDeltas[numChildDeltas++] = new DeletedNode(oldName);
                ++oldIndex;
                continue;
            }
            if (numChildDeltas >= childDeltaMax) {
                if (childDeltas == null) {
                    childDeltaMax = 5;
                    childDeltas = new AbstractDataTreeNode[5];
                } else {
                    AbstractDataTreeNode[] abstractDataTreeNodeArray = childDeltas;
                    childDeltaMax = childDeltaMax * 2 + 1;
                    childDeltas = new AbstractDataTreeNode[childDeltaMax];
                    System.arraycopy(abstractDataTreeNodeArray, 0, childDeltas, 0, numChildDeltas);
                }
            }
            childDeltas[numChildDeltas++] = newNodes[newIndex++];
        }
        while (oldIndex < oldNodes.length) {
            if (numChildDeltas >= childDeltaMax) {
                if (childDeltas == null) {
                    childDeltaMax = 5;
                    childDeltas = new AbstractDataTreeNode[5];
                } else {
                    AbstractDataTreeNode[] abstractDataTreeNodeArray = childDeltas;
                    childDeltaMax = childDeltaMax * 2 + 1;
                    childDeltas = new AbstractDataTreeNode[childDeltaMax];
                    System.arraycopy(abstractDataTreeNodeArray, 0, childDeltas, 0, numChildDeltas);
                }
            }
            childDeltas[numChildDeltas++] = new DeletedNode(oldNodes[oldIndex++].name);
        }
        while (newIndex < newNodes.length) {
            if (numChildDeltas >= childDeltaMax) {
                if (childDeltas == null) {
                    childDeltaMax = 5;
                    childDeltas = new AbstractDataTreeNode[5];
                } else {
                    AbstractDataTreeNode[] abstractDataTreeNodeArray = childDeltas;
                    childDeltaMax = childDeltaMax * 2 + 1;
                    childDeltas = new AbstractDataTreeNode[childDeltaMax];
                    System.arraycopy(abstractDataTreeNodeArray, 0, childDeltas, 0, numChildDeltas);
                }
            }
            childDeltas[numChildDeltas++] = newNodes[newIndex++];
        }
        if (numChildDeltas == 0) {
            return NO_CHILDREN;
        }
        if (numChildDeltas < childDeltaMax) {
            AbstractDataTreeNode[] abstractDataTreeNodeArray = childDeltas;
            childDeltas = new AbstractDataTreeNode[numChildDeltas];
            System.arraycopy(abstractDataTreeNodeArray, 0, childDeltas, 0, numChildDeltas);
        }
        return childDeltas;
    }

    protected AbstractDataTreeNode forwardDeltaWith(DataTreeNode other, IComparator comparer) {
        AbstractDataTreeNode deltaNode = DataTreeNode.forwardDeltaWithOrNullIfEqual(this, other, comparer);
        if (deltaNode == null) {
            return new NoDataDeltaNode(this.name, NO_CHILDREN);
        }
        return deltaNode;
    }

    protected static AbstractDataTreeNode forwardDeltaWithOrNullIfEqual(AbstractDataTreeNode oldNode, AbstractDataTreeNode newNode, IComparator comparer) {
        AbstractDataTreeNode[] childDeltas = DataTreeNode.forwardDeltaWith(oldNode.children, newNode.children, comparer);
        Object newData = newNode.getData();
        if (comparer.compare(oldNode.getData(), newData) == 0) {
            if (childDeltas.length == 0) {
                return null;
            }
            return new NoDataDeltaNode(newNode.name, childDeltas);
        }
        return new DataDeltaNode(newNode.name, newData, childDeltas);
    }

    public Object getData() {
        return this.data;
    }

    boolean hasData() {
        return true;
    }

    void setData(Object o) {
        this.data = o;
    }

    AbstractDataTreeNode simplifyWithParent(IPath key, DeltaDataTree parent, IComparator comparer) {
        if (!parent.includes(key)) {
            return this;
        }
        DataTreeNode parentsNode = (DataTreeNode)parent.copyCompleteSubtree(key);
        return parentsNode.forwardDeltaWith(this, comparer);
    }

    public void storeStrings(StringPool set) {
        super.storeStrings(set);
        Object o = this.data;
        if (o instanceof IStringPoolParticipant) {
            ((IStringPoolParticipant)o).shareStrings(set);
        }
    }

    public String toString() {
        return "a DataTreeNode(" + this.getName() + ") with " + this.getChildren().length + " children.";
    }

    int type() {
        return 0;
    }
}

